import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { Check, X, Star, Loader2 } from "lucide-react";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { dateBR } from "@/lib/format";
import type { Review } from "@/lib/types";

interface ReviewsManagerProps {
  productId: string;
}

export function ReviewsManager({ productId }: ReviewsManagerProps) {
  const queryClient = useQueryClient();

  const { data: reviews = [], isLoading } = useQuery({
    queryKey: ["admin-reviews", productId],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("reviews")
        .select("*")
        .eq("product_id", productId)
        .order("created_at", { ascending: false });
      if (error) throw error;
      return data as Review[];
    },
  });

  const approveMutation = useMutation({
    mutationFn: async ({ id, approved }: { id: string; approved: boolean }) => {
      const { error } = await supabase
        .from("reviews")
        .update({ approved })
        .eq("id", id);
      if (error) throw error;
    },
    onSuccess: (_, { approved }) => {
      toast.success(approved ? "Avaliação aprovada" : "Avaliação reprovada");
      queryClient.invalidateQueries({ queryKey: ["admin-reviews", productId] });
      queryClient.invalidateQueries({ queryKey: ["reviews", productId] });
    },
    onError: () => toast.error("Erro ao atualizar avaliação"),
  });

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const { error } = await supabase.from("reviews").delete().eq("id", id);
      if (error) throw error;
    },
    onSuccess: () => {
      toast.success("Avaliação excluída");
      queryClient.invalidateQueries({ queryKey: ["admin-reviews", productId] });
    },
    onError: () => toast.error("Erro ao excluir avaliação"),
  });

  if (isLoading) {
    return (
      <div className="flex items-center justify-center py-10">
        <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
      </div>
    );
  }

  if (reviews.length === 0) {
    return (
      <p className="py-6 text-center text-sm text-muted-foreground">
        Nenhuma avaliação para este produto ainda.
      </p>
    );
  }

  return (
    <div className="space-y-3">
      <p className="text-xs text-muted-foreground">
        {reviews.filter((r) => r.approved).length} aprovadas ·{" "}
        {reviews.filter((r) => !r.approved).length} pendentes
      </p>
      {reviews.map((review) => (
        <div
          key={review.id}
          className="flex flex-col gap-2 rounded-xl border border-border bg-card p-4 sm:flex-row sm:items-start sm:justify-between"
        >
          <div className="flex-1 space-y-1">
            <div className="flex flex-wrap items-center gap-2">
              <span className="font-medium text-sm">{review.author_name}</span>
              <span className="text-xs text-muted-foreground">{dateBR(review.created_at)}</span>
              <Badge variant={review.approved ? "default" : "secondary"}>
                {review.approved ? "Aprovada" : "Pendente"}
              </Badge>
            </div>
            <div className="flex">
              {Array.from({ length: 5 }).map((_, i) => (
                <Star
                  key={i}
                  className={`h-3.5 w-3.5 ${
                    i < review.rating ? "fill-amber-400 text-amber-400" : "text-muted-foreground"
                  }`}
                />
              ))}
            </div>
            {review.title && <p className="text-sm font-semibold">{review.title}</p>}
            {review.comment && (
              <p className="text-sm text-muted-foreground">{review.comment}</p>
            )}
          </div>
          <div className="flex shrink-0 gap-2 sm:flex-col">
            {!review.approved ? (
              <Button
                type="button"
                size="sm"
                variant="outline"
                className="gap-1.5 text-xs text-green-600 hover:text-green-600"
                onClick={() => approveMutation.mutate({ id: review.id, approved: true })}
                disabled={approveMutation.isPending}
              >
                <Check className="h-3.5 w-3.5" />
                Aprovar
              </Button>
            ) : (
              <Button
                type="button"
                size="sm"
                variant="outline"
                className="gap-1.5 text-xs"
                onClick={() => approveMutation.mutate({ id: review.id, approved: false })}
                disabled={approveMutation.isPending}
              >
                <X className="h-3.5 w-3.5" />
                Reprovar
              </Button>
            )}
            <Button
              type="button"
              size="sm"
              variant="ghost"
              className="gap-1.5 text-xs text-destructive hover:text-destructive"
              onClick={() => deleteMutation.mutate(review.id)}
              disabled={deleteMutation.isPending}
            >
              <X className="h-3.5 w-3.5" />
              Excluir
            </Button>
          </div>
        </div>
      ))}
    </div>
  );
}
