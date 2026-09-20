import { useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { Package, Plus, Pencil, Loader2, CheckCircle, XCircle, Search } from "lucide-react";
import { AdminLayout } from "@/components/admin/AdminLayout";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import { supabase } from "@/integrations/supabase/client";
import { brl } from "@/lib/format";
import { PRODUCTS } from "@/lib/catalog-data";

export const Route = createFileRoute("/admin/")({
  head: () => ({
    meta: [{ title: "Admin | NEXLAR" }],
  }),
  component: AdminPage,
});

function normalize(str: string) {
  return (str || "")
    .toLowerCase()
    .trim()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9]/g, "");
}

function AdminPage() {
  const [search, setSearch] = useState("");

  const { data: products = [], isLoading } = useQuery({
    queryKey: ["admin-products"],
    queryFn: async () => {
      let dbProducts: any[] = [];
      try {
        const { data, error } = await supabase
          .from("products")
          .select("id, name, slug, price, compare_at_price, active, featured, is_new, categories(name)")
          .order("created_at", { ascending: false });
        if (!error && data) {
          dbProducts = data;
        }
      } catch {
        // Fallback silencioso
      }

      // Mapeamento por chave normalizada (slug, id e nome) dos dados do Supabase
      const dbMap = new Map<string, any>();
      dbProducts.forEach((p) => {
        if (p.slug) dbMap.set(normalize(p.slug), p);
        if (p.id) dbMap.set(normalize(p.id), p);
        if (p.name) dbMap.set(normalize(p.name), p);
      });

      // Mescla estritamente os 72 produtos do catálogo oficial
      return PRODUCTS.map((localP) => {
        const dbP =
          dbMap.get(normalize(localP.slug)) ||
          dbMap.get(normalize(localP.id)) ||
          dbMap.get(normalize(localP.name));

        if (dbP) {
          return {
            id: dbP.id || localP.id,
            name: dbP.name || localP.name,
            slug: dbP.slug || localP.slug,
            price: dbP.price ?? localP.price,
            compare_at_price: dbP.compare_at_price !== undefined ? dbP.compare_at_price : localP.compare_at_price,
            active: dbP.active ?? localP.active ?? true,
            featured: dbP.featured ?? localP.featured ?? false,
            is_new: dbP.is_new ?? localP.is_new ?? false,
            categories: dbP.categories
              ? { name: dbP.categories.name }
              : localP.categories
              ? { name: localP.categories.name }
              : null,
          };
        }

        return {
          id: localP.id,
          name: localP.name,
          slug: localP.slug,
          price: localP.price,
          compare_at_price: localP.compare_at_price,
          active: localP.active ?? true,
          featured: localP.featured ?? false,
          is_new: localP.is_new ?? false,
          categories: localP.categories ? { name: localP.categories.name } : null,
        };
      });
    },
    initialData: PRODUCTS.map((p) => ({
      id: p.id,
      name: p.name,
      slug: p.slug,
      price: p.price,
      compare_at_price: p.compare_at_price,
      active: p.active ?? true,
      featured: p.featured ?? false,
      is_new: p.is_new ?? false,
      categories: p.categories ? { name: p.categories.name } : null,
    })),
  });

  const filtered = products.filter((p: any) => {
    const q = search.toLowerCase().trim();
    if (!q) return true;
    return (
      p.name.toLowerCase().includes(q) ||
      p.slug.toLowerCase().includes(q) ||
      p.categories?.name?.toLowerCase().includes(q)
    );
  });

  return (
    <AdminLayout>
      <div className="mb-6 flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <h1 className="text-2xl font-bold">Produtos ({filtered.length})</h1>
          <p className="text-sm text-muted-foreground">
            Gerencie todos os 72 produtos do catálogo NEXLAR
          </p>
        </div>
        <Button asChild className="gap-2 shrink-0">
          <Link to="/admin/produto/$id" params={{ id: "novo" }}>
            <Plus className="h-4 w-4" />
            Novo produto
          </Link>
        </Button>
      </div>

      <div className="mb-4 relative">
        <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
        <Input
          placeholder="Buscar produto por nome, categoria ou slug..."
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          className="pl-9"
        />
      </div>

      {isLoading && products.length === 0 ? (
        <div className="flex items-center justify-center py-16">
          <Loader2 className="h-7 w-7 animate-spin text-muted-foreground" />
        </div>
      ) : filtered.length === 0 ? (
        <div className="flex flex-col items-center justify-center gap-4 rounded-2xl border border-dashed border-border py-20 text-center">
          <Package className="h-10 w-10 text-muted-foreground opacity-40" />
          <div>
            <p className="font-medium">Nenhum produto encontrado</p>
            <p className="text-sm text-muted-foreground">
              Tente outra busca ou adicione um novo produto
            </p>
          </div>
        </div>
      ) : (
        <div className="overflow-hidden rounded-xl border border-border bg-card">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-border bg-muted/40">
                <th className="px-4 py-3 text-left font-medium text-muted-foreground">Produto</th>
                <th className="px-4 py-3 text-left font-medium text-muted-foreground">Categoria</th>
                <th className="px-4 py-3 text-right font-medium text-muted-foreground">Preço</th>
                <th className="px-4 py-3 text-center font-medium text-muted-foreground">Status</th>
                <th className="px-4 py-3 text-center font-medium text-muted-foreground">Tags</th>
                <th className="px-4 py-3" />
              </tr>
            </thead>
            <tbody>
              {filtered.map((product: any) => (
                <tr
                  key={product.id || product.slug}
                  className="border-b border-border last:border-0 hover:bg-muted/20 transition-colors"
                >
                  <td className="px-4 py-3">
                    <div>
                      <p className="font-medium">{product.name}</p>
                      <p className="text-xs text-muted-foreground">{product.slug}</p>
                    </div>
                  </td>
                  <td className="px-4 py-3 text-muted-foreground">
                    {product.categories?.name ?? "—"}
                  </td>
                  <td className="px-4 py-3 text-right">
                    <div>
                      <p className="font-semibold">{brl(product.price)}</p>
                      {product.compare_at_price && (
                        <p className="text-xs text-muted-foreground line-through">
                          {brl(product.compare_at_price)}
                        </p>
                      )}
                    </div>
                  </td>
                  <td className="px-4 py-3 text-center">
                    {product.active !== false ? (
                      <span className="inline-flex items-center gap-1 text-green-600 text-xs font-medium">
                        <CheckCircle className="h-3.5 w-3.5" />
                        Ativo
                      </span>
                    ) : (
                      <span className="inline-flex items-center gap-1 text-muted-foreground text-xs font-medium">
                        <XCircle className="h-3.5 w-3.5" />
                        Inativo
                      </span>
                    )}
                  </td>
                  <td className="px-4 py-3 text-center">
                    <div className="flex justify-center gap-1 flex-wrap">
                      {product.featured && <Badge variant="secondary" className="text-[10px]">Destaque</Badge>}
                      {product.is_new && <Badge className="text-[10px]">Novo</Badge>}
                    </div>
                  </td>
                  <td className="px-4 py-3 text-right">
                    <Button asChild size="sm" variant="outline" className="gap-1.5">
                      <Link to="/admin/produto/$id" params={{ id: product.id || product.slug }}>
                        <Pencil className="h-3.5 w-3.5" />
                        Editar
                      </Link>
                    </Button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </AdminLayout>
  );
}
