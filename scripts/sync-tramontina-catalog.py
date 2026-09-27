#!/usr/bin/env python3
"""Incrementally sync cookware from Tramontina's official catalog into catalog-data.ts.

The script never removes existing products or categories. Existing product prices and
working images are preserved; official data is used only to fill missing images and to
classify Tramontina products by their actual product type.
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
BASE = "https://www.tramontina.com.br"
GRID = BASE + "/on/demandware.store/Sites-Tramontina-BR-Site/pt_BR/Search-UpdateGrid?cgid=2823&start={start}&sz=12"
CATALOG_PAGE = BASE + "/pan elas.html".replace(" ", "")

CATEGORY_BY_SLUG = {
    "jogos-de-panelas": ("cat-jogos-de-panelas", "Jogos de Panelas"),
    "panelas-de-pressao": ("cat-panelas-de-pressao", "Panelas de Pressão"),
    "frigideiras-e-woks": ("cat-frigideiras-e-woks", "Frigideiras, Woks & Grills"),
    "cacarolas-e-avulsas": ("cat-cacarolas-e-avulsas", "Caçarolas & Panelas Avulsas"),
    "panelas-especiais": ("cat-panelas-especiais", "Panelas Especiais"),
    "panelas-de-inducao": ("cat-panelas-de-inducao", "Panelas de Indução"),
    "chaleiras": ("cat-chaleiras", "Chaleiras"),
}

COOKWARE_TERMS = (
    "panela", "caçarola", "caldeirão", "frigideira", "wok", "panquequeira",
    "omeleteira", "grill", "pipoqueira", "bistequeira", "paellera", "cuscuzeira",
    "chaleira", "fervedor", "cozi-vapore", "cozi-pasta", "espagueteira",
    "fritadeira multiuso", "jogo de frigideiras",
)
EXCLUDED_TERMS = (
    "anel de vedação", "válvula", "cabo removível", "tampa avulsa", "haste para pipoqueira",
    "peça de reposição", "acessório", "kit cozinha",
)


def clean(value: str | None) -> str:
    return " ".join(html.unescape(value or "").split()).strip()


def slugify(value: str) -> str:
    value = unicodedata.normalize("NFKD", value).encode("ascii", "ignore").decode().lower()
    return re.sub(r"[^a-z0-9]+", "-", value).strip("-")[:100]


def parse_brl(value: str | None) -> float | None:
    if not value:
        return None
    match = re.search(r"R\$\s*([\d.]+,\d{2})", clean(value))
    if not match:
        return None
    return float(match.group(1).replace(".", "").replace(",", "."))


def classify(name: str) -> str:
    n = clean(name).lower()
    if "panela de pressão" in n:
        return "panelas-de-pressao"
    if "chaleira" in n:
        return "chaleiras"
    if "induction" in n or "indução" in n:
        return "panelas-de-inducao"
    if "jogo de panelas" in n or (n.startswith("kit ") and "panela" in n):
        return "jogos-de-panelas"
    if any(term in n for term in ("frigideira", "wok", "panquequeira", "omeleteira", "grill", "fritadeira multiuso")):
        return "frigideiras-e-woks"
    if any(term in n for term in ("pipoqueira", "bistequeira", "paellera", "cuscuzeira", "cozi-vapore", "cozi-pasta", "espagueteira")):
        return "panelas-especiais"
    if any(term in n for term in ("panela", "caçarola", "caldeirão", "fervedor")):
        return "cacarolas-e-avulsas"
    return "panelas-especiais"


def is_cookware(name: str) -> bool:
    n = clean(name).lower()
    return any(term in n for term in COOKWARE_TERMS) and not any(term in n for term in EXCLUDED_TERMS)


def extract_listing(tile) -> dict | None:
    pid = clean(tile.get("data-pid"))
    image = tile.select_one("img.productTile__imageWrapper__img")
    anchor = tile.select_one("h2.tr-productTile__name a")
    if not pid or not anchor:
        return None
    name = clean(anchor.get("title") or anchor.get_text(" ", strip=True))
    if not name or not is_cookware(name):
        return None
    href = urljoin(BASE, anchor.get("href") or "")
    image_url = (image.get("data-src") or image.get("src") or "") if image else ""
    price_node = tile.select_one(".tr-productPrice__price")
    old_node = tile.select_one(".tr-productPrice__oldPrice")
    rating_node = tile.select_one(".tr-productRatings .screen-reader-only")
    return {
        "pid": pid,
        "name": name,
        "url": href,
        "image": image_url,
        "price": parse_brl(price_node.get_text(" ", strip=True) if price_node else ""),
        "compare_at_price": parse_brl(old_node.get("data-list-value") if old_node else ""),
        "rating": float((re.search(r"([0-5](?:[,.]\d)?)", clean(rating_node.get_text(" ", strip=True) if rating_node else "")) or ["0"])[1].replace(",", ".")),
    }


def fetch_listing() -> list[dict]:
    session = requests.Session()
    session.headers.update({"User-Agent": "Mozilla/5.0 (compatible; NexlarCatalogSync/1.0)", "X-Requested-With": "XMLHttpRequest"})
    found: dict[str, dict] = {}
    for start in range(0, 900, 12):
        last_error = None
        for attempt in range(5):
            try:
                response = session.get(GRID.format(start=start), timeout=60)
                response.raise_for_status()
                tiles = BeautifulSoup(response.text, "html.parser").select('.tr-gridTile[data-pid]')
                if not tiles:
                    return list(found.values())
                for tile in tiles:
                    item = extract_listing(tile)
                    if item:
                        found[item["pid"]] = item
                print(f"lote {start}: {len(tiles)} itens, {len(found)} produtos elegíveis", flush=True)
                break
            except Exception as exc:  # retry transient CDN/TLS failures
                last_error = exc
                time.sleep(1.5 * (attempt + 1))
        else:
            print(f"falha permanente no lote {start}: {last_error}", file=sys.stderr)
    return list(found.values())


def extract_gallery(response_text: str, pid: str, fallback: str = "") -> list[dict]:
    """Read only the product gallery, never recommendation/description/banner images."""
    soup = BeautifulSoup(response_text, "html.parser")
    gallery = soup.select(f"#pdpCarousel-{pid} ul.productImages li.productImages__item img")
    seen: set[str] = set()
    images: list[dict] = []
    for image in gallery:
        url = clean(image.get("src") or image.get("data-src"))
        if not url or url in seen:
            continue
        seen.add(url)
        images.append({
            "id": f"img-{pid}-{len(images)}",
            "url": url,
            "alt": clean(image.get("alt")) or None,
            "position": len(images),
        })
    if images:
        return images
    if fallback:
        return [{"id": f"img-{pid}-0", "url": fallback, "alt": None, "position": 0}]
    return []


def fetch_product_gallery(item: dict) -> tuple[str, list[dict]]:
    """Fetch one product page and return only its gallery; retries transient errors."""
    session = requests.Session()
    session.headers.update({"User-Agent": "Mozilla/5.0 (compatible; NexlarCatalogGallery/1.0)"})
    last_error = None
    for attempt in range(4):
        try:
            response = session.get(item["url"], timeout=60)
            response.raise_for_status()
            return item["pid"], extract_gallery(response.text, item["pid"], item.get("image", ""))
        except Exception as exc:
            last_error = exc
            time.sleep(1.5 * (attempt + 1))
    print(f"falha na galeria {item['pid']}: {last_error}", file=sys.stderr)
    return item["pid"], []


def fetch_galleries(listings: list[dict]) -> dict[str, list[dict]]:
    galleries: dict[str, list[dict]] = {}
    with ThreadPoolExecutor(max_workers=8) as executor:
        futures = [executor.submit(fetch_product_gallery, item) for item in listings]
        for done, future in enumerate(as_completed(futures), 1):
            pid, images = future.result()
            galleries[pid] = images
            if done % 25 == 0 or done == len(futures):
                print(f"galerias processadas: {done}/{len(futures)}", flush=True)
    return galleries


def read_catalog() -> tuple[list, list, list]:
    source = CATALOG_FILE.read_text()
    def array_after(marker: str):
        start = source.index(marker) + len(marker)
        end = source.index("\n];", start) + 2
        return json.loads(source[start:end])
    return array_after("export const CATEGORIES: Category[] = "), array_after("export const BANNERS: Banner[] = "), array_after("export const PRODUCTS: Product[] = ")


def normalize_specs(product: dict) -> dict[str, str]:
    specs = product.get("specs") or {}
    if isinstance(specs, dict):
        return {str(k): str(v) for k, v in specs.items() if v not in (None, "")}
    if isinstance(specs, list):
        return {str(x.get("key")): str(x.get("value")) for x in specs if isinstance(x, dict) and x.get("key") and x.get("value") not in (None, "")}
    return {}


def make_product(item: dict, category_slug: str, used_slugs: set[str]) -> dict:
    pid = item["pid"]
    category_id, category_name = CATEGORY_BY_SLUG[category_slug]
    slug = slugify(item["name"])
    if slug in used_slugs:
        slug = f"{slug}-{pid}"
    used_slugs.add(slug)
    price = item["price"] or 0
    compare = item["compare_at_price"] if item["compare_at_price"] and item["compare_at_price"] > price else None
    specs = {
        "Marca": "Tramontina",
        "SKU Original": pid,
        "Fonte oficial": item["url"],
    }
    return {
        "id": f"prod-tram-{pid}", "name": item["name"], "slug": slug, "brand": "Tramontina",
        "sku": f"TRAM-{pid}",
        "short_description": f"{item['name']}. Produto oficial Tramontina.",
        "description": f"{item['name']}. Consulte as informações oficiais do fabricante na fonte vinculada.",
        "category_id": category_id, "price": price, "compare_at_price": compare,
        "pix_discount_percent": 0, "stock": 0, "rating": item["rating"], "reviews_count": 0,
        "free_shipping": False, "featured": False, "is_new": True, "active": True,
        "highlights": ["Produto oficial Tramontina"], "specs": specs,
        "created_at": "2026-09-27T00:00:00.000Z",
        "product_images": ([{"id": f"img-{pid}-0", "url": item["image"], "alt": item["name"], "position": 0}] if item["image"] else []),
        "categories": {"name": category_name, "slug": category_slug}, "source_url": item["url"],
    }


def main() -> None:
    categories, banners, products = read_catalog()
    listings = fetch_listing()
    galleries = fetch_galleries(listings)
    existing_by_sku = {str(p.get("sku", "")).upper(): p for p in products if p.get("sku")}
    existing_tram = {re.sub(r"^TRAM-", "", sku): p for sku, p in existing_by_sku.items() if sku.startswith("TRAM-")}
    used_slugs = {p.get("slug", "") for p in products}
    added = 0
    reclassified = 0
    images_filled = 0
    for item in listings:
        category_slug = classify(item["name"])
        category_id, category_name = CATEGORY_BY_SLUG[category_slug]
        product = existing_tram.get(item["pid"])
        official_gallery = galleries.get(item["pid"], [])
        if product:
            specs = normalize_specs(product)
            if specs != product.get("specs"):
                product["specs"] = specs
            if product.get("category_id") != category_id or (product.get("categories") or {}).get("slug") != category_slug:
                product["category_id"] = category_id
                product["categories"] = {"name": category_name, "slug": category_slug}
                reclassified += 1
            current_images = product.get("product_images") or product.get("images") or []
            if official_gallery and official_gallery != current_images:
                product["product_images"] = official_gallery
                images_filled += 1
            product.setdefault("brand", "Tramontina")
            product.setdefault("source_url", item["url"])
        else:
            new_product = make_product(item, category_slug, used_slugs)
            if official_gallery:
                new_product["product_images"] = official_gallery
            products.append(new_product)
            added += 1
    # Normalize legacy rows without changing commercial values or other brands.
    for product in products:
        product.setdefault("pix_discount_percent", 0)
        product.setdefault("reviews_count", product.get("review_count", 0))
        product.setdefault("free_shipping", False)
        product.setdefault("active", True)
        product.setdefault("created_at", "2026-09-27T00:00:00.000Z")
        if str(product.get("brand") or (normalize_specs(product).get("Marca", ""))).lower() == "tramontina":
            specs = normalize_specs(product)
            product["specs"] = specs
            category_slug = (product.get("categories") or {}).get("slug")
            if category_slug in CATEGORY_BY_SLUG:
                category_id, category_name = CATEGORY_BY_SLUG[category_slug]
                product["category_id"] = category_id
                product["categories"] = {"name": category_name, "slug": category_slug}
    output = 'import type { Banner, Category, Product } from "./types";\n\n'
    output += "export const CATEGORIES: Category[] = " + json.dumps(categories, ensure_ascii=False, indent=2) + ";\n\n"
    output += "export const BANNERS: Banner[] = " + json.dumps(banners, ensure_ascii=False, indent=2) + ";\n\n"
    output += "export const PRODUCTS: Product[] = " + json.dumps(products, ensure_ascii=False, indent=2) + ";\n"
    output += '''export function getLocalCategories(): Category[] { return CATEGORIES; }\nexport function getLocalCategoryBySlug(slug: string): Category | undefined { return CATEGORIES.find((c) => c.slug === slug || c.id === slug); }\nexport function getLocalBanners(): Banner[] { return BANNERS; }\nexport function getLocalProducts(filter?: "featured" | "new" | "offers"): Product[] {\n  let list = PRODUCTS;\n  if (filter === "featured") list = list.filter((p) => p.featured);\n  if (filter === "new") list = list.filter((p) => p.is_new);\n  if (filter === "offers") list = list.filter((p) => p.compare_at_price && p.compare_at_price > p.price);\n  return list;\n}\nexport function getLocalProductsByCategory(categorySlugOrId: string): Product[] {\n  const cat = CATEGORIES.find((c) => c.slug === categorySlugOrId || c.id === categorySlugOrId);\n  if (!cat) return [];\n  return PRODUCTS.filter((p) => p.category_id === cat.id || p.categories?.slug === cat.slug);\n}\nexport function getLocalProductBySlug(slug: string): Product | undefined { return PRODUCTS.find((p) => p.slug === slug || p.id === slug || p.sku === slug); }\nexport function searchLocalProducts(term: string): Product[] {\n  const q = term.toLowerCase().trim();\n  if (!q) return [];\n  return PRODUCTS.filter((p) => p.name.toLowerCase().includes(q) || p.short_description?.toLowerCase().includes(q) || p.categories?.name.toLowerCase().includes(q) || p.highlights.some((h) => h.toLowerCase().includes(q)));\n}\n'''
    CATALOG_FILE.write_text(output)
    print(json.dumps({"official_eligible": len(listings), "existing_tramontina": len(existing_tram), "added": added, "reclassified": reclassified, "images_filled": images_filled, "total_products": len(products)}, ensure_ascii=False))


if __name__ == "__main__":
    main()
