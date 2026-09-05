import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { Newspaper } from "lucide-react";
import { StoreLayout } from "@/components/store/StoreLayout";
import { EmptyState } from "@/components/store/EmptyState";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { supabase } from "@/integrations/supabase/client";
import type { Post } from "@/lib/types";
import { dateBR } from "@/lib/format";

export const Route = createFileRoute("/blog/$slug")({
  head: ({ params }) => {
    const name = params.slug.replace(/-/g, " ");
    const title = `${name.charAt(0).toUpperCase()}${name.slice(1)} | Blog NEXLAR`;
    return {
      meta: [
        { title },
        { name: "description", content: `Artigo do blog NEXLAR sobre ${name}.` },
        { property: "og:title", content: title },
        { property: "og:description", content: `Artigo do blog NEXLAR sobre ${name}.` },
        { property: "og:type", content: "article" },
      ],
    };
  },
  component: BlogPost,
});

function BlogPost() {
  const { slug } = Route.useParams();

  const { data: post, isLoading } = useQuery({
    queryKey: ["post", slug],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("posts")
        .select("*")
        .eq("slug", slug)
        .eq("published", true)
        .maybeSingle();
      if (error) throw error;
      return (data ?? null) as Post | null;
    },
  });

  if (isLoading) {
    return (
      <StoreLayout>
        <div className="container-page py-12">
          <div className="mx-auto h-96 max-w-3xl animate-pulse rounded-2xl bg-muted" />
        </div>
      </StoreLayout>
    );
  }

  if (!post) {
    return (
      <StoreLayout>
        <div className="container-page py-20">
          <EmptyState
            icon={Newspaper}
            title="Artigo não encontrado"
            description="Esse conteúdo pode ter sido removido ou despublicado."
            action={
              <Button asChild>
                <Link to="/blog">Ver todos os artigos</Link>
              </Button>
            }
          />
        </div>
      </StoreLayout>
    );
  }

  return (
    <StoreLayout>
      <article className="container-page py-10">
        <div className="mx-auto max-w-3xl">
          <Link to="/blog" className="text-sm text-primary hover:underline">
            ← Voltar para o blog
          </Link>
          <h1 className="mt-4 text-3xl font-semibold md:text-4xl">{post.title}</h1>
          <p className="mt-2 text-sm text-muted-foreground">
            {post.author} · {dateBR(post.published_at)}
          </p>
          <div className="mt-3 flex flex-wrap gap-1.5">
            {(post.tags ?? []).map((tag) => (
              <Badge key={tag} variant="secondary">
                {tag}
              </Badge>
            ))}
          </div>

          {post.cover_url && (
            <img
              src={post.cover_url}
              alt={post.title}
              className="mt-6 aspect-[16/9] w-full rounded-2xl object-cover"
            />
          )}

          <div className="mt-8 space-y-4 leading-relaxed text-muted-foreground">
            {(post.content ?? "").split("\n\n").map((paragraph, i) => (
              <p key={i}>{paragraph}</p>
            ))}
          </div>
        </div>
      </article>
    </StoreLayout>
  );
}
