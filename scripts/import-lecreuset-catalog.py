#!/usr/bin/env python3
"""Import the researched Le Creuset catalog into the local Nexlar catalog."""
from __future__ import annotations

import json
import re
import unicodedata
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CATALOG = ROOT / "src/lib/catalog-data.ts"
DATASET = ROOT / "research/le-creuset/selected-products-enriched.json"

NEW_CATEGORIES = [
    {
        "id": "cat-assadeiras-travessas-ceramica",
        "name": "Assadeiras, Travessas & Cerâmica para Forno",
        "slug": "assadeiras-travessas-ceramica",
        "description": "Travessas, assadeiras, mini cocottes e ramekins para forno, mesa e preparo de receitas.",
        "image_url": None,
        "position": 8,
    },
    {
        "id": "cat-potes-organizacao-cozinha",
        "name": "Potes & Organização de Cozinha",
        "slug": "potes-organizacao-cozinha",
        "description": "Potes, porta-mantimentos e recipientes para organizar e conservar ingredientes.",
        "image_url": None,
        "position": 9,
    },
    {
        "id": "cat-acessorios-cozinha-mesa",
        "name": "Acessórios de Cozinha & Mesa",
        "slug": "acessorios-cozinha-mesa",
        "description": "Moedores, galheteiros, utensílios, suportes e acessórios funcionais para cozinha e mesa.",
        "image_url": None,
        "position": 10,
    },
    {
        "id": "cat-bebidas-canecas-bules-jarras",
        "name": "Bebidas: Canecas, Bules & Jarras",
        "slug": "bebidas-canecas-bules-jarras",
        "description": "Canecas, bules, jarras e acessórios para preparar e servir bebidas.",
        "image_url": None,
        "position": 11,
    },
    {
        "id": "cat-acessorios-vinho",
        "name": "Acessórios para Vinho",
        "slug": "acessorios-vinho",
        "description": "Coolers, saca-rolhas, abridores e conjuntos para servir vinho e espumante.",
        "image_url": None,
        "position": 12,
    },
]

MAPPING = {
    "Assadeiras, Travessas & Cerâmica para Forno": NEW_CATEGORIES[0]["id"],
    "Potes & Organização de Cozinha": NEW_CATEGORIES[1]["id"],
    "Acessórios de Cozinha & Mesa": NEW_CATEGORIES[2]["id"],
    "Bebidas: Canecas, Bules & Jarras": NEW_CATEGORIES[3]["id"],
    "Acessórios para Vinho": NEW_CATEGORIES[4]["id"],
}


def slugify(value: str) -> str:
    value = str(value or "produto")
    value = unicodedata.normalize("NFKD", value).encode("ascii", "ignore").decode("ascii")
    value = re.sub(r"[^a-zA-Z0-9]+", "-", value.lower()).strip("-")
    return value


def money_from_reference(value: str) -> float:
    matches = re.findall(r"R\$\s*([\d.]+,\d{2})", value or "")
    if not matches:
        raise ValueError(f"No BRL price found in {value!r}")
    return float(matches[0].replace(".", "").replace(",", "."))


def availability(product: dict) -> str:
    raw = (product.get("availability_observed") or "").strip()
    if raw:
        return raw
    text = " ".join(product.get("attributes") or [])
    for marker in ("Em estoque", "Out of Stock", "fora de estoque", "indisponível", "indisponibilidade"):
        if marker.lower() in text.lower():
            return marker
    return "Não informado na pesquisa"


def make_product(product: dict, category_by_id: dict[str, dict]) -> dict:
    suggested = product.get("suggested_new_category")
    category_id = MAPPING.get(suggested) or product.get("nexlar_category_id")
    if not category_id or category_id not in category_by_id:
        raise ValueError(f"No Nexlar category for {product['id']}: {suggested!r} / {category_id!r}")
    category = category_by_id[category_id]
    price = money_from_reference(product["price_reference"])
    attrs = product.get("attributes") or []
    popularity = product.get("popularity_evidence") or {}
    popularity_text = popularity.get("details") or popularity.get("status") or "não informado"
    short = product.get("short_description") or product["name"]
    # No stock quantity was exposed by the source; 1 keeps the local catalog purchasable
    # while the official availability is retained in specs and not presented as sales data.
    return {
        "id": product["id"],
        "name": product["name"],
        "slug": f"{slugify(product['name'])}-{slugify(product['sku'])}",
        "brand": "Le Creuset",
        "sku": product.get("sku"),
        "short_description": short,
        "description": short,
        "category_id": category_id,
        "price": price,
        "compare_at_price": None,
        "pix_discount_percent": 0,
        "stock": 1,
        "rating": 0,
        "reviews_count": 0,
        "review_count": 0,
        "free_shipping": False,
        "featured": popularity.get("status") == "explicit_best_seller",
        "is_new": "lançamento" in (" ".join(attrs) + " " + product.get("commercial_inference", "")).lower(),
        "active": True,
        "highlights": attrs,
        "specs": {
            "Marca": "Le Creuset",
            "SKU Original": str(product.get("sku") or "não informado"),
            "Preço de referência": product["price_reference"],
            "Categoria oficial pesquisada": product.get("category_name") or "não informada",
            "Popularidade oficial": popularity_text,
            "Disponibilidade observada": availability(product),
            "Atributos técnicos oficiais": " | ".join(attrs) if attrs else "não informado",
            "Fonte oficial": product["url"],
        },
        "created_at": "2026-09-28T00:00:00.000Z",
        "source_url": product["url"],
        "source_urls": product.get("source_urls") or [product["url"]],
        "price_reference": product["price_reference"],
        "official_availability": availability(product),
        "popularity_evidence": popularity_text,
        "commercial_inference": product.get("commercial_inference") or "",
        "image_source_status": product.get("image_extraction_status") or "not_extracted",
        "seo_title": f"{product['name']} | Le Creuset | Nexlar",
        "seo_description": short[:155],
        "product_images": [
            {"id": f"img-{product['id']}-{i}", "url": url, "alt": f"{product['name']} Le Creuset", "position": i}
            for i, url in enumerate(product.get("image_urls") or [])
        ],
        "product_variants": [],
        "categories": {"name": category["name"], "slug": category["slug"]},
    }


def main() -> None:
    dataset = json.loads(DATASET.read_text())
    source = CATALOG.read_text()
    categories_start = source.index("export const CATEGORIES: Category[] = ") + len("export const CATEGORIES: Category[] = ")
    categories_end = source.index("\n];", categories_start) + 2
    categories = json.loads(source[categories_start:categories_end])
    category_by_id = {c["id"]: c for c in categories}
    for category in NEW_CATEGORIES:
        if category["id"] not in category_by_id:
            categories.append(category)
            category_by_id[category["id"]] = category
    products_start = source.index("export const PRODUCTS: Product[] = ") + len("export const PRODUCTS: Product[] = ")
    products_end = source.index("\n];", products_start) + 2
    products = json.loads(source[products_start:products_end])
    existing_ids = {p["id"] for p in products}
    imported = [make_product(p, category_by_id) for p in dataset["products"] if p["id"] not in existing_ids]
    products.extend(imported)
    # Keep the existing file's stable JSON style and only replace the two data blocks.
    rendered = source[:categories_start] + json.dumps(categories, ensure_ascii=False, indent=2) + source[categories_end:products_start]
    rendered += json.dumps(products, ensure_ascii=False, indent=2) + source[products_end:]
    CATALOG.write_text(rendered)
    print(json.dumps({"categories_added": len(NEW_CATEGORIES), "products_added": len(imported), "products_total": len(products), "images_imported": sum(bool(p["product_images"]) for p in imported)}, ensure_ascii=False))


if __name__ == "__main__":
    main()
