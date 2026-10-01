import { createFileRoute } from "@tanstack/react-router";
import { supabaseAdmin } from "@/integrations/supabase/client.server";
import type { Database } from "@/integrations/supabase/types";

function safeEqual(left: string, right: string) {
  if (left.length !== right.length) return false;
  let result = 0;
  for (let index = 0; index < left.length; index += 1)
    result |= left.charCodeAt(index) ^ right.charCodeAt(index);
  return result === 0;
}

function getToken(request: Request, payload: Record<string, unknown>) {
  const authorization = request.headers.get("authorization")?.replace(/^Bearer\s+/i, "");
  return (
    request.headers.get("x-webhook-token") ||
    authorization ||
    new URL(request.url).searchParams.get("token") ||
    (typeof payload["token"] === "string" ? payload["token"] : "")
  );
}

export const Route = createFileRoute("/api/webhooks/ironpay")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        const expected = process.env["IRONPAY_WEBHOOK_TOKEN"];
        if (!expected) return Response.json({ error: "Webhook não configurado" }, { status: 503 });
        let payload: Record<string, unknown>;
        try {
          payload = (await request.json()) as Record<string, unknown>;
        } catch {
          return Response.json({ error: "JSON inválido" }, { status: 400 });
        }
        if (!safeEqual(getToken(request, payload), expected))
          return Response.json({ error: "Não autorizado" }, { status: 401 });

        const transactionHash =
          typeof payload["transaction_hash"] === "string"
            ? payload["transaction_hash"]
            : typeof payload["hash"] === "string"
              ? payload["hash"]
              : "";
        const paymentStatus =
          typeof payload["payment_status"] === "string"
            ? payload["payment_status"].toLowerCase()
            : typeof payload["status"] === "string"
              ? payload["status"].toLowerCase()
              : "";
        if (!transactionHash)
          return Response.json({ error: "Identificação ausente" }, { status: 422 });

        const paid = ["paid", "approved", "completed", "success"].includes(paymentStatus);
        const canceled = ["canceled", "cancelled", "expired", "refunded", "failed"].includes(
          paymentStatus,
        );
        const { data: order, error: findError } = await supabaseAdmin
          .from("orders")
          .select("id, status, total, ironpay_transaction_hash")
          .eq("ironpay_transaction_hash", transactionHash)
          .maybeSingle();
        if (findError)
          return Response.json({ error: "Falha ao localizar o pedido" }, { status: 500 });
        if (!order) return Response.json({ received: true, ignored: true }, { status: 200 });

        const amount = Number(payload["amount_total"] ?? payload["amount"] ?? NaN);
        if (
          paid &&
          Number.isFinite(amount) &&
          Math.round(Number(order.total) * 100) !== Math.round(amount)
        ) {
          return Response.json({ error: "Valor divergente" }, { status: 422 });
        }

        const update: Database["public"]["Tables"]["orders"]["Update"] = {
          ironpay_payment_status: paymentStatus || "unknown",
          ironpay_status_reason:
            typeof payload["status_reason"] === "string" ? payload["status_reason"] : null,
        };
        if (paid && order.status !== "paid") {
          update.status = "paid";
          update.paid_at = new Date().toISOString();
        } else if (canceled && order.status !== "paid") {
          update.status = paymentStatus === "expired" ? "expired" : "canceled";
        }
        const { error: updateError } = await supabaseAdmin
          .from("orders")
          .update(update)
          .eq("id", order.id);
        if (updateError)
          return Response.json({ error: "Falha ao atualizar o pedido" }, { status: 500 });
        return Response.json(
          { received: true, processed: paid || canceled, alreadyPaid: order.status === "paid" },
          { status: 200 },
        );
      },
    },
  },
});
