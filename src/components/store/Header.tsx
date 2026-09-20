import { useEffect, useState } from "react";
import { Link, useNavigate } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { Heart, Menu, Search, ShoppingCart, User, X } from "lucide-react";
import { Logo } from "@/components/brand/Logo";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Sheet, SheetContent, SheetHeader, SheetTitle, SheetTrigger } from "@/components/ui/sheet";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { supabase } from "@/integrations/supabase/client";
import { useCart } from "@/lib/cart";
import { useAuth } from "@/lib/auth";
import type { Category } from "@/lib/types";
import { getLocalCategories } from "@/lib/catalog-data";

export function useCategories() {
  return useQuery({
    queryKey: ["categories"],
    staleTime: Infinity,
    queryFn: async () => {
      return getLocalCategories();
    },
    initialData: getLocalCategories(),
  });
}

export function Header() {
  const cart = useCart();
  const navigate = useNavigate();
  const { user, isAdmin, signOut } = useAuth();
  const { data: categories = [] } = useCategories();
  const [term, setTerm] = useState("");
  const [menuOpen, setMenuOpen] = useState(false);
  const [mounted, setMounted] = useState(false);

  useEffect(() => setMounted(true), []);

  const submitSearch = (event: React.FormEvent) => {
    event.preventDefault();
    if (!term.trim()) return;
    navigate({ to: "/busca", search: { q: term.trim() } });
  };

  return (
    <header className="sticky top-0 z-40 border-b border-border bg-background/95 backdrop-blur">
      <div className="bg-ink py-2 text-center text-xs text-ink-foreground">
        Frete grátis acima de R$ 299 · até 8x sem juros · troca fácil em 30 dias
      </div>

      <div className="container-page flex h-16 items-center gap-3">
        <Sheet open={menuOpen} onOpenChange={setMenuOpen}>
          <SheetTrigger asChild>
            <Button variant="ghost" size="icon" aria-label="Abrir menu de departamentos">
              <Menu className="h-5 w-5" />
            </Button>
          </SheetTrigger>
          <SheetContent side="left" className="w-80 p-0">
            <SheetHeader className="border-b px-5 py-4">
              <SheetTitle className="text-left">Todos os departamentos</SheetTitle>
            </SheetHeader>
            <nav className="flex flex-col p-2">
              {categories.map((category) => (
                <Link
                  key={category.id}
                  to="/categoria/$slug"
                  params={{ slug: category.slug }}
                  onClick={() => setMenuOpen(false)}
                  className="rounded-lg px-3 py-3 text-sm hover:bg-accent"
                >
                  {category.name}
                </Link>
              ))}
              <div className="my-2 h-px bg-border" />
              <Link to="/blog" onClick={() => setMenuOpen(false)} className="rounded-lg px-3 py-3 text-sm hover:bg-accent">
                Blog NEXLAR
              </Link>
              <Link to="/favoritos" onClick={() => setMenuOpen(false)} className="rounded-lg px-3 py-3 text-sm hover:bg-accent">
                Favoritos
              </Link>
            </nav>
          </SheetContent>
        </Sheet>

        <Link to="/" aria-label="Página inicial NEXLAR">
          <Logo />
        </Link>

        <form onSubmit={submitSearch} className="relative hidden flex-1 md:block">
          <Search className="pointer-events-none absolute left-4 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
          <Input
            value={term}
            onChange={(event) => setTerm(event.target.value)}
            placeholder="O que você procura hoje?"
            aria-label="Buscar produtos"
            className="h-11 rounded-full pl-11 pr-11"
          />
          {term && (
            <button
              type="button"
              onClick={() => setTerm("")}
              aria-label="Limpar busca"
              className="absolute right-4 top-1/2 -translate-y-1/2 text-muted-foreground"
            >
              <X className="h-4 w-4" />
            </button>
          )}
        </form>

        <div className="ml-auto flex items-center gap-1">
          <Button asChild variant="ghost" size="icon" aria-label="Favoritos">
            <Link to="/favoritos">
              <Heart className="h-5 w-5" />
            </Link>
          </Button>

          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <Button variant="ghost" className="gap-2 px-2" aria-label="Minha conta">
                <User className="h-5 w-5" />
                <span className="hidden text-sm lg:inline">
                  {user ? "Minha conta" : "Entrar"}
                </span>
              </Button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" className="w-52">
              {user ? (
                <>
                  <DropdownMenuItem asChild>
                    <Link to="/conta">Meus pedidos</Link>
                  </DropdownMenuItem>
                  {isAdmin && (
                    <DropdownMenuItem asChild>
                      <Link to="/admin">Painel administrativo</Link>
                    </DropdownMenuItem>
                  )}
                  <DropdownMenuSeparator />
                  <DropdownMenuItem onClick={() => void signOut()}>Sair</DropdownMenuItem>
                </>
              ) : (
                <>
                  <DropdownMenuItem asChild>
                    <Link to="/entrar">Entrar</Link>
                  </DropdownMenuItem>
                  <DropdownMenuItem asChild>
                    <Link to="/entrar" search={{ modo: "cadastro" }}>
                      Criar conta
                    </Link>
                  </DropdownMenuItem>
                </>
              )}
            </DropdownMenuContent>
          </DropdownMenu>

          <Button variant="ghost" className="relative gap-2 px-2" onClick={cart.open} aria-label="Meu carrinho">
            <ShoppingCart className="h-5 w-5" />
            <span className="hidden text-sm lg:inline">Carrinho</span>
            {mounted && cart.count > 0 && (
              <span className="absolute -right-0.5 top-1 grid h-5 min-w-5 place-items-center rounded-full bg-primary px-1 text-[11px] font-semibold text-primary-foreground">
                {cart.count}
              </span>
            )}
          </Button>
        </div>
      </div>

      <form onSubmit={submitSearch} className="container-page relative pb-3 md:hidden">
        <Search className="pointer-events-none absolute left-8 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
        <Input
          value={term}
          onChange={(event) => setTerm(event.target.value)}
          placeholder="O que você procura hoje?"
          aria-label="Buscar produtos"
          className="h-11 rounded-full pl-11"
        />
      </form>

      <nav className="hidden border-t border-border bg-background lg:block">
        <div className="container-page flex h-11 items-center gap-6 overflow-x-auto text-sm">
          {categories.map((category) => (
            <Link
              key={category.id}
              to="/categoria/$slug"
              params={{ slug: category.slug }}
              className="whitespace-nowrap text-muted-foreground transition-colors hover:text-primary"
              activeProps={{ className: "text-primary font-medium" }}
            >
              {category.name}
            </Link>
          ))}
          <Link to="/blog" className="whitespace-nowrap text-muted-foreground hover:text-primary">
            Blog
          </Link>
        </div>
      </nav>
    </header>
  );
}
