import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { Newspaper } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { EmptyState } from "@/components/store/EmptyState";
import { Badge } from "@/components/ui/badge";
import { supabase } from "@/integrations/supabase/client";
import type { Post } from "@/lib/types";
import { dateBR } from "@/lib/format";

export const Route = createFileRoute("/blog/")({
  head: () => ({
    meta: [
      { title: "Blog NEXLAR | Guias de casa, cozinha e organização" },
      {
        name: "description",
        content:
          "Dicas práticas de cozinha, organização, churrasco e cuidados com utensílios escritas pelo time NEXLAR.",
      },
      { property: "og:title", content: "Blog NEXLAR | Guias de casa e cozinha" },
      { property: "og:description", content: "Conteúdo prático para viver melhor em casa." },
    ],
  }),
  component: BlogIndex,
});

function BlogIndex() {
  const { data: posts = [], isLoading } = useQuery({
    queryKey: ["posts"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("posts")
        .select("*")
        .eq("published", true)
        .order("published_at", { ascending: false });
      if (error) throw error;
      return (data ?? []) as Post[];
    },
  });

  return (
    <StoreLayout>
      <div className="container-page py-10">
        <header className="mb-10 max-w-2xl">
          <h1 className="text-3xl font-semibold">Blog NEXLAR</h1>
          <p className="mt-2 text-muted-foreground">
            Guias práticos sobre cozinha, organização e cuidado com a casa.
          </p>
        </header>

        {isLoading ? (
          <div className="grid gap-6 md:grid-cols-3">
            {Array.from({ length: 3 }).map((_, i) => (
              <div key={i} className="h-72 animate-pulse rounded-2xl bg-muted" />
            ))}
          </div>
        ) : posts.length === 0 ? (
          <EmptyState
            icon={Newspaper}
            title="Nenhum artigo publicado"
            description="Estamos preparando novos conteúdos. Volte em breve."
          />
        ) : (
          <div className="grid gap-6 md:grid-cols-3">
            {posts.map((post) => (
              <Link
                key={post.id}
                to="/blog/$slug"
                params={{ slug: post.slug }}
                className="group overflow-hidden rounded-2xl border border-border bg-card transition-shadow hover:shadow-[var(--shadow-lift)]"
              >
                <div className="aspect-[16/9] overflow-hidden bg-muted">
                  {post.cover_url && (
                    <img
                      src={post.cover_url}
                      alt={post.title}
                      loading="lazy"
                      className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-105"
                    />
                  )}
                </div>
                <div className="space-y-2 p-5">
                  <div className="flex flex-wrap gap-1.5">
                    {(post.tags ?? []).slice(0, 2).map((tag) => (
                      <Badge key={tag} variant="secondary">
                        {tag}
                      </Badge>
                    ))}
                  </div>
                  <h2 className="font-semibold group-hover:text-primary">{post.title}</h2>
                  <p className="line-clamp-3 text-sm text-muted-foreground">{post.excerpt}</p>
                  <p className="text-xs text-muted-foreground">
                    {post.author} · {dateBR(post.published_at)}
                  </p>
                </div>
              </Link>
            ))}
          </div>
        )}
      </div>
    </StoreLayout>
  );
}
