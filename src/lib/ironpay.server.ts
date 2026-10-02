import { createServerFn } from "@tanstack/react-start";
import { supabaseAdmin } from "@/integrations/supabase/client.server";

type CheckoutCustomer = {
  name: string;
  email: string;
  phone: string;
  cpf: string;
  cep: string;
  street: string;
  number: string;
  district: string;
  city: string;
  state: string;
};

type CheckoutItem = {
  productId: string;
  name: string;
  image: string;
  price: number;
  quantity: number;
  variant?: string;
};

type CreatePixInput = {
  customer: CheckoutCustomer;
  items: CheckoutItem[];
  subtotal: number;
  discount: number;
  shippingPrice: number;
  total: number;
  couponCode?: string | null;
  userId?: string | null;
};

type IronPayResponse = {
  success?: boolean;
  hash?: string;
  id?: number | string;
  transaction?: string | number;
  payment_status?: string;
  status_reason?: string | null;
  pix?: { pix_url?: string | null; pix_qr_code?: string | null } | null;
  amount?: number;
  amount_total?: number;
  [key: string]: unknown;
};

const DEFAULT_BASE_URL = "https://api.ironpayapp.com.br/api/public/v1";
const REQUEST_TIMEOUT_MS = 15_000;

function env(name: string, fallback?: string) {
  const value = process.env[name] ?? fallback;
  if (!value) throw new Error(`Configuração ausente: ${name}`);
  return value;
}

function digits(value: string) {
  return value.replace(/\D/g, "");
}

function cents(value: number) {
  const result = Math.round(value * 100);
  if (!Number.isSafeInteger(result) || result <= 0)
    throw new IronPayError("invalid_amount", "O valor da cobrança é inválido.");
  return result;
}

function postbackUrl() {
  return (
    process.env["IRONPAY_POSTBACK_URL"] ||
    `${process.env["APP_BASE_URL"] || ""}/api/webhooks/ironpay`
  );
}

class IronPayError extends Error {
  code: string;
  status?: number;
  constructor(code: string, message: string, status?: number) {
    super(message);
    this.name = "IronPayError";
    this.code = code;
    if (status !== undefined) this.status = status;
  }
}

async function ironPayRequest(path: string, init: RequestInit) {
  const token = env("IRONPAY_API_TOKEN");
  const url = new URL(path, `${env("IRONPAY_BASE_URL", DEFAULT_BASE_URL).replace(/\/$/, "")}/`);
  url.searchParams.set("api_token", token);
  let response: Response;
  try {
    response = await fetch(url, {
      ...init,
      headers: {
        "content-type": "application/json",
        accept: "application/json",
        ...(init.headers ?? {}),
      },
      signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
    });
  } catch (error) {
    if (error instanceof DOMException && error.name === "TimeoutError") {
      throw new IronPayError("timeout", "A Iron Pay demorou para responder. Tente novamente.");
    }
    throw new IronPayError("unavailable", "Não foi possível conectar à Iron Pay.");
  }

  const text = await response.text();
  let payload: IronPayResponse & { message?: string; error?: string } = {};
  try {
    payload = text ? (JSON.parse(text) as typeof payload) : {};
  } catch {
    throw new IronPayError(
      "unexpected_response",
      "A Iron Pay retornou uma resposta inesperada.",
      response.status,
    );
  }

  if (!response.ok || payload.success === false) {
    if (response.status === 401)
      throw new IronPayError(
        "invalid_credentials",
        "As credenciais da Iron Pay são inválidas.",
        response.status,
      );
    if (response.status === 408 || response.status === 504)
      throw new IronPayError(
        "timeout",
        "A Iron Pay demorou para responder. Tente novamente.",
        response.status,
      );
    if (response.status === 400 || response.status === 422)
      throw new IronPayError(
        "rejected",
        payload.message || payload.error || "A cobrança foi recusada pela Iron Pay.",
        response.status,
      );
    throw new IronPayError(
      "unavailable",
      "A Iron Pay não está disponível no momento.",
      response.status,
    );
  }
  return payload;
}

function publicError(error: unknown) {
  if (error instanceof IronPayError) return { code: error.code, message: error.message };
  console.error("[IronPay] erro inesperado", error);
  return { code: "unexpected", message: "Não foi possível processar o Pix. Tente novamente." };
}

export const createPixOrder = createServerFn({ method: "POST" })
  .validator((data: CreatePixInput) => data)
  .handler(async ({ data }) => {
    try {
      const totalCents = cents(data.total);
      const orderNumber = `NX${Date.now().toString().slice(-8)}`;
      const productHash = env("IRONPAY_PRODUCT_HASH");
      const offerHash = env("IRONPAY_OFFER_HASH");
      const { data: order, error: orderError } = await supabaseAdmin
        .from("orders")
        .insert({
          order_number: orderNumber,
          user_id: data.userId ?? null,
          customer_name: data.customer.name.trim(),
          customer_email: data.customer.email.trim().toLowerCase(),
          customer_phone: digits(data.customer.phone),
          customer_cpf: digits(data.customer.cpf),
          shipping_zip: digits(data.customer.cep),
          shipping_address: data.customer.street.trim(),
          shipping_number: data.customer.number.trim(),
          shipping_district: data.customer.district.trim(),
          shipping_city: data.customer.city.trim(),
          shipping_state: data.customer.state.trim().toUpperCase(),
          payment_method: "pix",
          status: "pending",
          subtotal: data.subtotal,
          discount: data.discount,
          shipping_price: data.shippingPrice,
          total: data.total,
          coupon_code: data.couponCode ?? null,
          ironpay_payment_status: "pending",
        })
        .select("id, order_number")
        .single();
      if (orderError || !order)
        throw new IronPayError("database", "Não foi possível criar o pedido.");

      const { error: itemsError } = await supabaseAdmin.from("order_items").insert(
        data.items.map((item) => ({
          order_id: order.id,
          product_id: null, // produtos do catálogo local não existem na tabela products do Supabase
          product_name: item.name,
          image_url: item.image,
          variant: item.variant ?? null,
          unit_price: item.price,
          quantity: item.quantity,
        })),
      );
      if (itemsError) {
        // Loga o erro mas não cancela o Pix — o charge ainda pode ser gerado
        console.error("[IronPay] order_items insert failed (non-fatal):", itemsError.code, itemsError.message, itemsError.details);
      }

      let provider: IronPayResponse;
      try {
        provider = await ironPayRequest("/transactions", {
          method: "POST",
          body: JSON.stringify({
            amount: totalCents,
            offer_hash: offerHash,
            payment_method: "pix",
            installments: 1,
            customer: {
              name: data.customer.name.trim(),
              email: data.customer.email.trim().toLowerCase(),
              phone_number: digits(data.customer.phone),
              document: digits(data.customer.cpf),
              street_name: data.customer.street.trim(),
              number: data.customer.number.trim(),
              neighborhood: data.customer.district.trim(),
              city: data.customer.city.trim(),
              state: data.customer.state.trim().toUpperCase(),
              zip_code: digits(data.customer.cep),
            },
            cart: data.items.map((item) => ({
              product_hash: productHash,
              title: item.name,
              cover: item.image || null,
              price: Math.round(item.price * 100),
              quantity: item.quantity,
              operation_type: 1,
              tangible: true,
            })),
            expire_in_days: 1,
            transaction_origin: "api",
            postback_url: postbackUrl(),
          }),
        });
      } catch (error) {
        await supabaseAdmin.from("orders").delete().eq("id", order.id);
        throw error;
      }

      const hash = String(provider.hash ?? "");
      const copyPaste = provider.pix?.pix_qr_code ?? null;
      if (!hash || !copyPaste) {
        await supabaseAdmin.from("orders").delete().eq("id", order.id);
        throw new IronPayError("unexpected_response", "A Iron Pay não retornou os dados do Pix.");
      }
      const expiresAt = new Date(Date.now() + 24 * 60 * 60 * 1000).toISOString();
      const isPaid = provider.payment_status?.toLowerCase() === "paid";
      const { error: updateError } = await supabaseAdmin
        .from("orders")
        .update({
          ironpay_transaction_hash: hash,
          ironpay_transaction_id: String(provider.id ?? provider.transaction ?? ""),
          ironpay_payment_status: provider.payment_status ?? "pending",
          ironpay_status_reason: provider.status_reason ?? null,
          pix_qr_code: copyPaste,
          pix_copy_paste: copyPaste,
          pix_expires_at: expiresAt,
          ...(isPaid ? { status: "paid", paid_at: new Date().toISOString() } : {}),
        })
        .eq("id", order.id);
      if (updateError)
        throw new IronPayError("database", "Não foi possível salvar os dados do Pix.");

      return {
        ok: true as const,
        orderId: order.id,
        orderNumber: order.order_number,
        transactionHash: hash,
        transactionId: String(provider.id ?? provider.transaction ?? ""),
        amount: data.total,
        copyPaste,
        expiresAt,
        paymentStatus: provider.payment_status ?? "pending",
      };
    } catch (error) {
      const safe = publicError(error);
      return { ok: false as const, error: safe };
    }
  });

export const getPixOrderStatus = createServerFn({ method: "POST" })
  .validator((data: { orderId: string; transactionHash: string }) => data)
  .handler(async ({ data }) => {
    const { data: order, error } = await supabaseAdmin
      .from("orders")
      .select(
        "id, order_number, status, ironpay_transaction_hash, ironpay_payment_status, pix_expires_at, paid_at",
      )
      .eq("id", data.orderId)
      .eq("ironpay_transaction_hash", data.transactionHash)
      .maybeSingle();
    if (error || !order)
      return {
        ok: false as const,
        error: { code: "not_found", message: "Cobrança não encontrada." },
      };
    return {
      ok: true as const,
      status: order.status,
      paymentStatus: order.ironpay_payment_status,
      expiresAt: order.pix_expires_at,
      paidAt: order.paid_at,
      orderNumber: order.order_number,
    };
  });
