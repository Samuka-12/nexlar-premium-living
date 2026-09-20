import { useEffect, useState } from "react";
import { createFileRoute, useNavigate } from "@tanstack/react-router";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { Loader2, Save, ArrowLeft, Trash2, Plus, X } from "lucide-react";
import { toast } from "sonner";
import { AdminLayout } from "@/components/admin/AdminLayout";
import { ImageUploader, uploadImages, type ManagedImage } from "@/components/admin/ImageUploader";
import { SpecsEditor } from "@/components/admin/SpecsEditor";
import { FaqEditor, type FaqItem } from "@/components/admin/FaqEditor";
import { ReviewsManager } from "@/components/admin/ReviewsManager";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Switch } from "@/components/ui/switch";
import { Separator } from "@/components/ui/separator";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { supabase } from "@/integrations/supabase/client";
import type { Category } from "@/lib/types";
import { CATEGORIES, PRODUCTS } from "@/lib/catalog-data";

export const Route = createFileRoute("/admin/produto/$id")({
  head: () => ({ meta: [{ title: "Editar Produto | Admin NEXLAR" }] }),
  component: AdminProductEditor,
});

type FormData = {
  name: string;
  slug: string;
  sku: string;
  short_description: string;
  description: string;
  category_id: string;
  price: string;
  compare_at_price: string;
  pix_discount_percent: string;
  stock: string;
  free_shipping: boolean;
  featured: boolean;
  is_new: boolean;
  active: boolean;
  specs: Record<string, string>;
  highlights: string[];
};

const defaultForm: FormData = {
  name: "",
  slug: "",
  sku: "",
  short_description: "",
  description: "",
  category_id: "",
  price: "0",
  compare_at_price: "",
  pix_discount_percent: "10",
  stock: "0",
  free_shipping: false,
  featured: false,
  is_new: false,
  active: true,
  specs: {},
  highlights: [],
};

function slugify(text: string) {
  return text
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "");
}

function AdminProductEditor() {
  const { id } = Route.useParams();
  const navigate = useNavigate();
  const queryClient = useQueryClient();

  const isNew = id === "novo";

  const localProduct = isNew ? null : PRODUCTS.find((p) => p.id === id || p.slug === id);

  const [form, setForm] = useState<FormData>(() => {
    if (!localProduct) return defaultForm;
    return {
      name: localProduct.name ?? "",
      slug: localProduct.slug ?? "",
      sku: localProduct.sku ?? "",
      short_description: localProduct.short_description ?? "",
      description: localProduct.description ?? "",
      category_id: localProduct.category_id ?? "",
      price: String(localProduct.price ?? 0),
      compare_at_price: localProduct.compare_at_price ? String(localProduct.compare_at_price) : "",
      pix_discount_percent: String(localProduct.pix_discount_percent ?? 10),
      stock: String(localProduct.stock ?? 0),
      free_shipping: localProduct.free_shipping ?? false,
      featured: localProduct.featured ?? false,
      is_new: localProduct.is_new ?? false,
      active: localProduct.active ?? true,
      specs: localProduct.specs ?? {},
      highlights: localProduct.highlights ?? [],
    };
  });

  const [images, setImages] = useState<ManagedImage[]>(() => {
    if (!localProduct) return [];
    return (localProduct.product_images ?? []).map((img, i) => ({
      id: img.id || `img-${i}`,
      url: img.url,
      alt: img.alt,
      position: img.position ?? i,
    }));
  });

  const [faqs, setFaqs] = useState<FaqItem[]>([]);
  const [saving, setSaving] = useState(false);

  // Categorias
  const { data: categories = [] } = useQuery({
    queryKey: ["categories"],
    queryFn: async () => {
      try {
        const { data, error } = await supabase
          .from("categories")
          .select("id, name, slug")
          .eq("active", true)
          .order("position");
        if (!error && data && data.length > 0) return data as Category[];
      } catch {
        // Fallback
      }
      return CATEGORIES;
    },
    initialData: CATEGORIES,
  });

  // Produto existente
  const { data: productData, isLoading: loadingProduct } = useQuery({
    queryKey: ["admin-product", id],
    enabled: !isNew,
    queryFn: async () => {
      try {
        const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(id);
        let query = supabase
          .from("products")
          .select("*, product_images(id,url,alt,position), product_variants(id,name,value,hex,price_delta,stock)");
        
        if (isUuid) {
          query = query.eq("id", id);
        } else {
          query = query.or(`id.eq.${id},slug.eq.${id}`);
        }
        
        const { data, error } = await query.maybeSingle();
        if (!error && data) return data;
      } catch {
        // Fallback para produto local
      }
      return localProduct ?? null;
    },
    initialData: localProduct ?? null,
  });

  useEffect(() => {
    if (!productData) return;
    setForm({
      name: productData.name ?? "",
      slug: productData.slug ?? "",
      sku: productData.sku ?? "",
      short_description: productData.short_description ?? "",
      description: productData.description ?? "",
      category_id: productData.category_id ?? "",
      price: String(productData.price ?? 0),
      compare_at_price: productData.compare_at_price ? String(productData.compare_at_price) : "",
      pix_discount_percent: String(productData.pix_discount_percent ?? 10),
      stock: String(productData.stock ?? 0),
      free_shipping: productData.free_shipping ?? false,
      featured: productData.featured ?? false,
      is_new: productData.is_new ?? false,
      active: productData.active ?? true,
      specs: productData.specs ?? {},
      highlights: productData.highlights ?? [],
    });
    const imgs: ManagedImage[] = (productData.product_images ?? [])
      .sort((a: any, b: any) => a.position - b.position)
      .map((img: any) => ({ id: img.id, url: img.url, alt: img.alt, position: img.position }));
    if (imgs.length > 0) setImages(imgs);
  }, [productData]);

  // FAQs do produto
  const { data: faqData } = useQuery({
    queryKey: ["admin-faqs", id],
    enabled: !isNew,
    queryFn: async () => {
      try {
        const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(id);
        if (!isUuid) return [];
        const { data, error } = await supabase
          .from("product_faqs")
          .select("*")
          .eq("product_id", id)
          .order("position");
        if (!error && data) return data;
      } catch {
        // Fallback
      }
      return [];
    },
  });

  useEffect(() => {
    if (!faqData || faqData.length === 0) return;
    setFaqs(
      faqData.map((f: any) => ({
        id: f.id,
        question: f.question,
        answer: f.answer,
        position: f.position,
      }))
    );
  }, [faqData]);

  function set<K extends keyof FormData>(key: K, value: FormData[K]) {
    setForm((prev) => ({ ...prev, [key]: value }));
  }

  function handleNameChange(name: string) {
    setForm((prev) => ({
      ...prev,
      name,
      slug: prev.slug === "" || prev.slug === slugify(prev.name) ? slugify(name) : prev.slug,
    }));
  }

  async function handleSave() {
    if (!form.name.trim()) {
      toast.error("Nome do produto é obrigatório");
      return;
    }
    setSaving(true);
    try {
      let productId = id;

      // 1. Upsert produto
      const payload = {
        name: form.name.trim(),
        slug: form.slug.trim() || slugify(form.name),
        sku: form.sku.trim() || null,
        short_description: form.short_description.trim() || null,
        description: form.description.trim() || null,
        category_id: form.category_id || null,
        price: parseFloat(form.price) || 0,
        compare_at_price: form.compare_at_price ? parseFloat(form.compare_at_price) : null,
        pix_discount_percent: parseInt(form.pix_discount_percent) || 10,
        stock: parseInt(form.stock) || 0,
        free_shipping: form.free_shipping,
        featured: form.featured,
        is_new: form.is_new,
        active: form.active,
        specs: form.specs,
        highlights: form.highlights,
      };

      const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(id);
      let existing = null;
      if (!isNew) {
        if (isUuid) {
          const { data } = await supabase.from("products").select("id").eq("id", id).maybeSingle();
          existing = data;
        } else {
          const { data } = await supabase.from("products").select("id").eq("slug", payload.slug).maybeSingle();
          existing = data;
        }
      }

      if (existing) {
        productId = existing.id;
        const { error } = await supabase.from("products").update(payload).eq("id", productId);
        if (error) throw error;
      } else {
        const { data, error } = await supabase
          .from("products")
          .insert(payload)
          .select("id")
          .single();
        if (error) throw error;
        productId = data.id;
      }

      // 2. Upload e sync de imagens
      const finalImages = await uploadImages(productId, images);

      // Deletar as imagens marcadas como toDelete que já existem no banco
      const toDeleteIds = images
        .filter((img) => img.toDelete && !img.file)
        .map((img) => img.id);
      if (toDeleteIds.length > 0) {
        await supabase.from("product_images").delete().in("id", toDeleteIds);
      }

      // Upsert imagens novas/existentes
      for (const img of finalImages) {
        if (img.id.startsWith("new-")) {
          await supabase.from("product_images").insert({
            product_id: productId,
            url: img.url,
            alt: img.alt,
            position: img.position,
          });
        } else {
          await supabase
            .from("product_images")
            .update({ url: img.url, alt: img.alt, position: img.position })
            .eq("id", img.id);
        }
      }

      // 3. Sync FAQs
      // Deletar removidos
      const faqsToDelete = faqs.filter((f) => f.toDelete && !f.isNew);
      for (const faq of faqsToDelete) {
        await supabase.from("product_faqs").delete().eq("id", faq.id);
      }
      // Inserir novos
      const faqsToInsert = faqs.filter((f) => f.isNew && !f.toDelete);
      for (const faq of faqsToInsert) {
        await supabase.from("product_faqs").insert({
          product_id: productId,
          question: faq.question,
          answer: faq.answer,
          position: faq.position,
        });
      }
      // Atualizar existentes
      const faqsToUpdate = faqs.filter((f) => !f.isNew && !f.toDelete);
      for (const faq of faqsToUpdate) {
        await supabase
          .from("product_faqs")
          .update({ question: faq.question, answer: faq.answer, position: faq.position })
          .eq("id", faq.id);
      }

      toast.success(isNew ? "Produto criado com sucesso!" : "Produto salvo com sucesso!");
      queryClient.invalidateQueries({ queryKey: ["admin-products"] });
      queryClient.invalidateQueries({ queryKey: ["admin-product", id] });

      if (isNew) {
        navigate({ to: "/admin/produto/$id", params: { id: productId } });
      }
    } catch (err: any) {
      toast.error(`Erro ao salvar: ${err?.message ?? "Tente novamente"}`);
    } finally {
      setSaving(false);
    }
  }

  if (!isNew && loadingProduct && !localProduct) {
    return (
      <AdminLayout>
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
        </div>
      </AdminLayout>
    );
  }

  return (
    <AdminLayout>
      {/* Header */}
      <div className="mb-6 flex items-center justify-between gap-4">
        <div className="flex items-center gap-3">
          <Button variant="ghost" size="icon" onClick={() => navigate({ to: "/admin" })}>
            <ArrowLeft className="h-4 w-4" />
          </Button>
          <div>
            <h1 className="text-xl font-bold">
              {isNew ? "Novo produto" : form.name || "Editar produto"}
            </h1>
            <p className="text-xs text-muted-foreground">
              {isNew ? "Preencha os dados e salve" : `ID: ${id}`}
            </p>
          </div>
        </div>
        <Button onClick={handleSave} disabled={saving} className="gap-2">
          {saving ? <Loader2 className="h-4 w-4 animate-spin" /> : <Save className="h-4 w-4" />}
          {saving ? "Salvando..." : "Salvar produto"}
        </Button>
      </div>

      <Tabs defaultValue="geral" className="space-y-6">
        <TabsList className="w-full sm:w-auto">
          <TabsTrigger value="geral">Geral</TabsTrigger>
          <TabsTrigger value="fotos">Fotos</TabsTrigger>
          <TabsTrigger value="specs">Especificações</TabsTrigger>
          <TabsTrigger value="avaliacoes">Avaliações</TabsTrigger>
          <TabsTrigger value="faq">Perguntas</TabsTrigger>
        </TabsList>

        {/* ── ABA GERAL ── */}
        <TabsContent value="geral" className="space-y-6">
          {/* Informações básicas */}
          <Section title="Informações básicas">
            <div className="grid gap-4 sm:grid-cols-2">
              <div className="space-y-1.5 sm:col-span-2">
                <Label htmlFor="name">Nome do produto *</Label>
                <Input
                  id="name"
                  value={form.name}
                  onChange={(e) => handleNameChange(e.target.value)}
                  placeholder="Ex: Panela Ceramic Pro 24cm"
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="slug">Slug (URL)</Label>
                <Input
                  id="slug"
                  value={form.slug}
                  onChange={(e) => set("slug", e.target.value)}
                  placeholder="panela-ceramic-pro-24cm"
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="sku">SKU</Label>
                <Input
                  id="sku"
                  value={form.sku}
                  onChange={(e) => set("sku", e.target.value)}
                  placeholder="NX-PAN-24-CER"
                />
              </div>
              <div className="space-y-1.5 sm:col-span-2">
                <Label htmlFor="category">Categoria</Label>
                <Select
                  value={form.category_id}
                  onValueChange={(v) => set("category_id", v)}
                >
                  <SelectTrigger id="category">
                    <SelectValue placeholder="Selecione uma categoria" />
                  </SelectTrigger>
                  <SelectContent>
                    {categories.map((cat) => (
                      <SelectItem key={cat.id} value={cat.id}>
                        {cat.name}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div className="space-y-1.5 sm:col-span-2">
                <Label htmlFor="short_description">Descrição curta</Label>
                <Input
                  id="short_description"
                  value={form.short_description}
                  onChange={(e) => set("short_description", e.target.value)}
                  placeholder="Resumo de 1 frase para listagem de produtos"
                />
              </div>
              <div className="space-y-1.5 sm:col-span-2">
                <Label htmlFor="description">Descrição completa</Label>
                <Textarea
                  id="description"
                  value={form.description}
                  onChange={(e) => set("description", e.target.value)}
                  placeholder="Descreva o produto em detalhes..."
                  rows={6}
                />
              </div>
            </div>
          </Section>

          {/* Preços */}
          <Section title="Preços">
            <div className="grid gap-4 sm:grid-cols-3">
              <div className="space-y-1.5">
                <Label htmlFor="price">Preço atual (R$) *</Label>
                <Input
                  id="price"
                  type="number"
                  min={0}
                  step={0.01}
                  value={form.price}
                  onChange={(e) => set("price", e.target.value)}
                  placeholder="0.00"
                />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="compare_at_price">
                  Preço anterior riscado (R$)
                </Label>
                <Input
                  id="compare_at_price"
                  type="number"
                  min={0}
                  step={0.01}
                  value={form.compare_at_price}
                  onChange={(e) => set("compare_at_price", e.target.value)}
                  placeholder="Deixe vazio se não houver"
                />
                <p className="text-xs text-muted-foreground">
                  Aparece riscado ao lado do preço atual
                </p>
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="pix_discount_percent">Desconto PIX (%)</Label>
                <Input
                  id="pix_discount_percent"
                  type="number"
                  min={0}
                  max={100}
                  value={form.pix_discount_percent}
                  onChange={(e) => set("pix_discount_percent", e.target.value)}
                />
              </div>
            </div>
          </Section>

          {/* Estoque */}
          <Section title="Estoque">
            <div className="grid gap-4 sm:grid-cols-2">
              <div className="space-y-1.5">
                <Label htmlFor="stock">Quantidade em estoque</Label>
                <Input
                  id="stock"
                  type="number"
                  min={0}
                  value={form.stock}
                  onChange={(e) => set("stock", e.target.value)}
                />
              </div>
            </div>
          </Section>

          {/* Destaques (bullet points) */}
          <Section title="Pontos de destaque">
            <div className="space-y-2">
              {form.highlights.map((item, i) => (
                <div key={i} className="flex gap-2">
                  <Input
                    value={item}
                    onChange={(e) => {
                      const next = [...form.highlights];
                      next[i] = e.target.value;
                      set("highlights", next);
                    }}
                    placeholder="Ex: Antiaderente cerâmico livre de PFOA"
                  />
                  <Button
                    type="button"
                    variant="ghost"
                    size="icon"
                    onClick={() => set("highlights", form.highlights.filter((_, j) => j !== i))}
                    className="shrink-0 text-destructive hover:text-destructive"
                  >
                    <X className="h-4 w-4" />
                  </Button>
                </div>
              ))}
              <Button
                type="button"
                variant="outline"
                size="sm"
                className="gap-2"
                onClick={() => set("highlights", [...form.highlights, ""])}
              >
                <Plus className="h-4 w-4" />
                Adicionar ponto
              </Button>
            </div>
          </Section>

          {/* Configurações */}
          <Section title="Configurações">
            <div className="grid gap-4 sm:grid-cols-2">
              <SwitchRow
                label="Produto ativo"
                description="Visível na loja para os clientes"
                checked={form.active}
                onCheckedChange={(v) => set("active", v)}
              />
              <SwitchRow
                label="Destaque"
                description="Aparece na seção de destaques da home"
                checked={form.featured}
                onCheckedChange={(v) => set("featured", v)}
              />
              <SwitchRow
                label="Lançamento"
                description="Exibe a badge 'Lançamento' no produto"
                checked={form.is_new}
                onCheckedChange={(v) => set("is_new", v)}
              />
              <SwitchRow
                label="Frete grátis"
                description="Frete gratuito para este produto"
                checked={form.free_shipping}
                onCheckedChange={(v) => set("free_shipping", v)}
              />
            </div>
          </Section>
        </TabsContent>

        {/* ── ABA FOTOS ── */}
        <TabsContent value="fotos">
          <Section title="Fotos do produto">
            <ImageUploader
              images={images}
              onChange={setImages}
              productId={isNew ? "novo" : id}
            />
          </Section>
        </TabsContent>

        {/* ── ABA ESPECIFICAÇÕES ── */}
        <TabsContent value="specs">
          <Section title="Especificações técnicas">
            <SpecsEditor value={form.specs} onChange={(v) => set("specs", v)} />
          </Section>
        </TabsContent>

        {/* ── ABA AVALIAÇÕES ── */}
        <TabsContent value="avaliacoes">
          <Section title="Avaliações dos clientes">
            {isNew ? (
              <p className="text-sm text-muted-foreground">
                Salve o produto primeiro para gerenciar as avaliações.
              </p>
            ) : (
              <ReviewsManager productId={id} />
            )}
          </Section>
        </TabsContent>

        {/* ── ABA FAQ ── */}
        <TabsContent value="faq">
          <Section title="Perguntas e respostas (FAQ)">
            <FaqEditor items={faqs} onChange={setFaqs} />
          </Section>
        </TabsContent>
      </Tabs>

      {/* Botão salvar fixo no mobile */}
      <div className="mt-8 flex justify-end">
        <Button onClick={handleSave} disabled={saving} size="lg" className="gap-2">
          {saving ? <Loader2 className="h-4 w-4 animate-spin" /> : <Save className="h-4 w-4" />}
          {saving ? "Salvando..." : "Salvar produto"}
        </Button>
      </div>
    </AdminLayout>
  );
}

// ── Helpers de layout ──────────────────────────────────────
function Section({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div className="rounded-xl border border-border bg-card p-5">
      <h2 className="mb-4 font-semibold">{title}</h2>
      <Separator className="mb-4" />
      {children}
    </div>
  );
}

function SwitchRow({
  label,
  description,
  checked,
  onCheckedChange,
}: {
  label: string;
  description: string;
  checked: boolean;
  onCheckedChange: (v: boolean) => void;
}) {
  return (
    <div className="flex items-center justify-between gap-4 rounded-lg border border-border p-3">
      <div>
        <p className="text-sm font-medium">{label}</p>
        <p className="text-xs text-muted-foreground">{description}</p>
      </div>
      <Switch checked={checked} onCheckedChange={onCheckedChange} />
    </div>
  );
}
