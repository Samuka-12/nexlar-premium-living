import { Link } from "@tanstack/react-router";
import { CreditCard, Lock, RefreshCw, Truck } from "lucide-react";
import { Logo } from "@/components/brand/Logo";
import { useCategories } from "@/components/store/Header";

const benefits = [
  { icon: Truck, title: "Frete grátis", text: "Em compras acima de R$ 299" },
  { icon: CreditCard, title: "Até 8x sem juros", text: "PIX, cartão ou boleto" },
  { icon: RefreshCw, title: "Troca fácil", text: "30 dias para trocar" },
  { icon: Lock, title: "Compra segura", text: "Ambiente 100% protegido" },
];

export function Footer() {
  const { data: categories = [] } = useCategories();

  return (
    <footer className="mt-20 border-t border-border bg-ink text-ink-foreground">
      <div className="container-page grid gap-6 border-b border-white/10 py-10 sm:grid-cols-2 lg:grid-cols-4">
        {benefits.map((benefit) => (
          <div key={benefit.title} className="flex items-center gap-3">
            <span className="grid h-11 w-11 place-items-center rounded-xl bg-white/10">
              <benefit.icon className="h-5 w-5" />
            </span>
            <div>
              <p className="text-sm font-semibold">{benefit.title}</p>
              <p className="text-xs text-white/70">{benefit.text}</p>
            </div>
          </div>
        ))}
      </div>

      <div className="container-page grid gap-10 py-12 md:grid-cols-4">
        <div className="space-y-4">
          <Logo variant="mono" className="text-ink-foreground" />
          <p className="text-sm text-white/70">
            Design funcional para casa, cozinha e convivência. Produtos pensados para durar.
          </p>
        </div>

        <div>
          <h3 className="mb-3 text-sm font-semibold">Departamentos</h3>
          <ul className="space-y-2 text-sm text-white/70">
            {categories.slice(0, 6).map((category) => (
              <li key={category.id}>
                <Link
                  to="/categoria/$slug"
                  params={{ slug: category.slug }}
                  className="hover:text-white"
                >
                  {category.name}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        <div>
          <h3 className="mb-3 text-sm font-semibold">Institucional</h3>
          <ul className="space-y-2 text-sm text-white/70">
            <li>
              <Link to="/blog" className="hover:text-white">
                Blog NEXLAR
              </Link>
            </li>
            <li>
              <Link to="/minha-conta" className="hover:text-white">
                Minha conta
              </Link>
            </li>
            <li>
              <Link to="/favoritos" className="hover:text-white">
                Favoritos
              </Link>
            </li>
            <li>
              <Link to="/carrinho" className="hover:text-white">
                Carrinho
              </Link>
            </li>
          </ul>
        </div>

        <div>
          <h3 className="mb-3 text-sm font-semibold">Atendimento</h3>
          <p className="text-sm text-white/70">Segunda a sexta, das 8h às 18h</p>
          <p className="mt-2 text-sm text-white/70">0800 123 4567</p>
          <p className="text-sm text-white/70">contato@nexlar.com.br</p>
        </div>
      </div>

      <div className="border-t border-white/10 py-6 text-center text-xs text-white/50">
        © {new Date().getFullYear()} NEXLAR Casa e Cozinha · CNPJ 00.000.000/0001-00
      </div>
    </footer>
  );
}
