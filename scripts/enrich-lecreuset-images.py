#!/usr/bin/env python3
"""Enrich the official Le Creuset research dataset with image URLs exposed by product pages."""
from __future__ import annotations

import json
import re
import time
from pathlib import Path
from urllib.parse import urljoin
from concurrent.futures import ThreadPoolExecutor, as_completed

import requests
from bs4 import BeautifulSoup

ROOT = Path(__file__).resolve().parents[1]
INPUT = ROOT / "research/le-creuset/selected-products.json"
OUTPUT = ROOT / "research/le-creuset/selected-products-enriched.json"
HEADERS = {"User-Agent": "Mozilla/5.0 (compatible; NexlarCatalogResearch/1.0)"}
IMAGE_EXTENSIONS = (".jpg", ".jpeg", ".png", ".webp", ".avif")


def image_candidates(url: str, html: str) -> list[str]:
    soup = BeautifulSoup(html, "html.parser")
    values: list[str] = []
    for tag in soup.find_all(["meta", "img", "source"]):
        for attr in ("content", "src", "data-src", "data-lazy", "data-image", "data-zoom-image", "srcset"):
            value = tag.get(attr)
            if not value:
                continue
            values.extend(value.split(",") if attr == "srcset" else [value])
    values.extend(re.findall(r"https?[^\"'\\s<>]+", html))
    found: list[str] = []
    for raw in values:
        candidate = raw.strip().split(" ")[0].replace("\\u002F", "/")
        candidate = urljoin(url, candidate)
        if "lecreuset.com.br" not in candidate or candidate.lower().endswith(".svg"):
            continue
        if "/dw/image/" not in candidate and not any(ext in candidate.lower() for ext in IMAGE_EXTENSIONS):
            continue
        if any(token in candidate.lower() for token in ("swatch", "logo", "icon", "sprite", "pixel")):
            continue
        candidate = candidate.replace("&amp;", "&")
        if candidate not in found:
            found.append(candidate)
    return found


def fetch(product: dict) -> tuple[str, list[str], str]:
    try:
        response = requests.get(product["url"], headers=HEADERS, timeout=35)
        if response.status_code == 200 and len(response.text) > 5000:
            return product["id"], image_candidates(product["url"], response.text)[:16], "ok"
        return product["id"], [], f"http_{response.status_code}_short"
    except requests.RequestException as exc:
        return product["id"], [], f"error_{type(exc).__name__}"


def main() -> None:
    data = json.loads(INPUT.read_text())
    products = data["products"]
    results: dict[str, tuple[list[str], str]] = {}
    with ThreadPoolExecutor(max_workers=5) as pool:
        futures = [pool.submit(fetch, product) for product in products]
        for future in as_completed(futures):
            product_id, urls, status = future.result()
            results[product_id] = (urls, status)
            print(product_id, status, len(urls), flush=True)
            time.sleep(0.05)
    for product in products:
        urls, status = results.get(product["id"], ([], "missing"))
        product["image_urls"] = urls
        product["image_extraction_status"] = status
    data["image_extraction"] = {
        "method": "official product HTML only; no generated or third-party image URLs",
        "products_with_images": sum(bool(p["image_urls"]) for p in products),
        "products_without_images": sum(not p["image_urls"] for p in products),
    }
    OUTPUT.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n")
    print(json.dumps(data["image_extraction"], ensure_ascii=False))


if __name__ == "__main__":
    main()
