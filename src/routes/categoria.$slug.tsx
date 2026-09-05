import { useMemo, useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { LayoutGrid, List, PackageSearch, SlidersHorizontal } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { ProductCard, ProductCardSkeleton } from "@/components/store/ProductCard";
import { EmptyState } from "@/components/store/EmptyState";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import { Label } from "@/components/ui/label";
import { Slider } from "@/components/ui/slider";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Sheet, SheetContent, SheetHeader, SheetTitle, SheetTrigger } from "@/components/ui/sheet";
import { supabase } from "@/integrations/supabase/client";
import { productSelect, type Category, type Product } from "@/lib/types";
import { brl } from "@/lib/format";

export const Route = createFileRoute("/categoria/$slug")({
  head: ({ params }) => {
    const name = params.slug.replace(/-/g, " ");
    const title = `${name.charAt(0).toUpperCase()}${name.slice(1)} | NEXLAR`;
    const description = `Compre ${name} na NEXLAR com design funcional, frete grátis acima de R$ 299 e até 8x sem juros.`;
    return {
      meta: [
        { title },
        { name: "description", content: description },
        { property: "og:title", content: title },
        { property: "og:description", content: description },
      ],
    };
  },
  component: CategoryPage,
});

type SortKey = "relevance" | "price-asc" | "price-desc" | "rating" | "newest";

function CategoryPage() {
  const { slug } = Route.useParams();
  const [sort, setSort] = useState<SortKey>("relevance");
  const [layout, setLayout] = useState<"grid" | "list">("grid");
  const [maxPrice, setMaxPrice] = useState(1000);
  const [onlyFreeShipping, setOnlyFreeShipping] = useState(false);
  const [onlyOffers, setOnlyOffers] = useState(false);

  const { data: category } = useQuery({
    queryKey: ["category", slug],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("categories")
        .select("*")
        .eq("slug", slug)
        .maybeSingle();
      if (error) throw error;
      return data as Category | null;
    },
  });

  const { data: products = [], isLoading } = useQuery({
    queryKey: ["category-products", category?.id],
    enabled: Boolean(category?.id),
    queryFn: async () => {
      const { data, error } = await supabase
        .from("products")
        .select(productSelect)
        .eq("active", true)
        .eq("category_id", category!.id);
      if (error) throw error;
      return (data ?? []) as unknown as Product[];
    },
  });

  const filtered = useMemo(() => {
    const list = products.filter((product) => {
      if (product.price > maxPrice) return false;
      if (onlyFreeShipping && !product.free_shipping) return false;
      if (onlyOffers && !(product.compare_at_price && product.compare_at_price > product.price))
        return false;
      return true;
    });
    const sorted = [...list];
    if (sort === "price-asc") sorted.sort((a, b) => a.price - b.price);
    if (sort === "price-desc") sorted.sort((a, b) => b.price - a.price);
    if (sort === "rating") sorted.sort((a, b) => b.rating - a.rating);
    if (sort === "newest")
      sorted.sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime());
    return sorted;
  }, [products, sort, maxPrice, onlyFreeShipping, onlyOffers]);

  const filters = (
    <div className="space-y-6">
      <div>
        <h3 className="mb-3 text-sm font-semibold">Preço até</h3>
        <Slider
          value={[maxPrice]}
          min={50}
          max={1000}
          step={10}
          onValueChange={(value) => setMaxPrice(value[0] ?? 1000)}
        />
        <p className="mt-2 text-sm text-muted-foreground">{brl(maxPrice)}</p>
      </div>
      <div className="space-y-3">
        <h3 className="text-sm font-semibold">Filtros rápidos</h3>
        <div className="flex items-center gap-2">
          <Checkbox
            id="frete"
            checked={onlyFreeShipping}
            onCheckedChange={(value) => setOnlyFreeShipping(Boolean(value))}
          />
          <Label htmlFor="frete" className="text-sm font-normal">
            Apenas frete grátis
          </Label>
        </div>
        <div className="flex items-center gap-2">
          <Checkbox
            id="ofertas"
            checked={onlyOffers}
            onCheckedChange={(value) => setOnlyOffers(Boolean(value))}
          />
          <Label htmlFor="ofertas" className="text-sm font-normal">
            Apenas em oferta
          </Label>
        </div>
      </div>
    </div>
  );

  return (
    <StoreLayout>
      <div className="container-page py-8">
        <nav className="mb-4 text-sm text-muted-foreground" aria-label="Você está aqui">
          <Link to="/" className="hover:text-primary">
            Início
          </Link>
          <span className="px-2">/</span>
          <span className="text-foreground">{category?.name ?? slug}</span>
        </nav>

        <header className="mb-8">
          <h1 className="text-3xl font-semibold">{category?.name ?? "Categoria"}</h1>
          {category?.description && (
            <p className="mt-1 max-w-2xl text-muted-foreground">{category.description}</p>
          )}
        </header>

        <div className="grid gap-8 lg:grid-cols-[240px_1fr]">
          <aside className="hidden lg:block">{filters}</aside>

          <div>
            <div className="mb-5 flex flex-wrap items-center gap-3">
              <p className="text-sm text-muted-foreground">
                {filtered.length} {filtered.length === 1 ? "produto" : "produtos"}
              </p>

              <div className="ml-auto flex items-center gap-2">
                <Sheet>
                  <SheetTrigger asChild>
                    <Button variant="outline" size="sm" className="gap-2 lg:hidden">
                      <SlidersHorizontal className="h-4 w-4" /> Filtros
                    </Button>
                  </SheetTrigger>
                  <SheetContent side="left" className="w-80">
                    <SheetHeader>
                      <SheetTitle>Filtros</SheetTitle>
                    </SheetHeader>
                    <div className="px-4">{filters}</div>
                  </SheetContent>
                </Sheet>

                <Select value={sort} onValueChange={(value) => setSort(value as SortKey)}>
                  <SelectTrigger className="w-44" aria-label="Ordenar produtos">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="relevance">Relevância</SelectItem>
                    <SelectItem value="price-asc">Menor preço</SelectItem>
                    <SelectItem value="price-desc">Maior preço</SelectItem>
                    <SelectItem value="rating">Melhor avaliados</SelectItem>
                    <SelectItem value="newest">Novidades</SelectItem>
                  </SelectContent>
                </Select>

                <div className="hidden items-center rounded-lg border border-border sm:flex">
                  <button
                    type="button"
                    aria-label="Visualizar em grade"
                    onClick={() => setLayout("grid")}
                    className={`grid h-9 w-9 place-items-center rounded-l-lg ${layout === "grid" ? "bg-accent text-primary" : "text-muted-foreground"}`}
                  >
                    <LayoutGrid className="h-4 w-4" />
                  </button>
                  <button
                    type="button"
                    aria-label="Visualizar em lista"
                    onClick={() => setLayout("list")}
                    className={`grid h-9 w-9 place-items-center rounded-r-lg ${layout === "list" ? "bg-accent text-primary" : "text-muted-foreground"}`}
                  >
                    <List className="h-4 w-4" />
                  </button>
                </div>
              </div>
            </div>

            {isLoading ? (
              <div className="grid grid-cols-2 gap-4 lg:grid-cols-3">
                {Array.from({ length: 6 }).map((_, i) => (
                  <ProductCardSkeleton key={i} />
                ))}
              </div>
            ) : filtered.length === 0 ? (
              <EmptyState
                icon={PackageSearch}
                title="Nenhum produto encontrado"
                description="Tente ajustar os filtros ou explorar outra categoria."
                action={
                  <Button
                    onClick={() => {
                      setMaxPrice(1000);
                      setOnlyFreeShipping(false);
                      setOnlyOffers(false);
                    }}
                  >
                    Limpar filtros
                  </Button>
                }
              />
            ) : (
              <div
                className={
                  layout === "grid"
                    ? "grid grid-cols-2 gap-4 lg:grid-cols-3"
                    : "flex flex-col gap-4"
                }
              >
                {filtered.map((product) => (
                  <ProductCard key={product.id} product={product} layout={layout} />
                ))}
              </div>
            )}
          </div>
        </div>
      </div>
    </StoreLayout>
  );
}
