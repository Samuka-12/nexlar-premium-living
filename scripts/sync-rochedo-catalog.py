#!/usr/bin/env python3
"""Import cookware products from Rochedo's official VTEX storefront.

Only products whose official brand is Rochedo and which are found in the selected
cookware categories are imported. Existing products and categories are preserved;
Rochedo rows are updated by source reference instead of duplicated.
"""
from __future__ import annotations

import html
import json
import re
import sys
import time
import unicodedata
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
from urllib.parse import urljoin

import requests
from bs4 import BeautifulSoup

ROOT = Path(__file__).resolve().parents[1]
CATALOG_FILE = ROOT / "src/lib/catalog-data.ts"
BASE = "https://www.arno.com.br"
CATEGORY_URLS = {
    "jogos-de-panelas": BASE + "/rochedo/jogos-de-panelas",
    "cacarolas-e-avulsas": BASE + "/rochedo/panelas",
    "frigideiras-e-woks": BASE + "/rochedo/frigideiras",
    "panelas-de-pressao": BASE + "/rochedo/panelas-de-pressao",
}
CATEGORY_BY_SLUG = {
    "jogos-de-panelas": ("cat-jogos-de-panelas", "Jogos de Panelas"),
    "cacarolas-e-avulsas": ("cat-cacarolas-e-avulsas", "Caçarolas & Panelas Avulsas"),
    "frigideiras-e-woks": ("cat-frigideiras-e-woks", "Frigideiras, Woks & Grills"),
    "panelas-de-pressao": ("cat-panelas-de-pressao", "Panelas de Pressão"),
    "panelas-especiais": ("cat-panelas-especiais", "Panelas Especiais"),
    "panelas-de-inducao": ("cat-panelas-de-inducao", "Panelas de Indução"),
}


def clean(value: str | None) -> str:
    return " ".join(html.unescape(value or "").split()).strip()


def strip_html(value: str | None) -> str:
    return clean(BeautifulSoup(value or "", "html.parser").get_text(" ", strip=True))


def slugify(value: str) -> str:
    value = unicodedata.normalize("NFKD", value).encode("ascii", "ignore").decode().lower()
    return re.sub(r"[^a-z0-9]+", "-", value).strip("-")[:110]


def ref(cache: dict, value):
    if isinstance(value, dict) and value.get("id") in cache:
        return cache[value["id"]]
    return value


def category_for(name: str, discovered: list[str]) -> str:
    n = clean(name).lower()
    if "panela de pressão" in n or "pressão" in n:
        return "panelas-de-pressao"
    if "jogo de panela" in n or "conjunto" in n or any("jogos-de-panelas" == x for x in discovered):
        return "jogos-de-panelas"
    if "frigideira" in n or "wok" in n:
        return "frigideiras-e-woks"
    if "indução" in n or "inducao" in n:
        return "panelas-de-inducao"
    if any(x in n for x in ("caçarola", "panela", "fervedor", "leiteira")):
        return "cacarolas-e-avulsas"
    return discovered[0] if discovered else "panelas-especiais"


def fetch_category_products(session: requests.Session, base_url: str) -> dict[str, dict]:
    found: dict[str, dict] = {}
    for page in range(1, 50):
        url = base_url if page == 1 else f"{base_url}?page={page}"
        for attempt in range(4):
            try:
                response = session.get(url, timeout=60)
                response.raise_for_status()
                break
            except Exception as exc:
                if attempt == 3:
                    print(f"falha categoria {url}: {exc}", file=sys.stderr)
                    response = None
                time.sleep(1.5 * (attempt + 1))
        if response is None:
            continue
        soup = BeautifulSoup(response.text, "html.parser")
        page_items: list[dict] = []
        for tag in soup.find_all("script", type="application/ld+json"):
            try:
                data = json.loads(tag.string or tag.get_text())
            except Exception:
                continue
            if not isinstance(data, dict) or data.get("@type") != "ItemList":
                continue
            for entry in data.get("itemListElement", []):
                item = entry.get("item") or {}
                product_url = item.get("@id") or item.get("url")
                if product_url:
                    page_items.append({"url": product_url, "name": clean(item.get("name"))})
        unique_page = {x["url"]: x for x in page_items}
        before = len(found)
        for product_url, item in unique_page.items():
            found.setdefault(product_url, {**item, "categories": []})
            if base_url.rstrip("/").endswith("/jogos-de-panelas"):
                category = "jogos-de-panelas"
            elif base_url.rstrip("/").endswith("/frigideiras"):
                category = "frigideiras-e-woks"
            elif base_url.rstrip("/").endswith("/panelas-de-pressao"):
                category = "panelas-de-pressao"
            else:
                category = "cacarolas-e-avulsas"
            found[product_url]["categories"].append(category)
        print(f"categoria {base_url.rsplit('/', 1)[-1]} página {page}: {len(unique_page)} itens, {len(found)} únicos", flush=True)
        if not unique_page or len(found) == before:
            break
    return found


def parse_product_page(text: str, source_url: str, discovered: list[str]) -> dict | None:
    soup = BeautifulSoup(text, "html.parser")
    state = None
    for tag in soup.find_all("script"):
        raw = tag.string or tag.get_text()
        if raw and raw.lstrip().startswith("{") and '"ROOT_QUERY"' in raw and '"Product:' in raw:
            try:
                state = json.loads(raw)
                break
            except json.JSONDecodeError:
                continue
    if not state:
        return None
    product = next((v for k, v in state.items() if k.startswith("Product:") and isinstance(v, dict) and v.get("productName")), None)
    if not product or clean(product.get("brand")).lower() != "rochedo":
        return None
    product_key = next((k for k, v in state.items() if v is product), "")
    items = [ref(state, x) for x in product.get("items", [])]
    item = items[0] if items else {}
    if not item:
        return None
    reference = ""
    for reference_ref in item.get("referenceId", []):
        reference_obj = ref(state, reference_ref)
        if reference_obj and reference_obj.get("Value"):
            reference = clean(reference_obj["Value"])
            break
    reference = reference or clean(product.get("productReference")) or clean(product.get("productId"))
    if not reference:
        return None

    images = []
    seen_images: set[str] = set()
    for image_ref in item.get("images", []):
        image = ref(state, image_ref)
        url = clean(image.get("imageUrl") if isinstance(image, dict) else "")
        if not url or url in seen_images:
            continue
        seen_images.add(url)
        images.append({"id": f"img-roch-{reference}-{len(images)}", "url": url, "alt": clean(image.get("imageLabel")) or clean(product.get("productName")), "position": len(images)})

    offer = {}
    sellers = [ref(state, x) for x in item.get("sellers", [])]
    if sellers:
        offer = ref(state, sellers[0].get("commertialOffer")) or {}
    price = offer.get("Price")
    list_price = offer.get("ListPrice")
    if price is None:
        price_ref = ref(state, product.get("priceRange", {}).get("id")) if isinstance(product.get("priceRange"), dict) else {}
        selling = ref(state, price_ref.get("sellingPrice")) if isinstance(price_ref, dict) else {}
        price = selling.get("lowPrice") if isinstance(selling, dict) else None
        listed = ref(state, price_ref.get("listPrice")) if isinstance(price_ref, dict) else {}
        list_price = listed.get("lowPrice") if isinstance(listed, dict) else None
    try:
        price = float(price) if price is not None else 0
        list_price = float(list_price) if list_price is not None else None
    except (TypeError, ValueError):
        price, list_price = 0, None
    if list_price is not None and list_price <= price:
        list_price = None

    specs: dict[str, str] = {}
    for property_ref in product.get("properties", []):
        prop = ref(state, property_ref)
        if not isinstance(prop, dict) or not prop.get("name"):
            continue
        values = prop.get("values", {})
        values = values.get("json", []) if isinstance(values, dict) else values
        if not isinstance(values, list):
            values = [values]
        value = "; ".join(clean(str(x)) for x in values if clean(str(x)))
        if value:
            specs[clean(prop["name"])] = value
    for group_ref in product.get("specificationGroups", []):
        group = ref(state, group_ref)
        if not isinstance(group, dict):
            continue
        for spec_ref in group.get("specifications", []):
            spec = ref(state, spec_ref)
            if not isinstance(spec, dict) or not spec.get("name"):
                continue
            values = spec.get("values", [])
            if not isinstance(values, list):
                values = [values]
            value = "; ".join(clean(str(x)) for x in values if clean(str(x)))
            if value:
                specs.setdefault(clean(spec["name"]), value)
    name = clean(product.get("productName"))
    description = strip_html(product.get("description"))
    category_slug = category_for(name, discovered)
    category_id, category_name = CATEGORY_BY_SLUG[category_slug]
    specs.update({"Marca": "Rochedo", "SKU Original": reference, "Fonte oficial": source_url})
    return {
        "id": f"prod-roch-{slugify(reference)}", "name": name, "slug": slugify(name), "brand": "Rochedo",
        "sku": f"ROCH-{reference}", "short_description": description[:240] or name, "description": description,
        "category_id": category_id, "price": price, "compare_at_price": list_price, "pix_discount_percent": 0,
        "stock": int(offer.get("AvailableQuantity") or 0), "rating": 0, "reviews_count": 0,
        "free_shipping": False, "featured": False, "is_new": False, "active": True,
        "highlights": [], "specs": specs, "created_at": "2026-09-27T00:00:00.000Z",
        "product_images": images, "categories": {"name": category_name, "slug": category_slug}, "source_url": source_url,
    }


def read_catalog() -> tuple[list, list, list]:
    source = CATALOG_FILE.read_text()
    def array_after(marker: str):
        start = source.index(marker) + len(marker)
        end = source.index("\n];", start) + 2
        return json.loads(source[start:end])
    return array_after("export const CATEGORIES: Category[] = "), array_after("export const BANNERS: Banner[] = "), array_after("export const PRODUCTS: Product[] = ")


def main() -> None:
    categories, banners, products = read_catalog()
    session = requests.Session()
    session.headers.update({"User-Agent": "Mozilla/5.0 (compatible; NexlarRochedoSync/1.0)"})
    listing_by_url: dict[str, dict] = {}
    for category_url in CATEGORY_URLS.values():
        for url, item in fetch_category_products(session, category_url).items():
            listing_by_url.setdefault(url, item)
    parsed: list[dict] = []
    with ThreadPoolExecutor(max_workers=6) as executor:
        futures = {executor.submit(fetch_product, item["url"], item.get("categories", [])): item["url"] for item in listing_by_url.values()}
        for done, future in enumerate(as_completed(futures), 1):
            try:
                product = future.result()
                if product:
                    parsed.append(product)
            except Exception as exc:
                print(f"falha produto {futures[future]}: {exc}", file=sys.stderr)
            if done % 20 == 0 or done == len(futures):
                print(f"produtos Rochedo processados: {done}/{len(futures)}", flush=True)
    existing_by_sku = {str(p.get("sku", "")).upper(): p for p in products if p.get("sku")}
    existing_by_source = {p.get("source_url"): p for p in products if p.get("source_url")}
    added = updated = 0
    for product in parsed:
        current = existing_by_sku.get(product["sku"].upper()) or existing_by_source.get(product["source_url"])
        if current:
            current.update(product)
            updated += 1
        else:
            products.append(product)
            added += 1
    output = 'import type { Banner, Category, Product } from "./types";\n\n'
    output += "export const CATEGORIES: Category[] = " + json.dumps(categories, ensure_ascii=False, indent=2) + ";\n\n"
    output += "export const BANNERS: Banner[] = " + json.dumps(banners, ensure_ascii=False, indent=2) + ";\n\n"
    output += "export const PRODUCTS: Product[] = " + json.dumps(products, ensure_ascii=False, indent=2) + ";\n"
    output += '''export function getLocalCategories(): Category[] { return CATEGORIES; }\nexport function getLocalCategoryBySlug(slug: string): Category | undefined { return CATEGORIES.find((c) => c.slug === slug || c.id === slug); }\nexport function getLocalBanners(): Banner[] { return BANNERS; }\nexport function getLocalProducts(filter?: "featured" | "new" | "offers"): Product[] {\n  let list = PRODUCTS;\n  if (filter === "featured") list = list.filter((p) => p.featured);\n  if (filter === "new") list = list.filter((p) => p.is_new);\n  if (filter === "offers") list = list.filter((p) => p.compare_at_price && p.compare_at_price > p.price);\n  return list;\n}\nexport function getLocalProductsByCategory(categorySlugOrId: string): Product[] {\n  const cat = CATEGORIES.find((c) => c.slug === categorySlugOrId || c.id === categorySlugOrId);\n  if (!cat) return [];\n  return PRODUCTS.filter((p) => p.category_id === cat.id || p.categories?.slug === cat.slug);\n}\nexport function getLocalProductBySlug(slug: string): Product | undefined { return PRODUCTS.find((p) => p.slug === slug || p.id === slug || p.sku === slug); }\nexport function searchLocalProducts(term: string): Product[] {\n  const q = term.toLowerCase().trim();\n  if (!q) return [];\n  return PRODUCTS.filter((p) => p.name.toLowerCase().includes(q) || p.short_description?.toLowerCase().includes(q) || p.categories?.name.toLowerCase().includes(q) || p.highlights.some((h) => h.toLowerCase().includes(q)));\n}\n'''
    CATALOG_FILE.write_text(output)
    print(json.dumps({"official_listings": len(listing_by_url), "rochedo_parsed": len(parsed), "added": added, "updated": updated, "total_products": len(products)}, ensure_ascii=False))


def fetch_product(url: str, discovered: list[str]) -> dict | None:
    session = requests.Session()
    session.headers.update({"User-Agent": "Mozilla/5.0 (compatible; NexlarRochedoSync/1.0)"})
    last_error = None
    for attempt in range(4):
        try:
            response = session.get(url, timeout=60)
            response.raise_for_status()
            return parse_product_page(response.text, url, discovered)
        except Exception as exc:
            last_error = exc
            time.sleep(1.5 * (attempt + 1))
    print(f"falha permanente {url}: {last_error}", file=sys.stderr)
    return None


if __name__ == "__main__":
    main()
