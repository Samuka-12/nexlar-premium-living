-- product_faqs: perguntas e respostas por produto (FAQ)
CREATE TABLE public.product_faqs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_id uuid NOT NULL REFERENCES public.products(id) ON DELETE CASCADE,
  question text NOT NULL,
  answer text NOT NULL,
  position int NOT NULL DEFAULT 0,
  created_at timestamptz NOT NULL DEFAULT now()
);

GRANT SELECT ON public.product_faqs TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.product_faqs TO authenticated;
GRANT ALL ON public.product_faqs TO service_role;
ALTER TABLE public.product_faqs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "product_faqs_public_read"
  ON public.product_faqs FOR SELECT USING (true);

CREATE POLICY "product_faqs_admin_write"
  ON public.product_faqs FOR ALL TO authenticated
  USING (public.has_role(auth.uid(), 'admin'))
  WITH CHECK (public.has_role(auth.uid(), 'admin'));

CREATE INDEX idx_product_faqs_product ON public.product_faqs(product_id);

-- Storage bucket para imagens de produtos
INSERT INTO storage.buckets (id, name, public)
VALUES ('product-images', 'product-images', true)
ON CONFLICT (id) DO NOTHING;

CREATE POLICY "product_images_bucket_public_read"
  ON storage.objects FOR SELECT USING (bucket_id = 'product-images');

CREATE POLICY "product_images_bucket_admin_upload"
  ON storage.objects FOR INSERT TO authenticated
  WITH CHECK (bucket_id = 'product-images' AND public.has_role(auth.uid(), 'admin'));

CREATE POLICY "product_images_bucket_admin_delete"
  ON storage.objects FOR DELETE TO authenticated
  USING (bucket_id = 'product-images' AND public.has_role(auth.uid(), 'admin'));
