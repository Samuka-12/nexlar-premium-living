import { useMemo, useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import {
  ArrowRight,
  Check,
  ChefHat,
  CreditCard,
  Lock,
  RefreshCw,
  RotateCcw,
  SlidersHorizontal,
  Sparkles,
  Truck,
} from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { ProductCard, ProductCardSkeleton } from "@/components/store/ProductCard";
import { useCategories } from "@/components/store/Header";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { supabase } from "@/integrations/supabase/client";
import { diversifyProducts, getLocalProducts } from "@/lib/catalog-data";
import { primaryImage, type Post, type Product } from "@/lib/types";
import { dateBR } from "@/lib/format";

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
      return getLocalProducts(filter).slice(0, 8);
    },
    initialData: getLocalProducts(filter).slice(0, 8),
  });
}

type QuizAnswers = {
  cooktop: string;
  people: string;
  type: string;
  priority: string;
  budget: string;
};

const quizQuestions = [
  {
    key: "cooktop",
    title: "Qual é o seu tipo de fogão?",
    options: ["Gás", "Indução", "Elétrico", "Não tenho certeza"],
  },
  {
    key: "people",
    title: "Para quantas pessoas você costuma cozinhar?",
    options: ["1–2 pessoas", "3–4 pessoas", "5 ou mais"],
  },
  {
    key: "type",
    title: "O que você procura?",
    options: [
      "Jogo completo",
      "Frigideira",
      "Panela de pressão",
      "Panelas avulsas",
      "Quero conhecer as opções",
    ],
  },
  {
    key: "priority",
    title: "O que é mais importante para você?",
    options: ["Antiaderência", "Durabilidade", "Praticidade", "Custo-benefício", "Design"],
  },
  {
    key: "budget",
    title: "Quanto pretende investir?",
    options: ["Até R$150", "R$150–300", "R$300–500", "Acima de R$500"],
  },
] as const;

function recommendProducts(answers: QuizAnswers) {
  const budgetMax = {
    "Até R$150": 150,
    "R$150–300": 300,
    "R$300–500": 500,
    "Acima de R$500": Infinity,
  }[answers.budget];
  const allProducts = getLocalProducts();
  const scored = allProducts.map((product) => {
    const text = [
      product.name,
      product.short_description,
      product.description,
      ...product.highlights,
      ...Object.values(product.specs),
    ]
      .filter(Boolean)
      .join(" ")
      .toLowerCase();
    let score = 0;
    if (answers.cooktop === "Indução")
      score += /indu[cç][aã]o|fundo triplo|magn[eé]tic/i.test(text) ? 8 : -3;
    if (answers.cooktop === "Gás" || answers.cooktop === "Elétrico")
      score += /g[aá]s|el[eé]tric/i.test(text) ? 2 : 0;
    if (answers.type === "Jogo completo")
      score += product.category_id === "cat-jogos-de-panelas" ? 9 : 0;
    if (answers.type === "Frigideira")
      score += product.category_id === "cat-frigideiras-e-woks" ? 9 : 0;
    if (answers.type === "Panela de pressão")
      score += product.category_id === "cat-panelas-de-pressao" ? 9 : 0;
    if (answers.type === "Panelas avulsas")
      score += product.category_id === "cat-cacarolas-e-avulsas" ? 7 : 0;
    if (answers.priority === "Antiaderência")
      score += /antiaderent|ceramic|starflon|mineral resist/i.test(text) ? 5 : 0;
    if (answers.priority === "Durabilidade")
      score += /durab|a[cç]o inox|fundo triplo|garantia/i.test(text) ? 4 : 0;
    if (answers.priority === "Praticidade")
      score += /pr[aá]tic|f[aá]cil|soft-touch|remov[ií]vel/i.test(text) ? 4 : 0;
    if (answers.priority === "Custo-benefício")
      score += product.compare_at_price && product.compare_at_price > product.price ? 4 : 0;
    if (answers.priority === "Design")
      score += /design|sofistic|moderno|elegante/i.test(text) ? 3 : 0;
    if (product.price <= budgetMax) score += 3;
    if (answers.budget && product.price > budgetMax && budgetMax !== Infinity) score -= 5;
    if (
      answers.people === "5 ou mais" &&
      /[4-9][,.]?[0-9]*\s*l|5,4|5 litros|6 litros|8 litros/i.test(text)
    )
      score += 3;
    return { product, score };
  });
  return diversifyProducts(
    scored.sort((a, b) => b.score - a.score).map(({ product }) => product),
  ).slice(0, 6);
}

function QuizDialog({
  open,
  onOpenChange,
}: {
  open: boolean;
  onOpenChange: (open: boolean) => void;
}) {
  const [step, setStep] = useState(0);
  const [answers, setAnswers] = useState<QuizAnswers>({
    cooktop: "",
    people: "",
    type: "",
    priority: "",
    budget: "",
  });
  const [finished, setFinished] = useState(false);
  const recommendations = useMemo(() => recommendProducts(answers), [answers]);
  const question = quizQuestions[step];

  const reset = () => {
    setStep(0);
    setAnswers({ cooktop: "", people: "", type: "", priority: "", budget: "" });
    setFinished(false);
  };
  const choose = (answer: string) => {
    const next = { ...answers, [question.key]: answer };
    setAnswers(next);
    if (step === quizQuestions.length - 1) setFinished(true);
    else setStep((value) => value + 1);
  };

  return (
    <Dialog
      open={open}
      onOpenChange={(value) => {
        onOpenChange(value);
        if (!value) reset();
      }}
    >
      <DialogContent className="max-h-[90vh] max-w-5xl overflow-y-auto p-5 sm:p-8">
        {!finished ? (
          <>
            <DialogHeader>
              <div className="mb-2 flex items-center justify-between text-xs font-medium text-muted-foreground">
                <span>Descubra em poucos passos</span>
                <span>
                  {step + 1} de {quizQuestions.length}
                </span>
              </div>
              <div className="mb-4 h-1.5 overflow-hidden rounded-full bg-muted">
                <div
                  className="h-full rounded-full bg-primary transition-all"
                  style={{ width: `${((step + 1) / quizQuestions.length) * 100}%` }}
                />
              </div>
              <DialogTitle className="text-2xl sm:text-3xl">{question.title}</DialogTitle>
              <DialogDescription>
                Escolha a opção que mais combina com a sua rotina.
              </DialogDescription>
            </DialogHeader>
            <div className="grid gap-3 sm:grid-cols-2">
              {question.options.map((option) => (
                <button
                  key={option}
                  type="button"
                  onClick={() => choose(option)}
                  className="group flex min-h-16 items-center justify-between rounded-2xl border border-border bg-card px-5 text-left font-medium transition-all hover:-translate-y-0.5 hover:border-primary hover:bg-primary/5 hover:shadow-[var(--shadow-soft)] focus:outline-none focus:ring-2 focus:ring-ring"
                >
                  <span>{option}</span>
                  <ArrowRight className="h-4 w-4 text-muted-foreground transition-transform group-hover:translate-x-1 group-hover:text-primary" />
                </button>
              ))}
            </div>
            <div className="flex justify-between pt-2">
              <Button
                variant="ghost"
                disabled={step === 0}
                onClick={() => setStep((value) => value - 1)}
              >
                Voltar
              </Button>
              <Button variant="ghost" onClick={reset} className="gap-2">
                <RotateCcw className="h-4 w-4" /> Reiniciar
              </Button>
            </div>
          </>
        ) : (
          <>
            <DialogHeader className="mb-4">
              <div className="mx-auto mb-2 grid h-12 w-12 place-items-center rounded-full bg-primary/10 text-primary">
                <Check className="h-6 w-6" />
              </div>
              <DialogTitle className="text-center text-2xl sm:text-3xl">
                Encontramos opções para a sua cozinha.
              </DialogTitle>
              <DialogDescription className="text-center">
                Com base nas suas respostas, selecionamos produtos que combinam com o que você
                procura.
              </DialogDescription>
            </DialogHeader>
            <div className="grid grid-cols-2 gap-3 md:grid-cols-3">
              {recommendations.map((product) => (
                <ProductCard key={product.id} product={product} />
              ))}
            </div>
            <div className="flex flex-wrap justify-center gap-3 pt-3">
              <Button variant="outline" onClick={reset} className="gap-2">
                <RotateCcw className="h-4 w-4" /> Refazer quiz
              </Button>
              <Button asChild>
                <a href="#ofertas" onClick={() => onOpenChange(false)}>
                  Ver todos os resultados
                </a>
              </Button>
            </div>
          </>
        )}
      </DialogContent>
    </Dialog>
  );
}

function Hero() {
  const [quizOpen, setQuizOpen] = useState(false);
  const heroProducts = getLocalProducts("featured").slice(0, 3);
  return (
    <>
      <section className="overflow-hidden bg-ink text-ink-foreground">
        <div className="container-page grid items-center gap-10 py-10 md:grid-cols-[0.9fr_1.1fr] md:py-16 lg:gap-16">
          <div className="max-w-xl space-y-5">
            <span className="inline-flex items-center gap-2 text-xs font-semibold uppercase tracking-[0.18em] text-white/60">
              <Sparkles className="h-3.5 w-3.5 text-primary" /> Escolha sem dúvida
            </span>
            <h1 className="text-4xl font-bold leading-[1.05] sm:text-5xl lg:text-6xl">
              Qual panela combina com a sua cozinha?
            </h1>
            <p className="max-w-lg text-base leading-relaxed text-white/70 sm:text-lg">
              Encontre o jogo, frigideira ou panela ideal para a sua rotina.
            </p>
            <div className="flex flex-col gap-3 sm:flex-row">
              <Button size="lg" onClick={() => setQuizOpen(true)} className="gap-2">
                <ChefHat className="h-5 w-5" /> Descobrir minha panela
              </Button>
              <Button
                asChild
                size="lg"
                variant="outline"
                className="border-white/30 bg-transparent text-ink-foreground hover:bg-white/10 hover:text-ink-foreground"
              >
                <a href="#ofertas">
                  Ver ofertas <ArrowRight className="ml-2 h-4 w-4" />
                </a>
              </Button>
            </div>
            <p className="flex items-center gap-2 text-xs text-white/55">
              <SlidersHorizontal className="h-3.5 w-3.5" /> Leva menos de 1 minuto · Prefere
              escolher sozinho? Explore nossas panelas.
            </p>
          </div>
          <div className="relative min-h-[300px] overflow-hidden rounded-[2rem] border border-white/10 bg-white/5 p-4 sm:min-h-[390px] sm:p-7">
            <div className="absolute -right-20 -top-20 h-64 w-64 rounded-full bg-primary/25 blur-3xl" />
            <div className="relative grid h-full grid-cols-2 gap-3 sm:gap-5">
              {heroProducts.map((product, index) => (
                <Link
                  key={product.id}
                  to="/produto/$slug"
                  params={{ slug: product.slug }}
                  className={`${index === 0 ? "row-span-2" : ""} group overflow-hidden rounded-2xl bg-white/10`}
                >
                  <img
                    src={primaryImage(product)}
                    alt={product.name}
                    className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-105"
                    fetchPriority={index === 0 ? "high" : undefined}
                  />
                </Link>
              ))}
            </div>
            <div className="absolute bottom-7 left-7 rounded-xl border border-white/15 bg-ink/80 px-4 py-3 backdrop-blur">
              <p className="text-xs text-white/60">Na NEXLAR você encontra</p>
              <p className="text-sm font-semibold">panelas para cada jeito de cozinhar</p>
            </div>
          </div>
        </div>
      </section>
      <QuizDialog open={quizOpen} onOpenChange={setQuizOpen} />
    </>
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
          : (data ?? [])
              .slice(0, 8)
              .map((product) => <ProductCard key={product.id} product={product} />)}
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

      <div id="ofertas">
        <Showcase
          title="Ofertas para sua cozinha"
          subtitle="Produtos reais do catálogo com preço especial"
          filter="offers"
        />
      </div>

      <Showcase
        title="Escolhas para sua cozinha"
        subtitle="Produtos reais do nosso catálogo para você comparar"
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
              <Link to="/categoria/$slug" params={{ slug: "jogos-de-panelas" }}>
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
                <h3 className="line-clamp-2 font-semibold group-hover:text-primary">
                  {post.title}
                </h3>
                <p className="line-clamp-2 text-sm text-muted-foreground">{post.excerpt}</p>
              </div>
            </Link>
          ))}
        </div>
      </section>
    </StoreLayout>
  );
}
