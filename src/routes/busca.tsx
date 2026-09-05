import { createFileRoute } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { SearchX } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { ProductCard, ProductCardSkeleton } from "@/components/store/ProductCard";
import { EmptyState } from "@/components/store/EmptyState";
import { supabase } from "@/integrations/supabase/client";
import { productSelect, type Product } from "@/lib/types";

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

  const { data = [], isLoading } = useQuery({
    queryKey: ["search", q],
    enabled: q.length > 0,
    queryFn: async () => {
      const { data, error } = await supabase
        .from("products")
        .select(productSelect)
        .eq("active", true)
        .or(`name.ilike.%${q}%,short_description.ilike.%${q}%`)
        .limit(48);
      if (error) throw error;
      return (data ?? []) as unknown as Product[];
    },
  });

  return (
    <StoreLayout>
      <div className="container-page py-10">
        <h1 className="text-2xl font-semibold">
          Resultados para <span className="text-primary">“{q}”</span>
        </h1>
        <p className="mb-8 text-sm text-muted-foreground">
          {isLoading ? "Buscando..." : `${data.length} produtos encontrados`}
        </p>

        {isLoading ? (
          <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
            {Array.from({ length: 8 }).map((_, i) => (
              <ProductCardSkeleton key={i} />
            ))}
          </div>
        ) : data.length === 0 ? (
          <EmptyState
            icon={SearchX}
            title="Nada encontrado por aqui"
            description="Revise a escrita ou tente termos mais amplos, como “panela” ou “organização”."
          />
        ) : (
          <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
            {data.map((product) => (
              <ProductCard key={product.id} product={product} />
            ))}
          </div>
        )}
      </div>
    </StoreLayout>
  );
}
