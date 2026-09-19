import { useEffect, useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { ArrowRight, ChevronLeft, ChevronRight, CreditCard, Lock, RefreshCw, Truck } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { ProductCard, ProductCardSkeleton } from "@/components/store/ProductCard";
import { useCategories } from "@/components/store/Header";
import { Button } from "@/components/ui/button";
import { supabase } from "@/integrations/supabase/client";
import { productSelect, type Banner, type Post, type Product } from "@/lib/types";
import { dateBR } from "@/lib/format";
import { getLocalBanners, getLocalProducts } from "@/lib/catalog-data";

export const Route = createFileRoute("/")({
  head: () => ({
    meta: [
      { title: "NEXLAR | Casa, cozinha e organização com design" },
      {
        name: "description",
        content:
          "Panelas de indução, mesa posta, organização, churrasco, lavanderia e banheiro. Frete grátis acima de R$ 299 e até 8x sem juros.",
      },
      { property: "og:title", content: "NEXLAR | Casa, cozinha e organização com design" },
      {
        property: "og:description",
        content: "Design funcional para casa e cozinha. Produtos pensados para durar.",
      },
    ],
  }),
  component: HomePage,
});

const benefits = [
  { icon: Truck, title: "Frete grátis", text: "Acima de R$ 299 para todo o Brasil" },
  { icon: CreditCard, title: "Até 8x sem juros", text: "PIX, cartão de crédito ou boleto" },
  { icon: RefreshCw, title: "Troca em 30 dias", text: "Processo simples e sem burocracia" },
  { icon: Lock, title: "Compra segura", text: "Seus dados sempre protegidos" },
];

function useProducts(filter: "featured" | "new" | "offers") {
  return useQuery({
    queryKey: ["home-products", filter],
    queryFn: async () => {
      try {
        let query = supabase.from("products").select(productSelect).eq("active", true).limit(8);
        if (filter === "featured") query = query.eq("featured", true);
        if (filter === "new") query = query.eq("is_new", true);
        if (filter === "offers") query = query.order("compare_at_price", { ascending: false });
        const { data, error } = await query;
        if (!error && data && data.length > 0) {
          return (data ?? []) as unknown as Product[];
        }
      } catch {
        // Fallback para os dados estáticos do catálogo
      }
      return getLocalProducts(filter).slice(0, 8);
    },
    initialData: getLocalProducts(filter).slice(0, 8),
  });
}

function Hero() {
  const { data: banners = [] } = useQuery({
    queryKey: ["banners"],
    queryFn: async () => {
      try {
        const { data, error } = await supabase
          .from("banners")
          .select("*")
          .eq("active", true)
          .order("position");
        if (!error && data && data.length > 0) {
          return (data ?? []) as Banner[];
        }
      } catch {
        // Fallback para os banners locais
      }
      return getLocalBanners();
    },
    initialData: getLocalBanners(),
  });
  const [index, setIndex] = useState(0);

  useEffect(() => {
    if (banners.length < 2) return;
    const timer = setInterval(() => setIndex((i) => (i + 1) % banners.length), 6000);
    return () => clearInterval(timer);
  }, [banners.length]);

  if (!banners.length) {
    return <div className="h-[420px] animate-pulse bg-muted" aria-hidden />;
  }

  const banner = banners[index % banners.length]!;

  return (
    <section className="relative overflow-hidden bg-ink text-ink-foreground">
      <div className="container-page grid items-center gap-8 py-12 md:grid-cols-2 md:py-16">
        <div className="space-y-5">
          {banner.eyebrow && (
            <span className="inline-block rounded-full border border-white/20 px-3 py-1 text-xs tracking-[0.2em]">
              {banner.eyebrow}
            </span>
          )}
          <h1 className="text-4xl font-bold leading-tight md:text-5xl">{banner.title}</h1>
          <p className="max-w-md text-white/70">{banner.subtitle}</p>
          <div className="flex flex-wrap gap-3">
            <Button asChild size="lg" className="gap-2">
              <Link to={banner.cta_url ?? "/categoria/$slug"} params={{ slug: "panelas" }}>
                {banner.cta_label ?? "Comprar agora"} <ArrowRight className="h-4 w-4" />
              </Link>
            </Button>
            <Button
              asChild
              size="lg"
              variant="outline"
              className="border-white/30 bg-transparent text-ink-foreground hover:bg-white/10 hover:text-ink-foreground"
            >
              <Link to="/blog">Guias e inspirações</Link>
            </Button>
          </div>
          <div className="flex items-center gap-3 pt-2">
            <button
              type="button"
              aria-label="Banner anterior"
              onClick={() => setIndex((i) => (i - 1 + banners.length) % banners.length)}
              className="grid h-9 w-9 place-items-center rounded-full border border-white/20 hover:bg-white/10"
            >
              <ChevronLeft className="h-4 w-4" />
            </button>
            <div className="flex gap-1.5">
              {banners.map((item, i) => (
                <button
                  key={item.id}
                  type="button"
                  aria-label={`Ir para o banner ${i + 1}`}
                  onClick={() => setIndex(i)}
                  className={`h-1.5 rounded-full transition-all ${
                    i === index % banners.length ? "w-8 bg-primary" : "w-4 bg-white/30"
                  }`}
                />
              ))}
            </div>
            <button
              type="button"
              aria-label="Próximo banner"
              onClick={() => setIndex((i) => (i + 1) % banners.length)}
              className="grid h-9 w-9 place-items-center rounded-full border border-white/20 hover:bg-white/10"
            >
              <ChevronRight className="h-4 w-4" />
            </button>
          </div>
        </div>

        <div className="relative aspect-[4/3] overflow-hidden rounded-3xl">
          {banner.image_url && (
            <img
              src={banner.image_url}
              alt={banner.title}
              className="h-full w-full object-cover"
              fetchPriority="high"
            />
          )}
        </div>
      </div>
    </section>
  );
}

function Showcase({
  title,
  subtitle,
  filter,
}: {
  title: string;
  subtitle: string;
  filter: "featured" | "new" | "offers";
}) {
  const { data, isLoading } = useProducts(filter);

  return (
    <section className="container-page py-12">
      <div className="mb-6 flex items-end justify-between gap-4">
        <div>
          <h2 className="text-2xl font-semibold md:text-3xl">{title}</h2>
          <p className="text-sm text-muted-foreground">{subtitle}</p>
        </div>
      </div>
      <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
        {isLoading
          ? Array.from({ length: 4 }).map((_, i) => <ProductCardSkeleton key={i} />)
          : (data ?? []).slice(0, 8).map((product) => (
              <ProductCard key={product.id} product={product} />
            ))}
      </div>
    </section>
  );
}

function HomePage() {
  const { data: categories = [] } = useCategories();
  const { data: posts = [] } = useQuery({
    queryKey: ["home-posts"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("posts")
        .select("*")
        .eq("published", true)
        .order("published_at", { ascending: false })
        .limit(3);
      if (error) throw error;
      return (data ?? []) as Post[];
    },
  });

  return (
    <StoreLayout>
      <Hero />

      <section className="border-b border-border bg-muted/40">
        <div className="container-page grid gap-6 py-8 sm:grid-cols-2 lg:grid-cols-4">
          {benefits.map((benefit) => (
            <div key={benefit.title} className="flex items-center gap-3">
              <span className="grid h-11 w-11 place-items-center rounded-xl bg-background text-primary shadow-[var(--shadow-soft)]">
                <benefit.icon className="h-5 w-5" />
              </span>
              <div>
                <p className="text-sm font-semibold">{benefit.title}</p>
                <p className="text-xs text-muted-foreground">{benefit.text}</p>
              </div>
            </div>
          ))}
        </div>
      </section>

      <section className="container-page py-12">
        <h2 className="mb-6 text-2xl font-semibold md:text-3xl">Compre por categoria</h2>
        <div className="grid grid-cols-2 gap-4 md:grid-cols-4 lg:grid-cols-7">
          {categories.map((category) => (
            <Link
              key={category.id}
              to="/categoria/$slug"
              params={{ slug: category.slug }}
              className="group overflow-hidden rounded-2xl border border-border bg-card text-center transition-shadow hover:shadow-[var(--shadow-lift)]"
            >
              <div className="aspect-square overflow-hidden bg-muted">
                {category.image_url && (
                  <img
                    src={category.image_url}
                    alt={category.name}
                    loading="lazy"
                    className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-105"
                  />
                )}
              </div>
              <p className="p-3 text-sm font-medium">{category.name}</p>
            </Link>
          ))}
        </div>
      </section>

      <Showcase
        title="Destaques da NEXLAR"
        subtitle="Os produtos mais desejados da nossa curadoria"
        filter="featured"
      />

      <section className="bg-ink py-14 text-ink-foreground">
        <div className="container-page grid items-center gap-8 md:grid-cols-2">
          <div className="space-y-4">
            <span className="text-xs tracking-[0.2em] text-white/60">LINHA CERAMIC PRO</span>
            <h2 className="text-3xl font-bold">Antiaderente cerâmico que dura mais</h2>
            <p className="text-white/70">
              Fundo triplo, distribuição uniforme de calor e revestimento livre de PFOA. Feito para
              cozinhas que trabalham todos os dias.
            </p>
            <Button asChild size="lg">
              <Link to="/categoria/$slug" params={{ slug: "panelas" }}>
                Conhecer a linha
              </Link>
            </Button>
          </div>
          <img
            src="https://images.unsplash.com/photo-1556909212-d5b604d0c90d?auto=format&fit=crop&w=1200&q=80"
            alt="Panelas da linha Ceramic Pro sobre a bancada"
            loading="lazy"
            className="aspect-[4/3] w-full rounded-3xl object-cover"
          />
        </div>
      </section>

      <Showcase title="Lançamentos" subtitle="Chegaram agora na loja" filter="new" />

      <section className="container-page py-12">
        <div className="mb-6 flex items-end justify-between">
          <div>
            <h2 className="text-2xl font-semibold md:text-3xl">Blog NEXLAR</h2>
            <p className="text-sm text-muted-foreground">Guias práticos para a sua casa</p>
          </div>
          <Button asChild variant="ghost" className="gap-1">
            <Link to="/blog">
              Ver tudo <ArrowRight className="h-4 w-4" />
            </Link>
          </Button>
        </div>
        <div className="grid gap-5 md:grid-cols-3">
          {posts.map((post) => (
            <Link
              key={post.id}
              to="/blog/$slug"
              params={{ slug: post.slug }}
              className="group overflow-hidden rounded-2xl border border-border bg-card transition-shadow hover:shadow-[var(--shadow-lift)]"
            >
              <div className="aspect-[16/9] overflow-hidden bg-muted">
                {post.cover_url && (
                  <img
                    src={post.cover_url}
                    alt={post.title}
                    loading="lazy"
                    className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-105"
                  />
                )}
              </div>
              <div className="space-y-2 p-4">
                <p className="text-xs text-muted-foreground">{dateBR(post.published_at)}</p>
                <h3 className="line-clamp-2 font-semibold group-hover:text-primary">{post.title}</h3>
                <p className="line-clamp-2 text-sm text-muted-foreground">{post.excerpt}</p>
              </div>
            </Link>
          ))}
        </div>
      </section>
    </StoreLayout>
  );
}
