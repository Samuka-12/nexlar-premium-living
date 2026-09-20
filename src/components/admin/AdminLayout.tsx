import { Link, useNavigate } from "@tanstack/react-router";
import { LayoutDashboard, Package, LogOut, ChevronRight } from "lucide-react";
import { useAuth } from "@/lib/auth";
import { Button } from "@/components/ui/button";

const navItems = [
  { to: "/admin", label: "Dashboard", icon: LayoutDashboard, exact: true },
  { to: "/admin/produtos", label: "Produtos", icon: Package },
];

export function AdminLayout({ children }: { children: React.ReactNode }) {
  const { user, signOut } = useAuth();
  const navigate = useNavigate();

  async function handleSignOut() {
    await signOut();
    navigate({ to: "/" });
  }

  return (
    <div className="flex min-h-screen bg-muted/30">
      {/* Sidebar */}
      <aside className="fixed inset-y-0 left-0 z-30 flex w-60 flex-col border-r border-border bg-background">
        <div className="flex items-center gap-2 border-b border-border px-5 py-4">
          <span className="text-lg font-bold tracking-tight">NEXLAR</span>
          <span className="rounded-full bg-primary px-2 py-0.5 text-[10px] font-semibold text-primary-foreground">
            Admin
          </span>
        </div>

        <nav className="flex-1 space-y-1 px-3 py-4">
          {navItems.map((item) => (
            <Link
              key={item.to}
              to={item.to}
              className="flex items-center gap-3 rounded-lg px-3 py-2.5 text-sm font-medium text-muted-foreground transition-colors hover:bg-accent hover:text-accent-foreground [&.active]:bg-accent [&.active]:text-accent-foreground"
            >
              <item.icon className="h-4 w-4 shrink-0" />
              {item.label}
              <ChevronRight className="ml-auto h-3 w-3 opacity-40" />
            </Link>
          ))}
        </nav>

        <div className="border-t border-border p-4">
          <p className="mb-2 truncate text-xs text-muted-foreground">{user?.email}</p>
          <Button variant="outline" size="sm" className="w-full gap-2" onClick={handleSignOut}>
            <LogOut className="h-3.5 w-3.5" />
            Sair
          </Button>
        </div>
      </aside>

      {/* Main content */}
      <main className="ml-60 flex-1 overflow-auto">
        <div className="mx-auto max-w-6xl px-6 py-8">{children}</div>
      </main>
    </div>
  );
}
