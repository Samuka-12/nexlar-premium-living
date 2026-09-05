export type Category = {
  id: string;
  name: string;
  slug: string;
  description: string | null;
  image_url: string | null;
  position: number;
};

export type ProductImage = { id: string; url: string; alt: string | null; position: number };

export type ProductVariant = {
  id: string;
  name: string;
  value: string;
  hex: string | null;
  price_delta: number;
  stock: number;
};

export type Product = {
  id: string;
  name: string;
  slug: string;
  sku: string | null;
  short_description: string | null;
  description: string | null;
  category_id: string | null;
  price: number;
  compare_at_price: number | null;
  pix_discount_percent: number;
  stock: number;
  rating: number;
  reviews_count: number;
  free_shipping: boolean;
  featured: boolean;
  is_new: boolean;
  active: boolean;
  highlights: string[];
  specs: Record<string, string>;
  created_at: string;
  product_images?: ProductImage[];
  product_variants?: ProductVariant[];
  categories?: { name: string; slug: string } | null;
};

export type Review = {
  id: string;
  product_id: string;
  author_name: string;
  rating: number;
  title: string | null;
  comment: string | null;
  approved: boolean;
  created_at: string;
};

export type Coupon = {
  id: string;
  code: string;
  description: string | null;
  discount_type: string;
  discount_value: number;
  min_order: number;
  free_shipping: boolean;
  active: boolean;
};

export type Banner = {
  id: string;
  title: string;
  subtitle: string | null;
  eyebrow: string | null;
  cta_label: string | null;
  cta_url: string | null;
  image_url: string | null;
  active: boolean;
  position: number;
};

export type Post = {
  id: string;
  title: string;
  slug: string;
  excerpt: string | null;
  content: string | null;
  cover_url: string | null;
  tags: string[];
  author: string;
  published: boolean;
  published_at: string;
};

export type Order = {
  id: string;
  order_number: string;
  customer_name: string;
  customer_email: string;
  payment_method: string;
  status: string;
  subtotal: number;
  discount: number;
  shipping_price: number;
  total: number;
  created_at: string;
  shipping_city?: string | null;
  shipping_state?: string | null;
  order_items?: OrderItem[];
};

export type OrderItem = {
  id: string;
  product_name: string;
  image_url: string | null;
  variant: string | null;
  unit_price: number;
  quantity: number;
};

export const productSelect =
  "*, product_images(id,url,alt,position), product_variants(id,name,value,hex,price_delta,stock), categories(name,slug)";

export function primaryImage(product: Product) {
  const images = [...(product.product_images ?? [])].sort((a, b) => a.position - b.position);
  return images[0]?.url ?? "https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=800";
}

export function sortedImages(product: Product) {
  const images = [...(product.product_images ?? [])].sort((a, b) => a.position - b.position);
  return images.length ? images : [];
}
