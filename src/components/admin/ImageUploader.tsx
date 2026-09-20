import { useRef, useState } from "react";
import { ImagePlus, Trash2, GripVertical, Loader2 } from "lucide-react";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";

export type ManagedImage = {
  id: string;
  url: string;
  alt: string | null;
  position: number;
  /** Se ainda não foi salvo no banco, armazenar o arquivo */
  file?: File;
  /** Marcado para exclusão */
  toDelete?: boolean;
};

interface ImageUploaderProps {
  images: ManagedImage[];
  onChange: (images: ManagedImage[]) => void;
  productId: string;
}

export function ImageUploader({ images, onChange, productId }: ImageUploaderProps) {
  const [uploading, setUploading] = useState(false);
  const inputRef = useRef<HTMLInputElement>(null);

  const visible = images.filter((img) => !img.toDelete);

  function handleFiles(files: FileList | null) {
    if (!files) return;
    const newImages: ManagedImage[] = Array.from(files).map((file, i) => ({
      id: `new-${Date.now()}-${i}`,
      url: URL.createObjectURL(file),
      alt: null,
      position: (images.length ?? 0) + i,
      file,
    }));
    onChange([...images, ...newImages]);
  }

  function markDelete(id: string) {
    onChange(
      images.map((img) => (img.id === id ? { ...img, toDelete: true } : img))
    );
  }

  function updateAlt(id: string, alt: string) {
    onChange(images.map((img) => (img.id === id ? { ...img, alt } : img)));
  }

  function moveUp(index: number) {
    if (index === 0) return;
    const next = [...visible];
    [next[index - 1], next[index]] = [next[index], next[index - 1]];
    const reordered = next.map((img, i) => ({ ...img, position: i }));
    onChange([...reordered, ...images.filter((img) => img.toDelete)]);
  }

  function moveDown(index: number) {
    if (index === visible.length - 1) return;
    const next = [...visible];
    [next[index], next[index + 1]] = [next[index + 1], next[index]];
    const reordered = next.map((img, i) => ({ ...img, position: i }));
    onChange([...reordered, ...images.filter((img) => img.toDelete)]);
  }

  /** Chamado externamente pelo formulário ao salvar — faz o upload no Storage e retorna os dados finais */
  async function uploadPending(): Promise<Omit<ManagedImage, "file" | "toDelete">[]> {
    setUploading(true);
    const result: Omit<ManagedImage, "file" | "toDelete">[] = [];
    for (const img of images.filter((i) => !i.toDelete)) {
      if (img.file) {
        const ext = img.file.name.split(".").pop() ?? "jpg";
        const path = `${productId}/${Date.now()}.${ext}`;
        const { error } = await supabase.storage
          .from("product-images")
          .upload(path, img.file, { upsert: false });
        if (error) {
          toast.error(`Erro ao enviar imagem: ${error.message}`);
          setUploading(false);
          throw error;
        }
        const { data: pub } = supabase.storage.from("product-images").getPublicUrl(path);
        result.push({ id: img.id, url: pub.publicUrl, alt: img.alt, position: img.position });
      } else {
        result.push({ id: img.id, url: img.url, alt: img.alt, position: img.position });
      }
    }
    setUploading(false);
    return result;
  }

  // Expor uploadPending via ref é opcional; quem usar o componente chama diretamente
  // Para simplificar, exportamos a função via `data-upload` imperativo pattern

  return (
    <div className="space-y-4">
      <div className="flex items-center gap-3">
        <Button
          type="button"
          variant="outline"
          size="sm"
          className="gap-2"
          onClick={() => inputRef.current?.click()}
          disabled={uploading}
        >
          {uploading ? (
            <Loader2 className="h-4 w-4 animate-spin" />
          ) : (
            <ImagePlus className="h-4 w-4" />
          )}
          Adicionar fotos
        </Button>
        <span className="text-xs text-muted-foreground">{visible.length} foto(s)</span>
        <input
          ref={inputRef}
          type="file"
          accept="image/*"
          multiple
          className="hidden"
          onChange={(e) => handleFiles(e.target.files)}
        />
      </div>

      {visible.length === 0 && (
        <div
          className="flex cursor-pointer flex-col items-center justify-center gap-2 rounded-2xl border-2 border-dashed border-border bg-muted/30 py-12 text-sm text-muted-foreground transition hover:bg-muted/50"
          onClick={() => inputRef.current?.click()}
        >
          <ImagePlus className="h-8 w-8 opacity-40" />
          Clique para adicionar fotos do produto
        </div>
      )}

      <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
        {visible.map((img, i) => (
          <div key={img.id} className="group relative rounded-xl border border-border bg-card overflow-hidden">
            <img
              src={img.url}
              alt={img.alt ?? ""}
              className="aspect-square w-full object-cover"
            />
            <div className="absolute inset-0 flex flex-col justify-between bg-black/0 p-2 opacity-0 transition group-hover:bg-black/30 group-hover:opacity-100">
              <div className="flex justify-end">
                <Button
                  type="button"
                  size="icon"
                  variant="destructive"
                  className="h-7 w-7"
                  onClick={() => markDelete(img.id)}
                >
                  <Trash2 className="h-3.5 w-3.5" />
                </Button>
              </div>
              <div className="flex justify-center gap-1">
                <Button
                  type="button"
                  size="sm"
                  variant="secondary"
                  className="h-6 px-2 text-xs"
                  onClick={() => moveUp(i)}
                  disabled={i === 0}
                >
                  ↑
                </Button>
                <Button
                  type="button"
                  size="sm"
                  variant="secondary"
                  className="h-6 px-2 text-xs"
                  onClick={() => moveDown(i)}
                  disabled={i === visible.length - 1}
                >
                  ↓
                </Button>
              </div>
            </div>
            {i === 0 && (
              <span className="absolute left-2 top-2 rounded-full bg-primary px-2 py-0.5 text-[10px] font-semibold text-primary-foreground">
                Capa
              </span>
            )}
            <div className="p-2">
              <Label className="mb-1 text-xs">Texto alternativo</Label>
              <Input
                value={img.alt ?? ""}
                onChange={(e) => updateAlt(img.id, e.target.value)}
                placeholder="Descreva a imagem"
                className="h-7 text-xs"
              />
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

/** Utilitário exportado para quem precisar chamar o upload fora do componente */
export async function uploadImages(
  productId: string,
  images: ManagedImage[]
): Promise<Omit<ManagedImage, "file" | "toDelete">[]> {
  const result: Omit<ManagedImage, "file" | "toDelete">[] = [];
  for (const img of images.filter((i) => !i.toDelete)) {
    if (img.file) {
      const ext = img.file.name.split(".").pop() ?? "jpg";
      const path = `${productId}/${Date.now()}-${Math.random().toString(36).slice(2)}.${ext}`;
      const { error } = await supabase.storage
        .from("product-images")
        .upload(path, img.file, { upsert: false });
      if (error) throw error;
      const { data: pub } = supabase.storage.from("product-images").getPublicUrl(path);
      result.push({ id: img.id, url: pub.publicUrl, alt: img.alt, position: img.position });
    } else {
      result.push({ id: img.id, url: img.url, alt: img.alt, position: img.position });
    }
  }
  return result;
}
