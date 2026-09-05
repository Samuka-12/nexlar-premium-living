
-- roles
CREATE TYPE public.app_role AS ENUM ('admin','customer');

CREATE TABLE public.profiles (
  id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  full_name text,
  email text,
  phone text,
  cpf text,
  avatar_url text,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE ON public.profiles TO authenticated;
GRANT ALL ON public.profiles TO service_role;
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

CREATE TABLE public.user_roles (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  role public.app_role NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, role)
);
GRANT SELECT ON public.user_roles TO authenticated;
GRANT ALL ON public.user_roles TO service_role;
ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

CREATE OR REPLACE FUNCTION public.has_role(_user_id uuid, _role public.app_role)
RETURNS boolean LANGUAGE sql STABLE SECURITY DEFINER SET search_path = public AS $$
  SELECT EXISTS (SELECT 1 FROM public.user_roles WHERE user_id = _user_id AND role = _role);
$$;

CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS trigger LANGUAGE plpgsql SET search_path = public AS $$
BEGIN NEW.updated_at = now(); RETURN NEW; END; $$;

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
BEGIN
  INSERT INTO public.profiles (id, full_name, email, avatar_url)
  VALUES (NEW.id, NEW.raw_user_meta_data->>'full_name', NEW.email, NEW.raw_user_meta_data->>'avatar_url')
  ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.user_roles (user_id, role) VALUES (NEW.id, 'customer')
  ON CONFLICT DO NOTHING;
  RETURN NEW;
END; $$;
CREATE TRIGGER on_auth_user_created AFTER INSERT ON auth.users
FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

CREATE POLICY "profiles_select_own" ON public.profiles FOR SELECT TO authenticated USING (id = auth.uid() OR public.has_role(auth.uid(),'admin'));
CREATE POLICY "profiles_insert_own" ON public.profiles FOR INSERT TO authenticated WITH CHECK (id = auth.uid());
CREATE POLICY "profiles_update_own" ON public.profiles FOR UPDATE TO authenticated USING (id = auth.uid() OR public.has_role(auth.uid(),'admin'));
CREATE POLICY "roles_select_own" ON public.user_roles FOR SELECT TO authenticated USING (user_id = auth.uid() OR public.has_role(auth.uid(),'admin'));

-- categories
CREATE TABLE public.categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  slug text NOT NULL UNIQUE,
  description text,
  image_url text,
  parent_id uuid REFERENCES public.categories(id) ON DELETE SET NULL,
  position int NOT NULL DEFAULT 0,
  active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT ON public.categories TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.categories TO authenticated;
GRANT ALL ON public.categories TO service_role;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
CREATE POLICY "categories_public_read" ON public.categories FOR SELECT USING (true);
CREATE POLICY "categories_admin_write" ON public.categories FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

-- products
CREATE TABLE public.products (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  slug text NOT NULL UNIQUE,
  sku text,
  short_description text,
  description text,
  category_id uuid REFERENCES public.categories(id) ON DELETE SET NULL,
  price numeric(10,2) NOT NULL DEFAULT 0,
  compare_at_price numeric(10,2),
  pix_discount_percent int NOT NULL DEFAULT 10,
  stock int NOT NULL DEFAULT 0,
  rating numeric(2,1) NOT NULL DEFAULT 0,
  reviews_count int NOT NULL DEFAULT 0,
  free_shipping boolean NOT NULL DEFAULT false,
  featured boolean NOT NULL DEFAULT false,
  is_new boolean NOT NULL DEFAULT false,
  active boolean NOT NULL DEFAULT true,
  specs jsonb NOT NULL DEFAULT '{}'::jsonb,
  highlights text[] NOT NULL DEFAULT '{}',
  video_url text,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT ON public.products TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.products TO authenticated;
GRANT ALL ON public.products TO service_role;
ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;
CREATE POLICY "products_public_read" ON public.products FOR SELECT USING (true);
CREATE POLICY "products_admin_write" ON public.products FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

CREATE TABLE public.product_images (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_id uuid NOT NULL REFERENCES public.products(id) ON DELETE CASCADE,
  url text NOT NULL,
  alt text,
  position int NOT NULL DEFAULT 0
);
GRANT SELECT ON public.product_images TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.product_images TO authenticated;
GRANT ALL ON public.product_images TO service_role;
ALTER TABLE public.product_images ENABLE ROW LEVEL SECURITY;
CREATE POLICY "product_images_public_read" ON public.product_images FOR SELECT USING (true);
CREATE POLICY "product_images_admin_write" ON public.product_images FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

CREATE TABLE public.product_variants (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_id uuid NOT NULL REFERENCES public.products(id) ON DELETE CASCADE,
  name text NOT NULL,
  value text NOT NULL,
  price_delta numeric(10,2) NOT NULL DEFAULT 0,
  stock int NOT NULL DEFAULT 0,
  hex text
);
GRANT SELECT ON public.product_variants TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.product_variants TO authenticated;
GRANT ALL ON public.product_variants TO service_role;
ALTER TABLE public.product_variants ENABLE ROW LEVEL SECURITY;
CREATE POLICY "product_variants_public_read" ON public.product_variants FOR SELECT USING (true);
CREATE POLICY "product_variants_admin_write" ON public.product_variants FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

-- reviews
CREATE TABLE public.reviews (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_id uuid NOT NULL REFERENCES public.products(id) ON DELETE CASCADE,
  user_id uuid REFERENCES auth.users(id) ON DELETE SET NULL,
  author_name text NOT NULL,
  rating int NOT NULL CHECK (rating BETWEEN 1 AND 5),
  title text,
  comment text,
  approved boolean NOT NULL DEFAULT false,
  created_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT ON public.reviews TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.reviews TO authenticated;
GRANT ALL ON public.reviews TO service_role;
ALTER TABLE public.reviews ENABLE ROW LEVEL SECURITY;
CREATE POLICY "reviews_public_read" ON public.reviews FOR SELECT USING (approved = true);
CREATE POLICY "reviews_own_read" ON public.reviews FOR SELECT TO authenticated USING (user_id = auth.uid() OR public.has_role(auth.uid(),'admin'));
CREATE POLICY "reviews_insert_own" ON public.reviews FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());
CREATE POLICY "reviews_admin_write" ON public.reviews FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

-- favorites
CREATE TABLE public.favorites (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  product_id uuid NOT NULL REFERENCES public.products(id) ON DELETE CASCADE,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, product_id)
);
GRANT SELECT, INSERT, DELETE ON public.favorites TO authenticated;
GRANT ALL ON public.favorites TO service_role;
ALTER TABLE public.favorites ENABLE ROW LEVEL SECURITY;
CREATE POLICY "favorites_own" ON public.favorites FOR ALL TO authenticated USING (user_id = auth.uid()) WITH CHECK (user_id = auth.uid());

-- coupons
CREATE TABLE public.coupons (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  description text,
  discount_type text NOT NULL DEFAULT 'percent',
  discount_value numeric(10,2) NOT NULL DEFAULT 0,
  min_order numeric(10,2) NOT NULL DEFAULT 0,
  free_shipping boolean NOT NULL DEFAULT false,
  active boolean NOT NULL DEFAULT true,
  expires_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT ON public.coupons TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.coupons TO authenticated;
GRANT ALL ON public.coupons TO service_role;
ALTER TABLE public.coupons ENABLE ROW LEVEL SECURITY;
CREATE POLICY "coupons_public_read" ON public.coupons FOR SELECT USING (active = true);
CREATE POLICY "coupons_admin_write" ON public.coupons FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

-- banners
CREATE TABLE public.banners (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  subtitle text,
  eyebrow text,
  cta_label text,
  cta_url text,
  image_url text,
  position int NOT NULL DEFAULT 0,
  active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT ON public.banners TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.banners TO authenticated;
GRANT ALL ON public.banners TO service_role;
ALTER TABLE public.banners ENABLE ROW LEVEL SECURITY;
CREATE POLICY "banners_public_read" ON public.banners FOR SELECT USING (true);
CREATE POLICY "banners_admin_write" ON public.banners FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

-- blog
CREATE TABLE public.posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  slug text NOT NULL UNIQUE,
  excerpt text,
  content text,
  cover_url text,
  tags text[] NOT NULL DEFAULT '{}',
  author text NOT NULL DEFAULT 'Equipe NEXLAR',
  published boolean NOT NULL DEFAULT true,
  published_at timestamptz NOT NULL DEFAULT now(),
  created_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT ON public.posts TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.posts TO authenticated;
GRANT ALL ON public.posts TO service_role;
ALTER TABLE public.posts ENABLE ROW LEVEL SECURITY;
CREATE POLICY "posts_public_read" ON public.posts FOR SELECT USING (published = true);
CREATE POLICY "posts_admin_write" ON public.posts FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

-- orders
CREATE TABLE public.orders (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_number text NOT NULL UNIQUE DEFAULT ('NX' || to_char(now(),'YYMMDD') || lpad((floor(random()*100000))::text,5,'0')),
  user_id uuid REFERENCES auth.users(id) ON DELETE SET NULL,
  customer_name text NOT NULL,
  customer_email text NOT NULL,
  customer_phone text,
  customer_cpf text,
  shipping_zip text,
  shipping_address text,
  shipping_number text,
  shipping_complement text,
  shipping_district text,
  shipping_city text,
  shipping_state text,
  shipping_method text,
  shipping_price numeric(10,2) NOT NULL DEFAULT 0,
  payment_method text NOT NULL DEFAULT 'pix',
  installments int NOT NULL DEFAULT 1,
  coupon_code text,
  discount numeric(10,2) NOT NULL DEFAULT 0,
  subtotal numeric(10,2) NOT NULL DEFAULT 0,
  total numeric(10,2) NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'pending',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE ON public.orders TO authenticated;
GRANT ALL ON public.orders TO service_role;
ALTER TABLE public.orders ENABLE ROW LEVEL SECURITY;
CREATE POLICY "orders_own_read" ON public.orders FOR SELECT TO authenticated USING (user_id = auth.uid() OR public.has_role(auth.uid(),'admin'));
CREATE POLICY "orders_insert_own" ON public.orders FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());
CREATE POLICY "orders_admin_write" ON public.orders FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

CREATE TABLE public.order_items (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES public.orders(id) ON DELETE CASCADE,
  product_id uuid REFERENCES public.products(id) ON DELETE SET NULL,
  product_name text NOT NULL,
  image_url text,
  variant text,
  unit_price numeric(10,2) NOT NULL DEFAULT 0,
  quantity int NOT NULL DEFAULT 1
);
GRANT SELECT, INSERT ON public.order_items TO authenticated;
GRANT ALL ON public.order_items TO service_role;
ALTER TABLE public.order_items ENABLE ROW LEVEL SECURITY;
CREATE POLICY "order_items_own_read" ON public.order_items FOR SELECT TO authenticated USING (EXISTS (SELECT 1 FROM public.orders o WHERE o.id = order_id AND (o.user_id = auth.uid() OR public.has_role(auth.uid(),'admin'))));
CREATE POLICY "order_items_insert_own" ON public.order_items FOR INSERT TO authenticated WITH CHECK (EXISTS (SELECT 1 FROM public.orders o WHERE o.id = order_id AND o.user_id = auth.uid()));

-- settings
CREATE TABLE public.settings (
  key text PRIMARY KEY,
  value jsonb NOT NULL DEFAULT '{}'::jsonb,
  updated_at timestamptz NOT NULL DEFAULT now()
);
GRANT SELECT ON public.settings TO anon;
GRANT SELECT, INSERT, UPDATE ON public.settings TO authenticated;
GRANT ALL ON public.settings TO service_role;
ALTER TABLE public.settings ENABLE ROW LEVEL SECURITY;
CREATE POLICY "settings_public_read" ON public.settings FOR SELECT USING (true);
CREATE POLICY "settings_admin_write" ON public.settings FOR ALL TO authenticated USING (public.has_role(auth.uid(),'admin')) WITH CHECK (public.has_role(auth.uid(),'admin'));

CREATE TRIGGER trg_products_updated BEFORE UPDATE ON public.products FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
CREATE TRIGGER trg_orders_updated BEFORE UPDATE ON public.orders FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
CREATE TRIGGER trg_profiles_updated BEFORE UPDATE ON public.profiles FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
CREATE INDEX idx_products_category ON public.products(category_id);
CREATE INDEX idx_images_product ON public.product_images(product_id);
