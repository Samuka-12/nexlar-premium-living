import { useMemo, useState } from "react";
import { createFileRoute } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { SearchX } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { ProductCard, ProductCardSkeleton } from "@/components/store/ProductCard";
import { EmptyState } from "@/components/store/EmptyState";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { supabase } from "@/integrations/supabase/client";
import { productSelect, type Product } from "@/lib/types";
import {
  diversifyProducts,
  getLocalBrands,
  getLocalProductBrand,
  searchLocalProducts,
} from "@/lib/catalog-data";

export const Route = createFileRoute("/busca")({
  validateSearch: (search: Record<string, unknown>) => ({
    q: typeof search["q"] === "string" ? search["q"] : "",
  }),
  head: () => ({
    meta: [
      { title: "Busca de produtos | NEXLAR" },
      { name: "description", content: "Encontre panelas, utensílios e organização na NEXLAR." },
      { property: "og:title", content: "Busca de produtos | NEXLAR" },
      { property: "og:description", content: "Resultados de busca na loja NEXLAR." },
      { name: "robots", content: "noindex" },
    ],
  }),
  component: SearchPage,
});

function SearchPage() {
  const { q } = Route.useSearch();
  const [brand, setBrand] = useState("");
  const localResults = searchLocalProducts(q);
  const brands = getLocalBrands();

  const { data = [], isLoading } = useQuery({
    queryKey: ["search", q],
    enabled: q.length > 0,
    queryFn: async () => {
      return localResults;
    },
    initialData: localResults,
  });

  const filtered = useMemo(() => {
    const matching = brand
      ? data.filter((product) => getLocalProductBrand(product) === brand)
      : data;
    return brand ? matching : diversifyProducts(matching);
  }, [data, brand]);

  return (
    <StoreLayout>
      <div className="container-page py-10">
        <h1 className="text-2xl font-semibold">
          Resultados para <span className="text-primary">“{q}”</span>
        </h1>
        <p className="mb-8 text-sm text-muted-foreground">
          {isLoading ? "Buscando..." : `${filtered.length} produtos encontrados`}
        </p>

        <div className="mb-8 max-w-xs">
          <label className="mb-2 block text-sm font-semibold" htmlFor="search-brand-filter">
            Marca
          </label>
          <Select
            value={brand || "all"}
            onValueChange={(value) => setBrand(value === "all" ? "" : value)}
          >
            <SelectTrigger id="search-brand-filter" aria-label="Filtrar busca por marca">
              <SelectValue placeholder="Todas as marcas" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todas</SelectItem>
              {brands.map((option) => (
                <SelectItem key={option} value={option}>
                  {option}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        {isLoading ? (
          <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
            {Array.from({ length: 8 }).map((_, i) => (
              <ProductCardSkeleton key={i} />
            ))}
          </div>
        ) : filtered.length === 0 ? (
          <EmptyState
            icon={SearchX}
            title="Nada encontrado por aqui"
            description="Revise a escrita ou tente termos mais amplos, como “panela” ou “organização”."
          />
        ) : (
          <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
            {filtered.map((product) => (
              <ProductCard key={product.id} product={product} />
            ))}
          </div>
        )}
      </div>
    </StoreLayout>
  );
}
