#!/usr/bin/env node
/**
 * Imports Panelux cookware from the manufacturer's official Nuxt SSR pages.
 * It does not use marketplaces, preserves other brands, and is idempotent by
 * official product URL/SKU.
 */
import fs from "node:fs/promises";
import vm from "node:vm";
import { basename, dirname, resolve } from "node:path";

const ROOT = resolve(dirname(new URL(import.meta.url).pathname), "..");
const CATALOG = resolve(ROOT, "src/lib/catalog-data.ts");
const BASE = "https://www.panelux.com.br";
const CREATED_AT = "2026-09-27T00:00:00.000Z";
const CONCURRENCY = 8;

// Official cookware routes exposed by Panelux's own navigation.
const CATEGORY_PATHS = [
  "/panelas",
  "/panelas/antiaderentes",
  "/panelas/aluminio",
  "/panelas/ceramica",
  "/panelas/inducao",
  "/panelas-de-pressao",
  "/panelas-de-pressao/3-litros",
  "/panelas-de-pressao/4-5-litros",
  "/panelas-de-pressao/7-litros",
  "/panelas-de-pressao/10-litros",
  "/panelas-de-pressao/15-litros",
  "/panelas-de-pressao/fechamento-interno",
  "/panelas-de-pressao/fechamento-externo",
  "/acessorios-para-panela-de-pressao",
  "/acessorios-para-panela-de-pressao/alca",
  "/acessorios-para-panela-de-pressao/borracha",
  "/acessorios-para-panela-de-pressao/reparo",
  "/acessorios-para-panela-de-pressao/pino-trava-panela-pressao",
  "/acessorios-para-panela-de-pressao/valvula-controladora-de-pressao",
  "/acessorios-para-panela-de-pressao/valvula-de-seguranca",
  "/frigideiras",
  "/frigideiras/antiaderentes",
  "/frigideiras/francesas",
  "/frigideiras/com-tampa",
  "/c/frigideira-22-cm",
  "/c/frigideira-24-cm",
  "/c/frigideira-28-cm",
  "/c/bistequeira",
  "/c/omeleteira",
  "/c/panquequeira",
  "/c/tapioqueira",
  "/woks",
  "/cacarolas",
  "/cacarolas/antiaderentes",
  "/cacarolas/aluminio",
  "/cuscuzeiras",
  "/c/cuscuzeira-aluminio",
  "/c/cuscuzeira-individual",
  "/pipoqueiras",
  "/c/pipoqueira-antiaderente",
  "/c/pipoqueira-com-tampa-de-vidro",
  "/leiteira",
  "/jogo-de-panelas",
  "/jogo-de-panelas/4-pecas",
  "/jogo-de-panelas/5-pecas",
  "/jogo-de-panelas/6-pecas",
  "/jogo-de-panelas/7-pecas",
  "/jogo-de-panelas/antiaderentes",
  "/jogo-de-panelas/aluminio",
  "/jogo-de-panelas/ceramica",
  "/c/linha-premium",
  "/c/linha-velutto-ceramic",
  "/c/linha-maximum",
  "/c/linha-magnific",
];

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));
function clean(value) {
  return String(value ?? "")
    .replace(/\s+/g, " ")
    .trim();
}
function stripHtml(value) {
  return clean(
    String(value ?? "")
      .replace(/<br\s*\/?>(?=.)/gi, " ")
      .replace(/<[^>]*>/g, " ")
      .replace(/&nbsp;/gi, " ")
      .replace(/&amp;/gi, "&"),
  );
}
function slugify(value) {
  return clean(value)
    .normalize("NFKD")
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "")
    .slice(0, 110);
}
function absUrl(url) {
  return url?.startsWith("http") ? url : new URL(url || "/", BASE).href;
}

async function fetchText(url, attempts = 4) {
  let last;
  for (let i = 0; i < attempts; i++) {
    try {
      const r = await fetch(url, {
        headers: {
          "user-agent": "Mozilla/5.0 (compatible; NexlarPaneluxSync/1.0)",
          accept: "text/html",
        },
      });
      if (!r.ok) throw new Error(`${r.status} ${r.statusText}`);
      return await r.text();
    } catch (e) {
      last = e;
      if (i + 1 < attempts) await sleep(800 * (i + 1));
    }
  }
  throw new Error(`${url}: ${last}`);
}

function parseNuxt(html) {
  const start = html.indexOf("<script>window.__NUXT__=");
  if (start < 0) throw new Error("Nuxt SSR state not found");
  const codeStart = start + "<script>".length;
  const end = html.indexOf("</script>", codeStart);
  if (end < 0) throw new Error("Nuxt SSR script end not found");
  const code = html.slice(codeStart, end);
  const context = { window: {}, console: { log() {}, warn() {}, error() {} } };
  vm.createContext(context);
  vm.runInContext(code, context, { timeout: 30_000 });
  return context.window.__NUXT__;
}

async function fetchListing(path, page) {
  const url = `${BASE}${path}${page === 1 ? "" : `?pg=${page}`}`;
  const state = parseNuxt(await fetchText(url));
  const pageData = state?.state?.dadosPageAtual;
  const info = pageData?.info || {};
  const products = pageData?.conteudo?.produtos || [];
  return {
    products,
    total: Number(info.total || products.length),
    limit: Number(info.limit || 12),
    url,
  };
}

async function collectListings() {
  const byId = new Map();
  let routeCount = 0;
  for (const path of CATEGORY_PATHS) {
    try {
      const first = await fetchListing(path, 1);
      const pages = Math.max(1, Math.ceil(first.total / first.limit));
      const all = [first];
      for (let page = 2; page <= pages; page++) {
        try {
          all.push(await fetchListing(path, page));
        } catch (e) {
          console.error(`falha ${path} pg=${page}: ${e.message}`);
        }
      }
      for (const batch of all)
        for (const product of batch.products) {
          if (product?.id && product?.url) byId.set(String(product.id), product);
        }
      routeCount++;
      console.log(
        `categoria ${path}: ${first.total} oficiais, ${pages} página(s), ${byId.size} produtos únicos`,
      );
    } catch (e) {
      console.error(`falha categoria ${path}: ${e.message}`);
    }
  }
  return { byId, routeCount };
}

function categoryFor(product) {
  const text =
    `${product.nome || ""} ${(product.filtros || []).map((x) => x.label || "").join(" ")}`.toLowerCase();
  if (/(indução|inducao)/.test(text)) return ["cat-panelas-de-inducao", "Panelas de Indução"];
  if (/(jogo|conjunto)/.test(text)) return ["cat-jogos-de-panelas", "Jogos de Panelas"];
  if (/(pressão|pressao)/.test(text)) return ["cat-panelas-de-pressao", "Panelas de Pressão"];
  if (/(frigideira|wok|grill|omeleteira|panquequeira|tapioqueira|bistequeira)/.test(text))
    return ["cat-frigideiras-e-woks", "Frigideiras, Woks & Grills"];
  if (/(caçarola|cacarola|panela|fervedor|leiteira)/.test(text))
    return ["cat-cacarolas-e-avulsas", "Caçarolas & Panelas Avulsas"];
  return ["cat-panelas-especiais", "Panelas Especiais"];
}

function productFromDetail(detail, listing) {
  const p = detail || listing;
  if (!p || String(p.marca?.nome || "").toLowerCase() !== "panelux") return null;
  const [categoryId, categoryName] = categoryFor(p);
  const sourceUrl = absUrl(p.url || listing?.url);
  const images = [];
  const seen = new Set();
  for (const image of p.midias?.imagens || []) {
    const url = absUrl(image?.arquivos?.zoom || image?.arquivosOriginais?.zoom);
    if (!url || seen.has(url)) continue;
    seen.add(url);
    images.push({
      id: `img-panelux-${p.id}-${images.length}`,
      url,
      alt: clean(p.nome),
      position: images.length,
    });
  }
  const specs = {
    Marca: "Panelux",
    "SKU Original": clean(p.sku),
    "Fonte oficial": sourceUrl,
  };
  if (p.ean) specs["EAN"] = clean(p.ean);
  if (p.categoria?.nome) specs["Categoria oficial"] = clean(p.categoria.nome);
  for (const f of p.filtros || []) if (f?.nome && f?.label) specs[clean(f.nome)] = clean(f.label);
  const characteristics = p.caracteristicas;
  if (Array.isArray(characteristics))
    for (const item of characteristics) {
      if (item?.nome && item?.valor) specs[clean(item.nome)] = clean(item.valor);
    }
  const desc = p.descricoes || {};
  const price = Number(p.precos?.por || 0);
  const compare = Number(p.precos?.de || 0);
  return {
    id: `prod-panelux-${p.id}`,
    name: clean(p.nome),
    slug: slugify(p.nome),
    brand: "Panelux",
    sku: p.sku ? `PANELUX-${clean(p.sku)}` : `PANELUX-${p.id}`,
    short_description: clean(desc.curta || desc.simples || p.adicionalNome || p.nome).slice(0, 500),
    description: stripHtml(desc.longa || desc.simples || desc.curta || p.adicionalNome || p.nome),
    category_id: categoryId,
    price,
    compare_at_price: compare > price ? compare : null,
    pix_discount_percent: Number(p.precos?.descontoVista || 0),
    stock: Number(p.estoque || 0),
    rating: Number(p.avaliacao?.media || 0),
    reviews_count: Number(p.avaliacao?.quantidade || 0),
    review_count: Number(p.avaliacao?.quantidade || 0),
    free_shipping: false,
    featured: false,
    is_new: false,
    active: p.status !== "indisponivel",
    highlights: [],
    specs,
    created_at: CREATED_AT,
    source_url: sourceUrl,
    product_images: images,
    categories: { name: categoryName, slug: categoryId.replace(/^cat-/, "") },
  };
}

async function fetchDetail(listing) {
  try {
    const state = parseNuxt(await fetchText(absUrl(listing.url)));
    const detail = state?.state?.dadosPageAtual?.conteudo;
    return productFromDetail(detail, listing);
  } catch (e) {
    console.error(`detalhe fallback ${listing.url}: ${e.message}`);
    return productFromDetail(null, listing);
  }
}

async function mapConcurrent(items, fn) {
  const results = [];
  let next = 0;
  async function worker() {
    while (true) {
      const i = next++;
      if (i >= items.length) return;
      try {
        results[i] = await fn(items[i], i);
      } catch (e) {
        console.error(`falha item ${i}: ${e.message}`);
      }
    }
  }
  await Promise.all(Array.from({ length: Math.min(CONCURRENCY, items.length) }, worker));
  return results.filter(Boolean);
}

function readArray(source, marker) {
  const start = source.indexOf(marker) + marker.length;
  const end = source.indexOf("\n];", start) + 2;
  return JSON.parse(source.slice(start, end));
}
async function writeCatalog(categories, banners, products) {
  let out = 'import type { Banner, Category, Product } from "./types";\n\n';
  out += `export const CATEGORIES: Category[] = ${JSON.stringify(categories, null, 2)};\n\n`;
  out += `export const BANNERS: Banner[] = ${JSON.stringify(banners, null, 2)};\n\n`;
  out += `export const PRODUCTS: Product[] = ${JSON.stringify(products, null, 2)};\n`;
  out += `export function getLocalCategories(): Category[] { return CATEGORIES; }\nexport function getLocalCategoryBySlug(slug: string): Category | undefined { return CATEGORIES.find((c) => c.slug === slug || c.id === slug); }\nexport function getLocalBanners(): Banner[] { return BANNERS; }\nexport function getLocalProducts(filter?: "featured" | "new" | "offers"): Product[] { let list = PRODUCTS; if (filter === "featured") list = list.filter((p) => p.featured); if (filter === "new") list = list.filter((p) => p.is_new); if (filter === "offers") list = list.filter((p) => p.compare_at_price && p.compare_at_price > p.price); return list; }\nexport function getLocalProductsByCategory(categorySlugOrId: string): Product[] { const cat = CATEGORIES.find((c) => c.slug === categorySlugOrId || c.id === categorySlugOrId); if (!cat) return []; return PRODUCTS.filter((p) => p.category_id === cat.id || p.categories?.slug === cat.slug); }\nexport function getLocalProductBySlug(slug: string): Product | undefined { return PRODUCTS.find((p) => p.slug === slug || p.id === slug || p.sku === slug); }\nexport function searchLocalProducts(term: string): Product[] { const q = term.toLowerCase().trim(); if (!q) return []; return PRODUCTS.filter((p) => p.name.toLowerCase().includes(q) || p.short_description?.toLowerCase().includes(q) || p.categories?.name.toLowerCase().includes(q) || p.highlights.some((h) => h.toLowerCase().includes(q))); }\n`;
  await fs.writeFile(CATALOG, out);
}

const source = await fs.readFile(CATALOG, "utf8");
const categories = readArray(source, "export const CATEGORIES: Category[] = ");
const banners = readArray(source, "export const BANNERS: Banner[] = ");
const existing = readArray(source, "export const PRODUCTS: Product[] = ");
const { byId, routeCount } = await collectListings();
const listings = [...byId.values()];
const imported = await mapConcurrent(listings, async (listing, i) => {
  if ((i + 1) % 20 === 0) console.log(`detalhes Panelux: ${i + 1}/${listings.length}`);
  return fetchDetail(listing);
});
const existingBySource = new Map(
  existing.filter((p) => p.source_url).map((p) => [p.source_url, p]),
);
const existingBySku = new Map(
  existing.filter((p) => p.sku).map((p) => [String(p.sku).toUpperCase(), p]),
);
let added = 0,
  updated = 0;
for (const product of imported) {
  const current =
    existingBySource.get(product.source_url) ||
    existingBySku.get(String(product.sku).toUpperCase());
  if (current) {
    Object.assign(current, product);
    updated++;
  } else {
    existing.push(product);
    added++;
  }
}
await writeCatalog(categories, banners, existing);
console.log(
  JSON.stringify(
    {
      official_routes: routeCount,
      official_listing_products: listings.length,
      panelux_imported: imported.length,
      added,
      updated,
      total_products: existing.length,
    },
    null,
    2,
  ),
);
