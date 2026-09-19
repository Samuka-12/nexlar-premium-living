import { useMemo, useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import {
  Check,
  Heart,
  Minus,
  MessageCircleQuestion,
  Play,
  Plus,
  RotateCw,
  Star,
  Truck,
} from "lucide-react";
import { toast } from "sonner";
import { StoreLayout } from "@/components/store/StoreLayout";
import { ProductCard } from "@/components/store/ProductCard";
import { EmptyState } from "@/components/store/EmptyState";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { Separator } from "@/components/ui/separator";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import { supabase } from "@/integrations/supabase/client";
import { productSelect, sortedImages, type Product, type Review } from "@/lib/types";
import { brl, installment, maskCEP, pixPrice, discountPercent, dateBR } from "@/lib/format";
import { useCart } from "@/lib/cart";
import { useFavorites } from "@/lib/favorites";

export const Route = createFileRoute("/produto/$slug")({
  head: ({ params }) => {
    const name = params.slug.replace(/-/g, " ");
    const title = `${name.charAt(0).toUpperCase()}${name.slice(1)} | NEXLAR`;
    const description = `Compre ${name} na NEXLAR. Frete grátis acima de R$ 299, até 8x sem juros e troca em 30 dias.`;
    return {
      meta: [
        { title },
        { name: "description", content: description },
        { property: "og:title", content: title },
        { property: "og:description", content: description },
        { property: "og:type", content: "product" },
      ],
    };
  },
  component: ProductPage,
});

const questions = [
  {
    q: "O produto pode ir à lava-louças?",
    a: "Sim. Recomendamos ciclo suave e secagem imediata para preservar o acabamento por mais tempo.",
  },
  {
    q: "Serve em cooktop de indução?",
    a: "Todas as peças de cocção NEXLAR com fundo triplo são compatíveis com indução, gás e vitrocerâmico.",
  },
  {
    q: "Qual é a garantia?",
    a: "Garantia de 12 meses contra defeitos de fabricação, além de 30 dias para troca por arrependimento.",
  },
];

function ProductPage() {
  const { slug } = Route.useParams();
  const { add } = useCart();
  const { ids, toggle } = useFavorites();

  const [imageIndex, setImageIndex] = useState(0);
  const [zoom, setZoom] = useState(false);
  const [variantId, setVariantId] = useState<string | null>(null);
  const [quantity, setQuantity] = useState(1);
  const [cep, setCep] = useState("");
  const [shipping, setShipping] = useState<{ label: string; price: number; eta: string }[] | null>(
    null,
  );
  const [mode, setMode] = useState<"photos" | "video" | "360">("photos");
  const [angle, setAngle] = useState(0);

  const { data: product, isLoading } = useQuery({
    queryKey: ["product", slug],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("products")
        .select(productSelect)
        .eq("slug", slug)
        .maybeSingle();
      if (error) throw error;
      return (data ?? null) as unknown as Product | null;
    },
  });

  const { data: reviews = [] } = useQuery({
    queryKey: ["reviews", product?.id],
    enabled: Boolean(product?.id),
    queryFn: async () => {
      const { data, error } = await supabase
        .from("reviews")
        .select("*")
        .eq("product_id", product!.id)
        .eq("approved", true)
        .order("created_at", { ascending: false });
      if (error) throw error;
      return (data ?? []) as Review[];
    },
  });

  const { data: related = [] } = useQuery({
    queryKey: ["related", product?.category_id, product?.id],
    enabled: Boolean(product?.category_id),
    queryFn: async () => {
      const { data, error } = await supabase
        .from("products")
        .select(productSelect)
        .eq("active", true)
        .eq("category_id", product!.category_id!)
        .neq("id", product!.id)
        .limit(4);
      if (error) throw error;
      return (data ?? []) as unknown as Product[];
    },
  });

  const images = useMemo(() => (product ? sortedImages(product) : []), [product]);
  const variants = product?.product_variants ?? [];
  const variant = variants.find((v) => v.id === variantId) ?? variants[0];
  const finalPrice = (product?.price ?? 0) + (variant?.price_delta ?? 0);

  if (isLoading) {
    return (
      <StoreLayout>
        <div className="container-page grid gap-10 py-10 lg:grid-cols-2">
          <div className="aspect-square animate-pulse rounded-3xl bg-muted" />
          <div className="space-y-4">
            <div className="h-8 w-3/4 animate-pulse rounded bg-muted" />
            <div className="h-6 w-1/3 animate-pulse rounded bg-muted" />
            <div className="h-32 animate-pulse rounded bg-muted" />
          </div>
        </div>
      </StoreLayout>
    );
  }

  if (!product) {
    return (
      <StoreLayout>
        <div className="container-page py-20">
          <EmptyState
            icon={MessageCircleQuestion}
            title="Produto não encontrado"
            description="Esse item pode ter saído do catálogo. Veja outras opções da loja."
            action={
              <Button asChild>
                <Link to="/">Voltar para a home</Link>
              </Button>
            }
          />
        </div>
      </StoreLayout>
    );
  }

  const off = discountPercent(finalPrice, product.compare_at_price);
  const isFavorite = ids.has(product.id);

  function calculateShipping() {
    const digits = cep.replace(/\D/g, "");
    if (digits.length !== 8) {
      toast.error("Digite um CEP válido com 8 dígitos");
      return;
    }
    const base = product!.free_shipping ? 0 : 24.9;
    setShipping([
      { label: "Econômica", price: base, eta: "6 a 9 dias úteis" },
      { label: "Padrão", price: base + 12.9, eta: "3 a 5 dias úteis" },
      { label: "Expressa", price: base + 29.9, eta: "1 a 2 dias úteis" },
    ]);
  }

  return (
    <StoreLayout>
      <div className="container-page py-8">
        <nav className="mb-6 text-sm text-muted-foreground" aria-label="Você está aqui">
          <Link to="/" className="hover:text-primary">
            Início
          </Link>
          <span className="px-2">/</span>
          {product.categories && (
            <>
              <Link
                to="/categoria/$slug"
                params={{ slug: product.categories.slug }}
                className="hover:text-primary"
              >
                {product.categories.name}
              </Link>
              <span className="px-2">/</span>
            </>
          )}
          <span className="text-foreground">{product.name}</span>
        </nav>

        <div className="grid gap-10 lg:grid-cols-2">
          <div>
            <div className="mb-3 flex gap-2">
              <Button
                size="sm"
                variant={mode === "photos" ? "default" : "outline"}
                onClick={() => setMode("photos")}
              >
                Fotos
              </Button>
              <Button
                size="sm"
                variant={mode === "video" ? "default" : "outline"}
                className="gap-1"
                onClick={() => setMode("video")}
              >
                <Play className="h-3.5 w-3.5" /> Vídeo
              </Button>
              <Button
                size="sm"
                variant={mode === "360" ? "default" : "outline"}
                className="gap-1"
                onClick={() => setMode("360")}
              >
                <RotateCw className="h-3.5 w-3.5" /> 360°
              </Button>
            </div>

            {mode === "photos" && (
              <>
                <div
                  className="relative aspect-square overflow-hidden rounded-3xl border border-border bg-muted"
                  onMouseEnter={() => setZoom(true)}
                  onMouseLeave={() => setZoom(false)}
                >
                  <img
                    src={images[imageIndex]?.url ?? images[0]?.url}
                    alt={images[imageIndex]?.alt ?? product.name}
                    className={`h-full w-full object-cover transition-transform duration-300 ${zoom ? "scale-150" : "scale-100"}`}
                  />
                  <span className="absolute bottom-3 left-3 rounded-full bg-background/90 px-3 py-1 text-xs text-muted-foreground">
                    Passe o mouse para ampliar
                  </span>
                </div>
                <div className="mt-3 flex gap-3 overflow-x-auto">
                  {images.map((image, i) => (
                    <button
                      key={image.id}
                      type="button"
                      onClick={() => setImageIndex(i)}
                      aria-label={`Ver imagem ${i + 1}`}
                      className={`h-20 w-20 shrink-0 overflow-hidden rounded-xl border-2 ${
                        i === imageIndex ? "border-primary" : "border-border"
                      }`}
                    >
                      <img
                        src={image.url}
                        alt={image.alt ?? product.name}
                        loading="lazy"
                        className="h-full w-full object-cover"
                      />
                    </button>
                  ))}
                </div>
              </>
            )}

            {mode === "video" && (
              <div className="aspect-square overflow-hidden rounded-3xl border border-border bg-ink">
                <video
                  className="h-full w-full object-cover"
                  controls
                  playsInline
                  poster={images[0]?.url}
                  src="https://cdn.coverr.co/videos/coverr-cooking-in-a-modern-kitchen-2470/1080p.mp4"
                >
                  Seu navegador não suporta vídeo.
                </video>
              </div>
            )}

            {mode === "360" && (
              <div className="rounded-3xl border border-border bg-muted p-4">
                <div className="aspect-square overflow-hidden rounded-2xl bg-background">
                  <img
                    src={images[angle % Math.max(images.length, 1)]?.url ?? images[0]?.url}
                    alt={`${product.name} — vista ${angle * 45}°`}
                    className="h-full w-full object-cover"
                    style={{ transform: `rotate(${(angle % 2) * 0.5}deg)` }}
                  />
                </div>
                <div className="mt-4 flex items-center gap-3">
                  <RotateCw className="h-4 w-4 text-muted-foreground" />
                  <input
                    type="range"
                    min={0}
                    max={7}
                    value={angle}
                    aria-label="Girar o produto"
                    onChange={(event) => setAngle(Number(event.target.value))}
                    className="w-full accent-[var(--color-primary)]"
                  />
                  <span className="w-14 text-right text-xs text-muted-foreground">
                    {angle * 45}°
                  </span>
                </div>
              </div>
            )}
          </div>

          <div>
            <div className="mb-2 flex flex-wrap gap-2">
              {product.is_new && <Badge>Lançamento</Badge>}
              {off > 0 && <Badge variant="destructive">-{off}%</Badge>}
              {product.free_shipping && <Badge variant="secondary">Frete grátis</Badge>}
            </div>
            <h1 className="text-3xl font-semibold">{product.name}</h1>
            <p className="mt-1 text-sm text-muted-foreground">
              SKU {product.sku ?? "—"} · {product.categories?.name}
            </p>

            <div className="mt-3 flex items-center gap-2">
              <div className="flex" aria-label={`Nota ${product.rating} de 5`}>
                {Array.from({ length: 5 }).map((_, i) => (
                  <Star
                    key={i}
                    className={`h-4 w-4 ${i < Math.round(product.rating) ? "fill-amber-400 text-amber-400" : "text-muted-foreground"}`}
                  />
                ))}
              </div>
              <span className="text-sm text-muted-foreground">
                {product.rating.toFixed(1)} · {product.reviews_count} avaliações
              </span>
            </div>

            <p className="mt-4 text-muted-foreground">{product.short_description}</p>

            <div className="mt-6 rounded-2xl border border-border bg-card p-5">
              {product.compare_at_price && product.compare_at_price > finalPrice && (
                <p className="text-sm text-muted-foreground line-through">
                  {brl(product.compare_at_price)}
                </p>
              )}
              <p className="text-3xl font-bold">{brl(finalPrice)}</p>
              <p className="text-sm text-primary">
                {brl(pixPrice(finalPrice, product.pix_discount_percent))} no PIX (
                {product.pix_discount_percent}% de desconto)
              </p>
              <p className="text-sm text-muted-foreground">{installment(finalPrice)}</p>
            </div>

            {variants.length > 0 && (
              <div className="mt-6">
                <p className="mb-2 text-sm font-medium">Cor: {variant?.value}</p>
                <div className="flex flex-wrap gap-2">
                  {variants.map((item) => (
                    <button
                      key={item.id}
                      type="button"
                      onClick={() => setVariantId(item.id)}
                      className={`flex items-center gap-2 rounded-full border px-3 py-2 text-sm ${
                        item.id === variant?.id
                          ? "border-primary bg-accent text-primary"
                          : "border-border"
                      }`}
                    >
                      <span
                        className="h-4 w-4 rounded-full border border-border"
                        style={{ backgroundColor: item.hex ?? "#cbd5e1" }}
                      />
                      {item.value}
                    </button>
                  ))}
                </div>
              </div>
            )}

            <div className="mt-6 flex flex-wrap items-center gap-3">
              <div className="flex items-center rounded-lg border border-border">
                <button
                  type="button"
                  aria-label="Diminuir quantidade"
                  className="grid h-11 w-11 place-items-center"
                  onClick={() => setQuantity((q) => Math.max(1, q - 1))}
                >
                  <Minus className="h-4 w-4" />
                </button>
                <span className="w-8 text-center text-sm font-medium">{quantity}</span>
                <button
                  type="button"
                  aria-label="Aumentar quantidade"
                  className="grid h-11 w-11 place-items-center"
                  onClick={() => setQuantity((q) => Math.min(product.stock || 99, q + 1))}
                >
                  <Plus className="h-4 w-4" />
                </button>
              </div>

              <Button
                size="lg"
                className="flex-1"
                onClick={() => {
                  add(
                    {
                      productId: product.id,
                      slug: product.slug,
                      name: product.name,
                      image: images[0]?.url ?? "",
                      price: finalPrice,
                      variant: variant?.value ?? undefined,
                    },
                    quantity,
                  );
                  toast.success("Produto adicionado ao carrinho");
                }}
              >
                Adicionar ao carrinho
              </Button>

              <Button
                size="lg"
                variant="outline"
                aria-label="Favoritar produto"
                onClick={() => toggle(product.id)}
              >
                <Heart className={`h-5 w-5 ${isFavorite ? "fill-primary text-primary" : ""}`} />
              </Button>
            </div>

            <div className="mt-6 rounded-2xl border border-border p-5">
              <p className="mb-3 flex items-center gap-2 text-sm font-medium">
                <Truck className="h-4 w-4 text-primary" /> Calcular frete e prazo
              </p>
              <div className="flex gap-2">
                <Input
                  value={cep}
                  onChange={(event) => setCep(maskCep(event.target.value))}
                  placeholder="00000-000"
                  inputMode="numeric"
                  aria-label="CEP de entrega"
                />
                <Button variant="secondary" onClick={calculateShipping}>
                  Calcular
                </Button>
              </div>
              {shipping && (
                <ul className="mt-4 space-y-2 text-sm">
                  {shipping.map((option) => (
                    <li key={option.label} className="flex justify-between">
                      <span>
                        {option.label} · {option.eta}
                      </span>
                      <span className="font-medium">
                        {option.price === 0 ? "Grátis" : brl(option.price)}
                      </span>
                    </li>
                  ))}
                </ul>
              )}
            </div>

            {product.highlights?.length > 0 && (
              <ul className="mt-6 space-y-2">
                {product.highlights.map((item) => (
                  <li key={item} className="flex items-start gap-2 text-sm">
                    <Check className="mt-0.5 h-4 w-4 shrink-0 text-primary" />
                    {item}
                  </li>
                ))}
              </ul>
            )}
          </div>
        </div>

        <Tabs defaultValue="description" className="mt-14">
          <TabsList>
            <TabsTrigger value="description">Descrição</TabsTrigger>
            <TabsTrigger value="specs">Especificações</TabsTrigger>
            <TabsTrigger value="reviews">Avaliações ({reviews.length})</TabsTrigger>
            <TabsTrigger value="faq">Perguntas</TabsTrigger>
          </TabsList>

          <TabsContent value="description" className="max-w-3xl py-6 leading-relaxed text-muted-foreground">
            {product.description}
          </TabsContent>

          <TabsContent value="specs" className="py-6">
            <dl className="max-w-2xl divide-y divide-border rounded-2xl border border-border">
              {Object.entries(product.specs ?? {}).map(([key, value]) => (
                <div key={key} className="flex justify-between gap-4 px-4 py-3 text-sm">
                  <dt className="text-muted-foreground">{key}</dt>
                  <dd className="font-medium">{value}</dd>
                </div>
              ))}
            </dl>
          </TabsContent>

          <TabsContent value="reviews" className="py-6">
            {reviews.length === 0 ? (
              <EmptyState
                icon={Star}
                title="Ainda sem avaliações"
                description="Seja a primeira pessoa a contar como foi a experiência com esse produto."
              />
            ) : (
              <div className="grid gap-4 md:grid-cols-2">
                {reviews.map((review) => (
                  <article key={review.id} className="rounded-2xl border border-border p-5">
                    <div className="flex items-center justify-between">
                      <p className="font-medium">{review.author_name}</p>
                      <span className="text-xs text-muted-foreground">
                        {dateBR(review.created_at)}
                      </span>
                    </div>
                    <div className="my-2 flex">
                      {Array.from({ length: 5 }).map((_, i) => (
                        <Star
                          key={i}
                          className={`h-3.5 w-3.5 ${i < review.rating ? "fill-amber-400 text-amber-400" : "text-muted-foreground"}`}
                        />
                      ))}
                    </div>
                    {review.title && <p className="text-sm font-semibold">{review.title}</p>}
                    <p className="text-sm text-muted-foreground">{review.comment}</p>
                  </article>
                ))}
              </div>
            )}
          </TabsContent>

          <TabsContent value="faq" className="max-w-3xl py-6">
            <Accordion type="single" collapsible>
              {questions.map((item) => (
                <AccordionItem key={item.q} value={item.q}>
                  <AccordionTrigger>{item.q}</AccordionTrigger>
                  <AccordionContent>{item.a}</AccordionContent>
                </AccordionItem>
              ))}
            </Accordion>
          </TabsContent>
        </Tabs>

        {related.length > 0 && (
          <section className="mt-14">
            <Separator className="mb-8" />
            <h2 className="mb-6 text-2xl font-semibold">Você também pode gostar</h2>
            <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
              {related.map((item) => (
                <ProductCard key={item.id} product={item} />
              ))}
            </div>
          </section>
        )}
      </div>
    </StoreLayout>
  );
}
