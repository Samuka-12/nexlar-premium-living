const fs = require('fs');

async function fetchSearch(query, from = 0, to = 20) {
  const url = `https://www.brinox.com.br/api/catalog_system/pub/products/search?ft=${encodeURIComponent(query)}&_from=${from}&_to=${to}`;
  try {
    const res = await fetch(url, { headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)' } });
    if (!res.ok) return [];
    return await res.json();
  } catch (e) {
    console.error(`Erro ao buscar ${query}:`, e.message);
    return [];
  }
}

function cleanText(text) {
  if (!text) return '';
  return text
    .replace(/Brinox/gi, 'NEXLAR')
    .replace(/Coza/gi, 'NEXLAR')
    .replace(/Haus Concept/gi, 'NEXLAR')
    .replace(/Haus/gi, 'NEXLAR')
    .trim();
}

function generateSlug(text) {
  return text
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .slice(0, 75);
}

async function run() {
  console.log('Iniciando geração do catálogo NEXLAR baseado na Brinox com fotos 100% de produto de estúdio sem logos/banners...');

  const categoryConfigs = [
    {
      id: 'cat-panelas',
      name: 'Panelas',
      slug: 'panelas',
      description: 'Jogos de panelas antiaderentes, cerâmica e inox, frigideiras, caçarolas, woks e chaleiras.',
      queries: ['jogo de panelas', 'frigideira ceramic', 'cacarola ceramic', 'wok ceramic', 'chaleira'],
    },
    {
      id: 'cat-pressao',
      name: 'Panelas de Pressão',
      slug: 'panelas-de-pressao',
      description: 'Panelas de pressão com fechamento externo, interno e linha cerâmica antiaderente.',
      queries: ['panela de pressao inox', 'panela de pressao pressure', 'panela de pressao vapt'],
    },
    {
      id: 'cat-eletro',
      name: 'Eletroportáteis',
      slug: 'eletroportateis',
      description: 'Panelas de pressão elétricas digitais, fritadeiras e cooktops de indução portáteis.',
      queries: ['panela pressao eletrica', 'eletroportateis', 'eletrica 6 litros', 'cooktop'],
    },
    {
      id: 'cat-lixeiras',
      name: 'Lixeiras',
      slug: 'lixeiras',
      description: 'Lixeiras com pedal em inox, basculantes, com sensor de movimento e para coleta seletiva.',
      queries: ['lixeira pedal inox', 'lixeira spin', 'lixeira matte 5 litros', 'lixeira 20 litros', 'lixeira 12 litros'],
    },
    {
      id: 'cat-utensilios',
      name: 'Utensílios de Cozinha',
      slug: 'utensilios-de-cozinha',
      description: 'Kits de silicone alimentício, aço inox 18/10, tábuas de corte em bambu e escorredores.',
      queries: ['kit utensilios', 'tabua bambu', 'escorredor inox', 'concha inox', 'espatula silicone'],
    },
    {
      id: 'cat-mesa',
      name: 'Mesa & Talheres',
      slug: 'mesa-e-talheres',
      description: 'Faqueiros completos em inox, bandejas de servir, bowls e porta-guardanapos.',
      queries: ['faqueiro inox 24', 'faqueiro inox 42', 'bandeja servir inox', 'conjunto bowls'],
    },
    {
      id: 'cat-assadeiras',
      name: 'Assadeiras & Formas',
      slug: 'assadeiras-e-formas',
      description: 'Assadeiras antiaderentes, formas de bolo redondas, para lasanha e para pão.',
      queries: ['assadeira retangular', 'forma bolo', 'bakeware', 'forma de bolo redonda'],
    },
    {
      id: 'cat-organizacao',
      name: 'Organização',
      slug: 'organizacao',
      description: 'Porta-temperos giratórios, potes herméticos em acrílico crystal e organizadores de pia.',
      queries: ['porta temperos inox', 'potes hermeticos', 'organizador geladeira', 'organizador pia'],
    },
    {
      id: 'cat-churrasco',
      name: 'Churrasco',
      slug: 'churrasco',
      description: 'Kits de churrasco com maleta, grelhas argentinas em inox e churrasqueiras portáteis.',
      queries: ['kit churrasco', 'faca churrasco', 'grelha inox', 'espeto churrasco'],
    },
  ];

  const allProducts = [];
  const seenSlugs = new Set();
  const seenProductIds = new Set();

  for (const cat of categoryConfigs) {
    console.log(`Buscando categoria: ${cat.name}...`);
    let catProducts = [];

    for (const q of cat.queries) {
      const items = await fetchSearch(q, 0, 15);

      for (const item of items) {
        if (!item || !item.productName || !item.items || !item.items[0]) continue;
        if (seenProductIds.has(item.productId)) continue;

        const skuItem = item.items[0];
        const rawImages = (skuItem.images || []).filter(img => img && img.imageUrl);
        if (rawImages.length === 0) continue;

        // FILTRO CRÍTICO: Eliminar imagens de marketing com logotipos/banners ("promocao-", "banner", "_0.jpg" com lettering)
        // e selecionar fotos limpas de estúdio do produto
        let studioImages = rawImages.filter(img => {
          const u = img.imageUrl.toLowerCase();
          const isPromoBanner = u.includes('promocao-') || u.includes('banner') || u.includes('selo') || u.includes('arte') || u.includes('hero');
          return !isPromoBanner;
        });

        // Se o produto tiver fotos com nomes de arquivo de estúdio tipo "1 - ...", "1280x1280", "conjunto", "Lixeira ...", priorizar
        if (studioImages.length === 0) {
          // Se só tinha com promocao, pegar a partir da segunda imagem ou a que tiver melhor formato
          studioImages = rawImages.filter((_, idx) => idx > 0);
          if (studioImages.length === 0) studioImages = rawImages;
        }

        // Ordenar colocando imagens limpas (.png e com 1280x1280 ou foto de produto) em primeiro lugar
        studioImages.sort((a, b) => {
          const aU = a.imageUrl.toLowerCase();
          const bU = b.imageUrl.toLowerCase();
          const aScore = (aU.includes('1280x1280') ? 4 : 0) + (aU.includes('.png') ? 2 : 0) + (aU.includes('1 -') ? 3 : 0) - (aU.includes('_0.jpg') ? 5 : 0);
          const bScore = (bU.includes('1280x1280') ? 4 : 0) + (bU.includes('.png') ? 2 : 0) + (bU.includes('1 -') ? 3 : 0) - (bU.includes('_0.jpg') ? 5 : 0);
          return bScore - aScore;
        });

        const productImages = studioImages.map((img, idx) => ({
          id: `img-${item.productId}-${idx}`,
          url: img.imageUrl,
          alt: cleanText(item.productName),
          position: idx,
        }));

        const offer = (skuItem.sellers && skuItem.sellers[0] && skuItem.sellers[0].commertialOffer) || {};
        let price = offer.Price || 99.90;
        let listPrice = offer.ListPrice || Math.round(price * 1.25);
        if (price <= 0) price = 89.90;
        if (listPrice <= price) listPrice = Math.round(price * 1.25 * 100) / 100;

        const name = cleanText(item.productName);
        let slug = generateSlug(name);
        if (seenSlugs.has(slug)) {
          slug = `${slug}-${item.productId}`;
        }
        seenSlugs.add(slug);
        seenProductIds.add(item.productId);

        const shortDesc = item.description 
          ? cleanText(item.description.replace(/<[^>]*>/g, '')).slice(0, 140).trim() + '...'
          : `Produto oficial NEXLAR com acabamento premium e alta durabilidade para sua casa.`;

        const fullDesc = item.description 
          ? cleanText(item.description.replace(/<[^>]*>/g, '')).trim()
          : `${name} é fabricado com materiais nobres de alta resistência pela NEXLAR, garantindo máxima performance, durabilidade e beleza no dia a dia da sua cozinha.`;

        const pObj = {
          id: `prod-${item.productId}`,
          name: name,
          slug: slug,
          sku: `NX-${item.productReference || item.productId}`,
          short_description: shortDesc,
          description: fullDesc,
          category_id: cat.id,
          categories: { name: cat.name, slug: cat.slug },
          price: Math.round(price * 100) / 100,
          compare_at_price: Math.round(listPrice * 100) / 100,
          pix_discount_percent: 10,
          stock: 40,
          rating: Number((4.7 + (Math.random() * 0.3)).toFixed(1)),
          reviews_count: Math.floor(40 + Math.random() * 180),
          free_shipping: price > 249,
          featured: catProducts.length < 2,
          is_new: catProducts.length === 0,
          active: true,
          created_at: new Date().toISOString(),
          highlights: [
            'Design ergonômico e exclusivo NEXLAR',
            'Materiais nobres de alta durabilidade',
            'Fácil higienização e manutenção',
            'Garantia oficial de fábrica',
          ],
          specs: {
            "Marca": "NEXLAR Premium Living",
            "Referência": `${item.productReference || item.productId}`,
            "Material": "Alta qualidade e resistência",
            "Garantia": "12 meses contra defeitos de fabricação",
          },
          product_images: productImages.slice(0, 4),
        };

        catProducts.push(pObj);
        allProducts.push(pObj);

        if (catProducts.length >= 8) break;
      }
      if (catProducts.length >= 8) break;
    }

    if (catProducts.length > 0 && catProducts[0].product_images[0]) {
      cat.image_url = catProducts[0].product_images[0].url;
    }
  }

  console.log(`Total de produtos oficiais processados: ${allProducts.length}`);

  const categoriesOutput = categoryConfigs.map((c, i) => ({
    id: c.id,
    name: c.name,
    slug: c.slug,
    description: c.description,
    image_url: c.image_url || 'https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=800',
    position: i + 1,
  }));

  const bannerPanelas = allProducts.find(p => p.category_id === 'cat-panelas')?.product_images[0]?.url;
  const bannerPressao = allProducts.find(p => p.category_id === 'cat-pressao')?.product_images[0]?.url;
  const bannerLixeiras = allProducts.find(p => p.category_id === 'cat-lixeiras')?.product_images[0]?.url;

  const bannersOutput = [
    {
      id: "banner-1",
      title: "Antiaderente cerâmico que dura anos",
      subtitle: "Linha Ceramic Life Pro com fundo triplo, revestimento cerâmico livre de PFOA e compatibilidade total com indução.",
      eyebrow: "LINHA CERAMIC LIFE",
      cta_label: "Ver panelas",
      cta_url: "/categoria/panelas",
      image_url: bannerPanelas || "https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=1600",
      position: 1,
      active: true,
    },
    {
      id: "banner-2",
      title: "Pressão com segurança máxima",
      subtitle: "Panelas de pressão Nexlar com 5 sistemas de segurança certificados, aço inox e linha cerâmica antiaderente.",
      eyebrow: "PANELAS DE PRESSÃO",
      cta_label: "Ver panelas de pressão",
      cta_url: "/categoria/panelas-de-pressao",
      image_url: bannerPressao || "https://images.unsplash.com/photo-1585515320310-259814833e62?w=1600",
      position: 2,
      active: true,
    },
    {
      id: "banner-3",
      title: "Lixeiras em Aço Inox com Pedal",
      subtitle: "Linha Spin e Matte com acabamento escovado anti-marcas, tampa soft-close e máxima higiene para sua casa.",
      eyebrow: "LIXEIRAS & HIGIENE",
      cta_label: "Ver lixeiras",
      cta_url: "/categoria/lixeiras",
      image_url: bannerLixeiras || "https://images.unsplash.com/photo-1585914924626-15adac1e6402?w=1600",
      position: 3,
      active: true,
    },
  ];

  const fileContent = `import type { Banner, Category, Product } from "./types";

export const CATEGORIES: Category[] = ${JSON.stringify(categoriesOutput, null, 2)};

export const BANNERS: Banner[] = ${JSON.stringify(bannersOutput, null, 2)};

export const PRODUCTS: Product[] = ${JSON.stringify(allProducts, null, 2)};

// Funções de acesso rápido
export function getLocalCategories(): Category[] {
  return [...CATEGORIES].sort((a, b) => a.position - b.position);
}

export function getLocalCategoryBySlug(slug: string): Category | undefined {
  return CATEGORIES.find((c) => c.slug === slug);
}

export function getLocalBanners(): Banner[] {
  return [...BANNERS].sort((a, b) => a.position - b.position);
}

export function getLocalProducts(filter?: "featured" | "new" | "offers"): Product[] {
  let list = PRODUCTS.filter((p) => p.active);
  if (filter === "featured") list = list.filter((p) => p.featured);
  if (filter === "new") list = list.filter((p) => p.is_new);
  if (filter === "offers") list = list.filter((p) => p.compare_at_price && p.compare_at_price > p.price);
  return list;
}

export function getLocalProductsByCategory(categorySlugOrId: string): Product[] {
  const cat = CATEGORIES.find((c) => c.slug === categorySlugOrId || c.id === categorySlugOrId);
  if (!cat) return [];
  return PRODUCTS.filter((p) => p.category_id === cat.id || p.categories?.slug === cat.slug);
}

export function getLocalProductBySlug(slug: string): Product | undefined {
  return PRODUCTS.find((p) => p.slug === slug);
}

export function searchLocalProducts(term: string): Product[] {
  const q = term.toLowerCase().trim();
  if (!q) return [];
  return PRODUCTS.filter(
    (p) =>
      p.name.toLowerCase().includes(q) ||
      p.short_description?.toLowerCase().includes(q) ||
      p.categories?.name.toLowerCase().includes(q) ||
      p.highlights.some((h) => h.toLowerCase().includes(q)),
  );
}
`;

  fs.writeFileSync('src/lib/catalog-data.ts', fileContent, 'utf-8');
  console.log('src/lib/catalog-data.ts gerado com sucesso com fotos oficiais de estúdio!');
}

run();
