import { useEffect, useMemo, useState } from "react";
import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { useServerFn } from "@tanstack/react-start";
import { Check, Plus, ShoppingCart, X } from "lucide-react";
import { toast } from "sonner";
import { StoreLayout } from "@/components/store/StoreLayout";
import { EmptyState } from "@/components/store/EmptyState";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { RadioGroup, RadioGroupItem } from "@/components/ui/radio-group";
import { Separator } from "@/components/ui/separator";
import { supabase } from "@/integrations/supabase/client";
import { useCart } from "@/lib/cart";
import { useAuth } from "@/lib/auth";
import { brl, installment, maskCEP, maskCPF, maskPhone, pixPrice } from "@/lib/format";
import { getLocalOrderBumpRecommendations } from "@/lib/catalog-data";
import type { Coupon, Product } from "@/lib/types";
import { createPixOrder, getPixOrderStatus } from "@/lib/ironpay.server";

export const Route = createFileRoute("/checkout")({
  head: () => ({
    meta: [
      { title: "Checkout seguro | NEXLAR" },
      { name: "description", content: "Finalize sua compra na NEXLAR com PIX, cartão ou boleto." },
      { property: "og:title", content: "Checkout seguro | NEXLAR" },
      { property: "og:description", content: "Pagamento protegido na loja NEXLAR." },
      { name: "robots", content: "noindex" },
    ],
  }),
  component: CheckoutPage,
});

function CheckoutPage() {
  const { items, subtotal, clear, add, remove } = useCart();
  const { user } = useAuth();
  const navigate = useNavigate();

  const [form, setForm] = useState({
    name: "",
    email: "",
    cpf: "",
    phone: "",
    cep: "",
    street: "",
    number: "",
    district: "",
    city: "",
    state: "",
  });
  const [couponCode, setCouponCode] = useState("");
  const [coupon, setCoupon] = useState<Coupon | null>(null);
  const [payment, setPayment] = useState("pix");
  const [loading, setLoading] = useState(false);
  const [selectedBumpIds, setSelectedBumpIds] = useState<string[]>([]);
  const [pixOrder, setPixOrder] = useState<{
    orderId: string;
    orderNumber: string;
    transactionHash: string;
    transactionId: string;
    amount: number;
    copyPaste: string;
    expiresAt: string;
    paymentStatus: string;
    qrCodeUrl?: string;
  } | null>(null);
  const createPixOrderFn = useServerFn(createPixOrder);
  const getPixOrderStatusFn = useServerFn(getPixOrderStatus);

  const bumpProducts = useMemo(
    () =>
      getLocalOrderBumpRecommendations(
        items.map((item) => item.productId),
        selectedBumpIds,
      ),
    [items, selectedBumpIds],
  );

  function toggleBump(product: Product) {
    const image = (product.product_images ?? product.images ?? []).find((item) => item.url?.trim());
    if (!image) return;
    if (selectedBumpIds.includes(product.id)) {
      remove(product.id);
      setSelectedBumpIds((current) => current.filter((id) => id !== product.id));
      return;
    }
    add(
      {
        productId: product.id,
        slug: product.slug,
        name: product.name,
        image: image.url,
        price: product.price,
      },
      1,
      false,
    );
    setSelectedBumpIds((current) => [...current, product.id].slice(-2));
  }

  function bumpBenefit(product: Product) {
    const category = product.categories?.slug ?? product.category_id;
    if (category?.includes("frigideiras")) return "Complemento ideal para sua cozinha";
    if (category?.includes("pressao")) return "Mais praticidade para suas receitas";
    if (category?.includes("cacarolas")) return "Mais espaço para preparar suas receitas";
    return "Complemente seu conjunto";
  }

  const baseShipping = subtotal >= 299 || coupon?.free_shipping ? 0 : 29.9;
  const discount = coupon
    ? coupon.discount_type === "percent"
      ? (subtotal * coupon.discount_value) / 100
      : coupon.discount_value
    : 0;
  const totalBefore = Math.max(subtotal - discount, 0) + baseShipping;
  const total = payment === "pix" ? pixPrice(totalBefore, 5) : totalBefore;

  useEffect(() => {
    if (!pixOrder || pixOrder.paymentStatus === "paid") return;
    let active = true;
    const refresh = async () => {
      const result = await getPixOrderStatusFn({
        data: { orderId: pixOrder.orderId, transactionHash: pixOrder.transactionHash },
      });
      if (active && result.ok) {
        setPixOrder((current) =>
          current ? { ...current, paymentStatus: result.paymentStatus ?? result.status } : current,
        );
        if (result.status === "paid") {
          clear();
          toast.success(`Pagamento do pedido ${result.orderNumber} confirmado!`);
        }
      }
    };
    const timer = window.setInterval(refresh, 5000);
    return () => {
      active = false;
      window.clearInterval(timer);
    };
  }, [clear, getPixOrderStatusFn, pixOrder]);

  function set(key: keyof typeof form, value: string) {
    setForm((prev) => ({ ...prev, [key]: value }));
  }

  async function applyCoupon() {
    const { data, error } = await supabase
      .from("coupons")
      .select("*")
      .eq("code", couponCode.trim().toUpperCase())
      .eq("active", true)
      .maybeSingle();
    if (error || !data) {
      toast.error("Cupom inválido");
      return;
    }
    const found = data as Coupon;
    if (subtotal < found.min_order) {
      toast.error(`Este cupom vale para pedidos acima de ${brl(found.min_order)}`);
      return;
    }
    setCoupon(found);
    toast.success("Cupom aplicado!");
  }

  async function submit(event: React.FormEvent) {
    event.preventDefault();
    if (payment === "pix") {
      setLoading(true);
      const result = await createPixOrderFn({
        data: {
          customer: form,
          items: items.map(({ variant, ...item }) => ({
            ...item,
            ...(variant ? { variant } : {}),
          })),
          subtotal,
          discount,
          shippingPrice: baseShipping,
          total,
          couponCode: coupon?.code ?? null,
          userId: user?.id ?? null,
        },
      });
      setLoading(false);
      if (!result.ok) {
        toast.error(result.error.message);
        return;
      }
      let qrCodeUrl: string | undefined;
      try {
        const qrCode = await import("qrcode");
        qrCodeUrl = await qrCode.toDataURL(result.copyPaste, { width: 240, margin: 2 });
      } catch {
        toast.error("Não foi possível gerar o QR Code. Use o Pix Copia e Cola.");
      }
      setPixOrder({
        orderId: result.orderId,
        orderNumber: result.orderNumber,
        transactionHash: result.transactionHash,
        transactionId: result.transactionId,
        amount: result.amount,
        copyPaste: result.copyPaste,
        expiresAt: result.expiresAt,
        paymentStatus: result.paymentStatus,
        ...(qrCodeUrl ? { qrCodeUrl } : {}),
      });
      toast.success(`Pedido ${result.orderNumber} criado. Aguardando pagamento.`);
      return;
    }
    setLoading(true);
    const orderNumber = `NX${Date.now().toString().slice(-8)}`;
    const { data, error } = await supabase
      .from("orders")
      .insert({
        order_number: orderNumber,
        user_id: user?.id ?? null,
        customer_name: form.name,
        customer_email: form.email,
        customer_phone: form.phone,
        customer_cpf: form.cpf,
        shipping_zip: form.cep,
        shipping_address: form.street,
        shipping_number: form.number,
        shipping_district: form.district,
        shipping_city: form.city,
        shipping_state: form.state,
        payment_method: payment,
        status: "pending",
        subtotal,
        discount,
        shipping_price: baseShipping,
        total,
        coupon_code: coupon?.code ?? null,
      })
      .select("id, order_number")
      .single();

    if (error || !data) {
      setLoading(false);
      toast.error("Não foi possível concluir o pedido. Tente novamente.");
      return;
    }

    const { error: itemsError } = await supabase.from("order_items").insert(
      items.map((item) => ({
        order_id: data.id,
        product_id: item.productId,
        product_name: item.name,
        image_url: item.image,
        variant: item.variant ?? null,
        unit_price: item.price,
        quantity: item.quantity,
      })),
    );
    setLoading(false);
    if (itemsError) {
      toast.error("Erro ao salvar os itens do pedido");
      return;
    }

    clear();
    toast.success(`Pedido ${data.order_number} confirmado!`);
    navigate({ to: "/conta" });
  }

  if (items.length === 0) {
    return (
      <StoreLayout>
        <div className="container-page py-20">
          <EmptyState
            icon={ShoppingCart}
            title="Seu carrinho está vazio"
            description="Adicione produtos para finalizar a compra."
            action={
              <Button asChild>
                <Link to="/">Explorar produtos</Link>
              </Button>
            }
          />
        </div>
      </StoreLayout>
    );
  }

  return (
    <StoreLayout>
      <form className="container-page grid gap-8 py-10 lg:grid-cols-[1fr_360px]" onSubmit={submit}>
        <div className="space-y-8">
          <section className="rounded-2xl border border-border p-6">
            <h2 className="mb-4 text-lg font-semibold">Seus dados</h2>
            <div className="grid gap-4 sm:grid-cols-2">
              <div className="space-y-1.5 sm:col-span-2">
                <Label htmlFor="nome">Nome completo</Label>
                <Input
                  id="nome"
                  required
                  value={form.name}
                  onChange={(e) => set("name", e.target.value)}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="mail">E-mail</Label>
                <Input
                  id="mail"
                  type="email"
                  required
                  value={form.email}
                  onChange={(e) => set("email", e.target.value)}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="cpf">CPF</Label>
                <Input
                  id="cpf"
                  required
                  value={form.cpf}
                  onChange={(e) => set("cpf", maskCPF(e.target.value))}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="tel">Telefone</Label>
                <Input
                  id="tel"
                  required
                  value={form.phone}
                  onChange={(e) => set("phone", maskPhone(e.target.value))}
                />
              </div>
            </div>
          </section>

          <section className="rounded-2xl border border-border p-6">
            <h2 className="mb-4 text-lg font-semibold">Entrega</h2>
            <div className="grid gap-4 sm:grid-cols-2">
              <div className="space-y-1.5">
                <Label htmlFor="cep">CEP</Label>
                <Input
                  id="cep"
                  required
                  value={form.cep}
                  onChange={(e) => set("cep", maskCEP(e.target.value))}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="rua">Rua</Label>
                <Input
                  id="rua"
                  required
                  value={form.street}
                  onChange={(e) => set("street", e.target.value)}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="num">Número</Label>
                <Input
                  id="num"
                  required
                  value={form.number}
                  onChange={(e) => set("number", e.target.value)}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="bairro">Bairro</Label>
                <Input
                  id="bairro"
                  required
                  value={form.district}
                  onChange={(e) => set("district", e.target.value)}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="cidade">Cidade</Label>
                <Input
                  id="cidade"
                  required
                  value={form.city}
                  onChange={(e) => set("city", e.target.value)}
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="uf">Estado</Label>
                <Input
                  id="uf"
                  required
                  maxLength={2}
                  value={form.state}
                  onChange={(e) => set("state", e.target.value.toUpperCase())}
                />
              </div>
            </div>
          </section>

          <section className="rounded-2xl border border-border p-6">
            <h2 className="mb-4 text-lg font-semibold">Pagamento</h2>
            <RadioGroup value={payment} onValueChange={setPayment} className="space-y-3">
              {[
                { value: "pix", label: "PIX", hint: "5% de desconto, aprovação imediata" },
                {
                  value: "credit_card",
                  label: "Cartão de crédito",
                  hint: installment(totalBefore),
                },
                {
                  value: "boleto",
                  label: "Boleto bancário",
                  hint: "Compensação em até 2 dias úteis",
                },
              ].map((option) => (
                <label
                  key={option.value}
                  className="flex cursor-pointer items-center gap-3 rounded-xl border border-border p-4"
                >
                  <RadioGroupItem value={option.value} id={option.value} />
                  <span>
                    <span className="block text-sm font-medium">{option.label}</span>
                    <span className="block text-xs text-muted-foreground">{option.hint}</span>
                  </span>
                </label>
              ))}
            </RadioGroup>
          </section>
        </div>

        <aside className="h-fit space-y-4 rounded-2xl border border-border p-6 lg:sticky lg:top-24">
          <h2 className="text-lg font-semibold">Resumo</h2>
          <ul className="space-y-3">
            {items.map((item) => (
              <li key={item.productId + (item.variant ?? "")} className="flex gap-3 text-sm">
                <img
                  src={item.image}
                  alt={item.name}
                  className="h-14 w-14 rounded-lg object-cover"
                />
                <div className="flex-1">
                  <p className="line-clamp-2">{item.name}</p>
                  <p className="text-xs text-muted-foreground">
                    {item.quantity}x {brl(item.price)}
                  </p>
                </div>
              </li>
            ))}
          </ul>

          <Separator />

          <div className="flex gap-2">
            <Input
              value={couponCode}
              onChange={(e) => setCouponCode(e.target.value)}
              placeholder="Cupom de desconto"
              aria-label="Cupom de desconto"
            />
            <Button type="button" variant="secondary" onClick={applyCoupon}>
              Aplicar
            </Button>
          </div>

          <div className="space-y-1.5 text-sm">
            <div className="flex justify-between">
              <span className="text-muted-foreground">Subtotal</span>
              <span>{brl(subtotal)}</span>
            </div>
            {discount > 0 && (
              <div className="flex justify-between text-primary">
                <span>Desconto ({coupon?.code})</span>
                <span>-{brl(discount)}</span>
              </div>
            )}
            <div className="flex justify-between">
              <span className="text-muted-foreground">Frete</span>
              <span>{baseShipping === 0 ? "Grátis" : brl(baseShipping)}</span>
            </div>
            <div className="flex justify-between pt-2 text-base font-semibold">
              <span>Total</span>
              <span>{brl(total)}</span>
            </div>
          </div>

          {pixOrder && (
            <section
              className="space-y-4 rounded-2xl border border-primary/30 bg-primary/[0.04] p-4"
              aria-live="polite"
            >
              <div>
                <h3 className="font-semibold">Pix do pedido {pixOrder.orderNumber}</h3>
                <p className="text-sm text-muted-foreground">
                  {pixOrder.paymentStatus === "paid"
                    ? "Pagamento confirmado"
                    : "Aguardando pagamento"}
                </p>
              </div>
              {pixOrder.qrCodeUrl && (
                <div className="flex justify-center rounded-xl bg-white p-3">
                  <img
                    src={pixOrder.qrCodeUrl}
                    alt="QR Code para pagamento Pix"
                    className="h-52 w-52"
                  />
                </div>
              )}
              <div className="space-y-2 text-sm">
                <div className="flex justify-between gap-3">
                  <span className="text-muted-foreground">Valor</span>
                  <strong>{brl(pixOrder.amount)}</strong>
                </div>
                <div className="flex justify-between gap-3">
                  <span className="text-muted-foreground">Cobrança</span>
                  <span className="font-mono text-xs">{pixOrder.transactionHash}</span>
                </div>
                <Button
                  type="button"
                  variant="outline"
                  className="w-full"
                  onClick={async () => {
                    await navigator.clipboard.writeText(pixOrder.copyPaste);
                    toast.success("Código Pix copiado!");
                  }}
                >
                  Copiar Pix Copia e Cola
                </Button>
                <p className="break-all rounded-lg bg-muted p-2 font-mono text-[11px] text-muted-foreground">
                  {pixOrder.copyPaste}
                </p>
                <p className="text-xs text-muted-foreground">
                  O status é atualizado automaticamente. Esta cobrança expira em{" "}
                  {new Date(pixOrder.expiresAt).toLocaleString("pt-BR")}.
                </p>
              </div>
            </section>
          )}

          <Button
            type="submit"
            size="lg"
            className="w-full"
            disabled={loading || Boolean(pixOrder)}
          >
            {loading ? "Processando..." : pixOrder ? "Pagamento Pix criado" : "Finalizar pedido"}
          </Button>

          {bumpProducts.length > 0 && (
            <section
              className="space-y-3 rounded-2xl border border-primary/15 bg-primary/[0.04] p-3 shadow-sm sm:p-4"
              aria-labelledby="order-bumps-title"
            >
              <div className="space-y-0.5">
                <h3 id="order-bumps-title" className="text-sm font-semibold sm:text-base">
                  Complete sua compra
                </h3>
                <p className="text-xs leading-5 text-muted-foreground">
                  Adicione itens que combinam com o que você escolheu.
                </p>
              </div>
              <div className="space-y-2.5">
                {bumpProducts.map((product) => {
                  const image = (product.product_images ?? product.images ?? []).find((item) =>
                    item.url?.trim(),
                  );
                  const selected = selectedBumpIds.includes(product.id);
                  if (!image) return null;
                  return (
                    <div
                      key={product.id}
                      className="flex min-w-0 flex-col gap-3 rounded-xl border border-border/80 bg-background p-3 sm:flex-row sm:items-center"
                    >
                      <img
                        src={image.url}
                        alt={product.name}
                        className="h-14 w-14 shrink-0 rounded-lg object-cover sm:h-16 sm:w-16"
                        loading="lazy"
                      />
                      <div className="min-w-0 flex-1">
                        <p className="text-[10px] font-semibold uppercase tracking-[0.12em] text-muted-foreground">
                          {product.brand ?? product.specs["Marca"] ?? "Complemento"}
                        </p>
                        <p className="mt-0.5 line-clamp-2 text-sm font-medium leading-snug">
                          {product.name}
                        </p>
                        <p className="mt-1 text-xs leading-4 text-muted-foreground">
                          {bumpBenefit(product)}
                        </p>
                        <div className="mt-2 flex min-w-0 flex-wrap items-center justify-between gap-x-3 gap-y-2">
                          <div className="flex min-w-0 items-baseline gap-1.5">
                            {product.compare_at_price &&
                              product.compare_at_price > product.price && (
                                <span className="text-[11px] text-muted-foreground line-through">
                                  {brl(product.compare_at_price)}
                                </span>
                              )}
                            <span className="text-sm font-semibold text-primary">
                              {brl(product.price)}
                            </span>
                          </div>
                          <Button
                            type="button"
                            size="sm"
                            variant={selected ? "secondary" : "default"}
                            onClick={() => toggleBump(product)}
                            className="h-8 shrink-0 px-2.5 text-xs"
                          >
                            {selected ? (
                              <X className="h-3.5 w-3.5" />
                            ) : (
                              <Plus className="h-3.5 w-3.5" />
                            )}
                            <span>{selected ? "Remover" : "Adicionar"}</span>
                          </Button>
                        </div>
                        {selected && (
                          <p className="mt-1 flex items-center gap-1 text-[11px] text-primary">
                            <Check className="h-3 w-3" /> Adicionado ao pedido
                          </p>
                        )}
                      </div>
                    </div>
                  );
                })}
              </div>
            </section>
          )}
        </aside>
      </form>
    </StoreLayout>
  );
}
