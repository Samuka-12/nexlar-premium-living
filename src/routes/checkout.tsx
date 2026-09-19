import { useState } from "react";
import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { ShoppingCart } from "lucide-react";
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
import type { Coupon } from "@/lib/types";

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
  const { items, subtotal, clear } = useCart();
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

  const baseShipping = subtotal >= 299 || coupon?.free_shipping ? 0 : 29.9;
  const discount = coupon
    ? coupon.discount_type === "percent"
      ? (subtotal * coupon.discount_value) / 100
      : coupon.discount_value
    : 0;
  const totalBefore = Math.max(subtotal - discount, 0) + baseShipping;
  const total = payment === "pix" ? pixPrice(totalBefore, 5) : totalBefore;

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
                <Input id="nome" required value={form.name} onChange={(e) => set("name", e.target.value)} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="mail">E-mail</Label>
                <Input id="mail" type="email" required value={form.email} onChange={(e) => set("email", e.target.value)} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="cpf">CPF</Label>
                <Input id="cpf" required value={form.cpf} onChange={(e) => set("cpf", maskCPF(e.target.value))} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="tel">Telefone</Label>
                <Input id="tel" required value={form.phone} onChange={(e) => set("phone", maskPhone(e.target.value))} />
              </div>
            </div>
          </section>

          <section className="rounded-2xl border border-border p-6">
            <h2 className="mb-4 text-lg font-semibold">Entrega</h2>
            <div className="grid gap-4 sm:grid-cols-2">
              <div className="space-y-1.5">
                <Label htmlFor="cep">CEP</Label>
                <Input id="cep" required value={form.cep} onChange={(e) => set("cep", maskCEP(e.target.value))} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="rua">Rua</Label>
                <Input id="rua" required value={form.street} onChange={(e) => set("street", e.target.value)} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="num">Número</Label>
                <Input id="num" required value={form.number} onChange={(e) => set("number", e.target.value)} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="bairro">Bairro</Label>
                <Input id="bairro" required value={form.district} onChange={(e) => set("district", e.target.value)} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="cidade">Cidade</Label>
                <Input id="cidade" required value={form.city} onChange={(e) => set("city", e.target.value)} />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="uf">Estado</Label>
                <Input id="uf" required maxLength={2} value={form.state} onChange={(e) => set("state", e.target.value.toUpperCase())} />
              </div>
            </div>
          </section>

          <section className="rounded-2xl border border-border p-6">
            <h2 className="mb-4 text-lg font-semibold">Pagamento</h2>
            <RadioGroup value={payment} onValueChange={setPayment} className="space-y-3">
              {[
                { value: "pix", label: "PIX", hint: "5% de desconto, aprovação imediata" },
                { value: "credit_card", label: "Cartão de crédito", hint: installment(totalBefore) },
                { value: "boleto", label: "Boleto bancário", hint: "Compensação em até 2 dias úteis" },
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
                <img src={item.image} alt={item.name} className="h-14 w-14 rounded-lg object-cover" />
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

          <Button type="submit" size="lg" className="w-full" disabled={loading}>
            {loading ? "Processando..." : "Finalizar pedido"}
          </Button>
        </aside>
      </form>
    </StoreLayout>
  );
}
