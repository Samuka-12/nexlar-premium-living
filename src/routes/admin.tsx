import { useEffect } from "react";
import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { Package, Plus, Pencil, Loader2, CheckCircle, XCircle } from "lucide-react";
import { AdminLayout } from "@/components/admin/AdminLayout";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/lib/auth";
import { brl } from "@/lib/format";

export const Route = createFileRoute("/admin")({
  head: () => ({
    meta: [{ title: "Admin | NEXLAR" }],
  }),
  component: AdminPage,
});

function AdminPage() {
  const { user, loading, isAdmin } = useAuth();
  const navigate = useNavigate();

  useEffect(() => {
    if (!loading && !user) navigate({ to: "/entrar" });
    if (!loading && user && !isAdmin) navigate({ to: "/" });
  }, [loading, user, isAdmin, navigate]);

  const { data: products = [], isLoading } = useQuery({
    queryKey: ["admin-products"],
    enabled: isAdmin,
    queryFn: async () => {
      const { data, error } = await supabase
        .from("products")
        .select("id, name, slug, price, compare_at_price, active, featured, is_new, categories(name)")
        .order("created_at", { ascending: false });
      if (error) throw error;
      return data ?? [];
    },
  });

  if (loading) {
    return (
      <div className="flex min-h-screen items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
      </div>
    );
  }

  if (!isAdmin) return null;

  return (
    <AdminLayout>
      <div className="mb-6 flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold">Produtos</h1>
          <p className="text-sm text-muted-foreground">
            Gerencie todos os produtos do catálogo NEXLAR
          </p>
        </div>
        <Button asChild className="gap-2">
          <Link to="/admin/produto/$id" params={{ id: "novo" }}>
            <Plus className="h-4 w-4" />
            Novo produto
          </Link>
        </Button>
      </div>

      {isLoading ? (
        <div className="flex items-center justify-center py-16">
          <Loader2 className="h-7 w-7 animate-spin text-muted-foreground" />
        </div>
      ) : products.length === 0 ? (
        <div className="flex flex-col items-center justify-center gap-4 rounded-2xl border border-dashed border-border py-20 text-center">
          <Package className="h-10 w-10 text-muted-foreground opacity-40" />
          <div>
            <p className="font-medium">Nenhum produto cadastrado</p>
            <p className="text-sm text-muted-foreground">
              Clique em "Novo produto" para começar
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
              {products.map((product: any) => (
                <tr
                  key={product.id}
                  className="border-b border-border last:border-0 hover:bg-muted/20 transition-colors"
                >
                  <td className="px-4 py-3">
                    <div>
                      <p className="font-medium">{product.name}</p>
                      <p className="text-xs text-muted-foreground">{product.slug}</p>
                    </div>
                  </td>
                  <td className="px-4 py-3 text-muted-foreground">
                    {(product.categories as any)?.name ?? "—"}
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
                    {product.active ? (
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
                  <td className="px-4 py-3">
                    <Button asChild size="sm" variant="outline" className="gap-1.5">
                      <Link to="/admin/produto/$id" params={{ id: product.id }}>
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
