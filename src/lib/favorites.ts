import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/lib/auth";
import { productSelect, type Product } from "@/lib/types";

export function useFavorites() {
  const { user } = useAuth();
  const queryClient = useQueryClient();

  const query = useQuery({
    queryKey: ["favorites", user?.id ?? "anon"],
    enabled: Boolean(user),
    queryFn: async () => {
      const { data, error } = await supabase
        .from("favorites")
        .select(`product_id, products(${productSelect})`);
      if (error) throw error;
      return (data ?? []) as unknown as { product_id: string; products: Product | null }[];
    },
  });

  const toggle = useMutation({
    mutationFn: async (productId: string) => {
      if (!user) throw new Error("auth");
      const exists = (query.data ?? []).some((f) => f.product_id === productId);
      if (exists) {
        const { error } = await supabase
          .from("favorites")
          .delete()
          .eq("product_id", productId)
          .eq("user_id", user.id);
        if (error) throw error;
        return "removed" as const;
      }
      const { error } = await supabase
        .from("favorites")
        .insert({ product_id: productId, user_id: user.id });
      if (error) throw error;
      return "added" as const;
    },
    onSuccess: (result) => {
      queryClient.invalidateQueries({ queryKey: ["favorites"] });
      toast.success(result === "added" ? "Adicionado aos favoritos" : "Removido dos favoritos");
    },
    onError: (error: Error) => {
      if (error.message === "auth") toast.error("Entre na sua conta para salvar favoritos");
      else toast.error("Não foi possível atualizar seus favoritos");
    },
  });

  const ids = new Set((query.data ?? []).map((f) => f.product_id));

  return {
    favorites: (query.data ?? []).map((f) => f.products).filter(Boolean) as Product[],
    ids,
    isLoading: query.isLoading,
    toggle: (productId: string) => toggle.mutate(productId),
    isSignedIn: Boolean(user),
  };
}
