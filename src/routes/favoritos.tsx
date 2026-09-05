import { createFileRoute, Link } from "@tanstack/react-router";
import { HeartOff } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { ProductCard, ProductCardSkeleton } from "@/components/store/ProductCard";
import { EmptyState } from "@/components/store/EmptyState";
import { Button } from "@/components/ui/button";
import { useFavorites } from "@/lib/favorites";

export const Route = createFileRoute("/favoritos")({
  head: () => ({
    meta: [
      { title: "Meus favoritos | NEXLAR" },
      { name: "description", content: "Os produtos NEXLAR que você salvou para comprar depois." },
      { property: "og:title", content: "Meus favoritos | NEXLAR" },
      { property: "og:description", content: "Sua lista de desejos na NEXLAR." },
      { name: "robots", content: "noindex" },
    ],
  }),
  component: FavoritesPage,
});

function FavoritesPage() {
  const { favorites, isLoading, isSignedIn } = useFavorites();

  return (
    <StoreLayout>
      <div className="container-page py-10">
        <h1 className="mb-8 text-2xl font-semibold">Meus favoritos</h1>

        {!isSignedIn ? (
          <EmptyState
            icon={HeartOff}
            title="Entre para ver seus favoritos"
            description="Sua lista de desejos fica salva na sua conta NEXLAR."
            action={
              <Button asChild>
                <Link to="/entrar">Entrar na conta</Link>
              </Button>
            }
          />
        ) : isLoading ? (
          <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
            {Array.from({ length: 4 }).map((_, i) => (
              <ProductCardSkeleton key={i} />
            ))}
          </div>
        ) : favorites.length === 0 ? (
          <EmptyState
            icon={HeartOff}
            title="Nenhum favorito ainda"
            description="Toque no coração dos produtos que você quer guardar para depois."
            action={
              <Button asChild>
                <Link to="/">Explorar a loja</Link>
              </Button>
            }
          />
        ) : (
          <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
            {favorites.map((product) => (
              <ProductCard key={product.id} product={product} />
            ))}
          </div>
        )}
      </div>
    </StoreLayout>
  );
}
