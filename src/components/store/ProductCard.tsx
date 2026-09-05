import { Link } from "@tanstack/react-router";
import { Heart, ShoppingCart, Star } from "lucide-react";
import { Button } from "@/components/ui/button";
import { brl, discountPercent, installment, pixPrice } from "@/lib/format";
import { primaryImage, type Product } from "@/lib/types";
import { useCart } from "@/lib/cart";
import { useFavorites } from "@/lib/favorites";
import { cn } from "@/lib/utils";

export function ProductCard({ product, layout = "grid" }: { product: Product; layout?: "grid" | "list" }) {
  const cart = useCart();
  const { ids, toggle } = useFavorites();
  const image = primaryImage(product);
  const off = discountPercent(product.price, product.compare_at_price);
  const pix = pixPrice(product.price, product.pix_discount_percent);
  const isFavorite = ids.has(product.id);

  const addToCart = () =>
    cart.add({
      productId: product.id,
      slug: product.slug,
      name: product.name,
      image,
      price: product.price,
    });

  return (
    <article
      className={cn(
        "group relative flex flex-col overflow-hidden rounded-2xl border border-border bg-card transition-shadow hover:shadow-[var(--shadow-lift)]",
        layout === "list" && "sm:flex-row",
      )}
    >
      <div
        className={cn(
          "relative aspect-square overflow-hidden bg-muted",
          layout === "list" && "sm:w-56 sm:shrink-0",
        )}
      >
        <Link to="/produto/$slug" params={{ slug: product.slug }} aria-label={product.name}>
          <img
            src={image}
            alt={product.name}
            loading="lazy"
            className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-105"
          />
        </Link>
        <div className="absolute left-3 top-3 flex flex-col gap-1">
          {off > 0 && (
            <span className="rounded-full bg-primary px-2 py-0.5 text-xs font-semibold text-primary-foreground">
              -{off}%
            </span>
          )}
          {product.free_shipping && (
            <span className="rounded-full bg-ink px-2 py-0.5 text-xs font-medium text-ink-foreground">
              Frete grátis
            </span>
          )}
          {product.is_new && (
            <span className="rounded-full border border-border bg-background px-2 py-0.5 text-xs font-medium">
              Lançamento
            </span>
          )}
        </div>
        <button
          type="button"
          onClick={() => toggle(product.id)}
          aria-label={isFavorite ? "Remover dos favoritos" : "Adicionar aos favoritos"}
          className="absolute right-3 top-3 grid h-9 w-9 place-items-center rounded-full border border-border bg-background/90 text-muted-foreground transition-colors hover:text-primary"
        >
          <Heart className={cn("h-4 w-4", isFavorite && "fill-primary text-primary")} />
        </button>
      </div>

      <div className="flex flex-1 flex-col gap-3 p-4">
        <Link
          to="/produto/$slug"
          params={{ slug: product.slug }}
          className="line-clamp-2 text-sm font-medium leading-snug hover:text-primary"
        >
          {product.name}
        </Link>

        <div className="flex items-center gap-1 text-xs text-muted-foreground">
          <Star className="h-3.5 w-3.5 fill-primary text-primary" />
          <span className="font-medium text-foreground">{product.rating.toFixed(1)}</span>
          <span>({product.reviews_count})</span>
        </div>

        {layout === "list" && product.short_description && (
          <p className="line-clamp-2 text-sm text-muted-foreground">{product.short_description}</p>
        )}

        <div className="mt-auto space-y-1">
          {product.compare_at_price && product.compare_at_price > product.price && (
            <p className="text-xs text-muted-foreground line-through">
              {brl(product.compare_at_price)}
            </p>
          )}
          <p className="text-lg font-semibold text-primary">
            {brl(pix)} <span className="text-xs font-normal text-muted-foreground">no PIX</span>
          </p>
          <p className="text-xs text-muted-foreground">
            ou {brl(product.price)} em até 8x de {brl(installment(product.price))} sem juros
          </p>
        </div>

        <Button onClick={addToCart} className="mt-2 w-full gap-2">
          <ShoppingCart className="h-4 w-4" /> Adicionar
        </Button>
      </div>
    </article>
  );
}

export function ProductCardSkeleton() {
  return (
    <div className="animate-pulse overflow-hidden rounded-2xl border border-border">
      <div className="aspect-square bg-muted" />
      <div className="space-y-2 p-4">
        <div className="h-4 w-3/4 rounded bg-muted" />
        <div className="h-4 w-1/2 rounded bg-muted" />
        <div className="h-9 w-full rounded bg-muted" />
      </div>
    </div>
  );
}
