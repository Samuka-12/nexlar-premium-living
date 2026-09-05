import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { useEffect } from "react";
import { Package, UserRound } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { EmptyState } from "@/components/store/EmptyState";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/lib/auth";
import { brl, dateBR } from "@/lib/format";
import type { Order } from "@/lib/types";

export const Route = createFileRoute("/conta")({
  head: () => ({
    meta: [
      { title: "Minha conta | NEXLAR" },
      { name: "description", content: "Acompanhe pedidos e dados da sua conta NEXLAR." },
      { property: "og:title", content: "Minha conta | NEXLAR" },
      { property: "og:description", content: "Área do cliente NEXLAR." },
      { name: "robots", content: "noindex" },
    ],
  }),
  component: AccountPage,
});

const statusLabel: Record<string, string> = {
  pending: "Aguardando pagamento",
  paid: "Pago",
  shipped: "Enviado",
  delivered: "Entregue",
  canceled: "Cancelado",
};

function AccountPage() {
  const { user, loading, signOut } = useAuth();
  const navigate = useNavigate();

  useEffect(() => {
    if (!loading && !user) navigate({ to: "/entrar" });
  }, [loading, user, navigate]);

  const { data: orders = [] } = useQuery({
    queryKey: ["orders", user?.id],
    enabled: Boolean(user),
    queryFn: async () => {
      const { data, error } = await supabase
        .from("orders")
        .select("*, order_items(*)")
        .order("created_at", { ascending: false });
      if (error) throw error;
      return (data ?? []) as unknown as Order[];
    },
  });

  return (
    <StoreLayout>
      <div className="container-page py-10">
        <div className="mb-8 flex flex-wrap items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-semibold">Minha conta</h1>
            <p className="text-sm text-muted-foreground">{user?.email}</p>
          </div>
          <div className="flex gap-2">
            <Button asChild variant="outline">
              <Link to="/favoritos">Meus favoritos</Link>
            </Button>
            <Button variant="ghost" onClick={() => signOut()}>
              Sair
            </Button>
          </div>
        </div>

        <h2 className="mb-4 flex items-center gap-2 text-lg font-semibold">
          <Package className="h-5 w-5 text-primary" /> Meus pedidos
        </h2>

        {orders.length === 0 ? (
          <EmptyState
            icon={UserRound}
            title="Você ainda não fez pedidos"
            description="Quando comprar na NEXLAR, todos os pedidos aparecerão aqui."
            action={
              <Button asChild>
                <Link to="/">Começar a comprar</Link>
              </Button>
            }
          />
        ) : (
          <div className="space-y-4">
            {orders.map((order) => (
              <article key={order.id} className="rounded-2xl border border-border p-5">
                <div className="flex flex-wrap items-center justify-between gap-3">
                  <div>
                    <p className="font-medium">Pedido {order.order_number}</p>
                    <p className="text-xs text-muted-foreground">{dateBR(order.created_at)}</p>
                  </div>
                  <Badge variant="secondary">{statusLabel[order.status] ?? order.status}</Badge>
                  <p className="font-semibold">{brl(order.total)}</p>
                </div>
                <ul className="mt-4 space-y-2">
                  {(order.order_items ?? []).map((item) => (
                    <li key={item.id} className="flex items-center gap-3 text-sm">
                      {item.image_url && (
                        <img
                          src={item.image_url}
                          alt={item.product_name}
                          loading="lazy"
                          className="h-12 w-12 rounded-lg object-cover"
                        />
                      )}
                      <span className="flex-1">{item.product_name}</span>
                      <span className="text-muted-foreground">
                        {item.quantity}x {brl(item.unit_price)}
                      </span>
                    </li>
                  ))}
                </ul>
              </article>
            ))}
          </div>
        )}
      </div>
    </StoreLayout>
  );
}
