import { Link } from "@tanstack/react-router";
import { Minus, Plus, ShoppingBag, Trash2 } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import { Sheet, SheetContent, SheetHeader, SheetTitle } from "@/components/ui/sheet";
import { useCart } from "@/lib/cart";
import { brl, pixPrice } from "@/lib/format";

const FREE_SHIPPING_THRESHOLD = 299;

export function CartDrawer() {
  const cart = useCart();
  const remaining = Math.max(0, FREE_SHIPPING_THRESHOLD - cart.subtotal);

  return (
    <Sheet open={cart.isOpen} onOpenChange={(open) => (open ? cart.open() : cart.close())}>
      <SheetContent className="flex w-full flex-col gap-0 p-0 sm:max-w-md">
        <SheetHeader className="border-b px-5 py-4">
          <SheetTitle className="text-left text-lg">Meu carrinho</SheetTitle>
        </SheetHeader>

        {cart.items.length === 0 ? (
          <div className="flex flex-1 flex-col items-center justify-center gap-3 px-6 text-center">
            <ShoppingBag className="h-10 w-10 text-muted-foreground" />
            <p className="font-medium">Seu carrinho está vazio</p>
            <p className="text-sm text-muted-foreground">
              Explore nossas categorias e encontre o essencial para a sua casa.
            </p>
            <Button asChild className="mt-2" onClick={cart.close}>
              <Link to="/categoria/$slug" params={{ slug: "panelas" }}>
                Começar a comprar
              </Link>
            </Button>
          </div>
        ) : (
          <>
            <div className="flex-1 space-y-4 overflow-y-auto px-5 py-4">
              {cart.items.map((item) => (
                <div key={`${item.productId}-${item.variant ?? ""}`} className="flex gap-3">
                  <img
                    src={item.image}
                    alt={item.name}
                    loading="lazy"
                    className="h-20 w-20 rounded-xl border border-border object-cover"
                  />
                  <div className="flex-1">
                    <Link
                      to="/produto/$slug"
                      params={{ slug: item.slug }}
                      onClick={cart.close}
                      className="line-clamp-2 text-sm font-medium hover:text-primary"
                    >
                      {item.name}
                    </Link>
                    {item.variant && (
                      <p className="text-xs text-muted-foreground">Cor: {item.variant}</p>
                    )}
                    <p className="mt-1 text-sm font-semibold text-primary">
                      {brl(pixPrice(item.price))} no PIX
                    </p>
                    <div className="mt-2 flex items-center gap-2">
                      <div className="flex items-center rounded-lg border border-border">
                        <button
                          type="button"
                          aria-label="Diminuir quantidade"
                          className="grid h-8 w-8 place-items-center text-muted-foreground hover:text-foreground"
                          onClick={() =>
                            cart.setQuantity(item.productId, item.quantity - 1, item.variant)
                          }
                        >
                          <Minus className="h-3.5 w-3.5" />
                        </button>
                        <span className="w-8 text-center text-sm">{item.quantity}</span>
                        <button
                          type="button"
                          aria-label="Aumentar quantidade"
                          className="grid h-8 w-8 place-items-center text-muted-foreground hover:text-foreground"
                          onClick={() =>
                            cart.setQuantity(item.productId, item.quantity + 1, item.variant)
                          }
                        >
                          <Plus className="h-3.5 w-3.5" />
                        </button>
                      </div>
                      <button
                        type="button"
                        aria-label="Remover item"
                        onClick={() => cart.remove(item.productId, item.variant)}
                        className="text-muted-foreground hover:text-destructive"
                      >
                        <Trash2 className="h-4 w-4" />
                      </button>
                    </div>
                  </div>
                </div>
              ))}
            </div>

            <div className="space-y-4 border-t px-5 py-4">
              <div className="space-y-2">
                <p className="text-center text-sm">
                  {remaining > 0 ? (
                    <>
                      Faltam <strong>{brl(remaining)}</strong> para ganhar{" "}
                      <span className="font-semibold text-primary">frete grátis</span>
                    </>
                  ) : (
                    <>
                      Você ganhou <span className="font-semibold text-primary">frete grátis</span>{" "}
                      nesta compra
                    </>
                  )}
                </p>
                <Progress value={Math.min(100, (cart.subtotal / FREE_SHIPPING_THRESHOLD) * 100)} />
              </div>

              <div className="flex items-baseline justify-between">
                <span className="text-sm text-muted-foreground">Subtotal</span>
                <span className="text-xl font-semibold">{brl(cart.subtotal)}</span>
              </div>

              <Button asChild size="lg" className="w-full" onClick={cart.close}>
                <Link to="/checkout">Avançar para o checkout</Link>
              </Button>
              <Button variant="ghost" className="w-full" onClick={cart.close}>
                Continuar comprando
              </Button>
            </div>
          </>
        )}
      </SheetContent>
    </Sheet>
  );
}
