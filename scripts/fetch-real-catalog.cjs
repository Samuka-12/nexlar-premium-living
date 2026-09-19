const fs = require('fs');

async function fetchSearch(term, from = 0, to = 15) {
  const url = `https://www.brinox.com.br/api/catalog_system/pub/products/search/${encodeURIComponent(term)}?_from=${from}&_to=${to}`;
  try {
    const res = await fetch(url, { headers: { 'User-Agent': 'Mozilla/5.0' } });
    if (!res.ok) return [];
    return await res.json();
  } catch (e) {
    console.error(`Error fetching ${term}:`, e.message);
    return [];
  }
}

function cleanName(name) {
  return name
    .replace(/Brinox/gi, 'NEXLAR')
    .replace(/Coza/gi, 'NEXLAR')
    .replace(/Haus Concept/gi, 'NEXLAR')
    .trim();
}

function generateSlug(text) {
  return text
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .slice(0, 70);
}

async function buildCatalog() {
  console.log('Fetching products from Brinox API...');

  const categoryConfigs = [
    {
      id: 'cat-panelas',
      name: 'Panelas',
      slug: 'panelas',
      description: 'Jogos de panelas antiaderentes, cerâmica e inox, frigideiras, caçarolas, woks e chaleiras.',
      terms: ['jogo de panelas', 'frigideira', 'cacarola', 'wok', 'chaleira'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/285601/jogo-de-panelas-empilhavel-brinox-fit-10-pecas-antiaderente-ceramic-life-cabo-removivel-e-fundo-de-inducao-areia_lancamento_Hero.jpg.jpg'
    },
    {
      id: 'cat-pressao',
      name: 'Panelas de Pressão',
      slug: 'panelas-de-pressao',
      description: 'Panelas de pressão com fechamento externo, interno e linha cerâmica antiaderente.',
      terms: ['panela de pressao', 'pressure'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/280829/Jogo_de_Panelas_Brinox_Antiaderente_Ceramic_Life_7_Pecas_Marble_Blend_com_Inducao_Cinza_Claro_Nova_1.jpg'
    },
    {
      id: 'cat-eletro',
      name: 'Eletroportáteis',
      slug: 'eletroportateis',
      description: 'Panelas de pressão elétricas digitais, fritadeiras e cooktops de indução portáteis.',
      terms: ['eletrico', 'inducao', 'pressao eletrica', 'airfryer'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/285601/jogo-de-panelas-empilhavel-brinox-fit-10-pecas-antiaderente-ceramic-life-cabo-removivel-e-fundo-de-inducao-areia_lancamento_Hero.jpg.jpg'
    },
    {
      id: 'cat-lixeiras',
      name: 'Lixeiras',
      slug: 'lixeiras',
      description: 'Lixeiras com pedal em inox, basculantes, com sensor de movimento e para coleta seletiva.',
      terms: ['lixeira pedal', 'lixeira inox', 'lixeira', 'lixeira 5 litros'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/287642/Lixeira 20 L - Spin.png'
    },
    {
      id: 'cat-utensilios',
      name: 'Utensílios de Cozinha',
      slug: 'utensilios-de-cozinha',
      description: 'Kits de silicone alimentício, aço inox 18/10, tábuas de corte em bambu e escorredores.',
      terms: ['kit utensilios', 'tabua corte', 'escorredor louca', 'concha inox', 'espatula silicone'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/287716/Lixeira 5 L - Matte Branco.png'
    },
    {
      id: 'cat-mesa',
      name: 'Mesa & Talheres',
      slug: 'mesa-e-talheres',
      description: 'Faqueiros completos em inox, bandejas de servir, bowls e porta-guardanapos.',
      terms: ['faqueiro inox', 'faqueiro 24', 'faqueiro 42', 'bandeja inox', 'conjunto bowls'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/273785/frigideira-24cm-revestimento-ceramico-antiaderente-mineral-resist-vanilla-ceramic-life-suprema-brinox.jpg'
    },
    {
      id: 'cat-assadeiras',
      name: 'Assadeiras & Formas',
      slug: 'assadeiras-e-formas',
      description: 'Assadeiras antiaderentes, formas de bolo redondas, para lasanha e para pão.',
      terms: ['assadeira', 'forma bolo', 'bakeware', 'forma pao'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/283805/SECA.jpg'
    },
    {
      id: 'cat-organizacao',
      name: 'Organização',
      slug: 'organizacao',
      description: 'Porta-temperos giratórios, potes herméticos em acrílico crystal e organizadores de pia.',
      terms: ['porta temperos', 'pote hermetico', 'organizador', 'potes'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/287621/Lixeira 12 L - Decorline.png'
    },
    {
      id: 'cat-churrasco',
      name: 'Churrasco',
      slug: 'churrasco',
      description: 'Kits de churrasco com maleta, grelhas argentinas em inox e churrasqueiras portáteis.',
      terms: ['churrasco', 'grelha', 'kit churrasco', 'espeto'],
      image: 'https://brinox.vteximg.com.br/arquivos/ids/287668/Lixeira 3L - Spin.png'
    },
  ];

  const allProducts = [];
  const seenSlugs = new Set();
  const seenProductIds = new Set();

  for (let cIdx = 0; cIdx < categoryConfigs.length; cIdx++) {
    const cat = categoryConfigs[cIdx];
    console.log(`Processing category: ${cat.name}...`);
    
    let catProducts = [];
    for (const term of cat.terms) {
      const items = await fetchSearch(term, 0, 10);
      for (const item of items) {
        if (!item || !item.productName || !item.items || !item.items[0]) continue;
        if (seenProductIds.has(item.productId)) continue;

        const skuItem = item.items[0];
        const images = (skuItem.images || [])
          .filter(img => img && img.imageUrl)
          .map((img, i) => ({
            id: `img-${item.productId}-${i}`,
            url: img.imageUrl,
            alt: cleanName(item.productName),
            position: i,
          }));

        if (images.length === 0) continue;

        const offer = (skuItem.sellers && skuItem.sellers[0] && skuItem.sellers[0].commertialOffer) || {};
        let price = offer.Price || 99.90;
        let listPrice = offer.ListPrice || Math.round(price * 1.25);
        if (price <= 0) price = 89.90;
        if (listPrice <= price) listPrice = Math.round(price * 1.25 * 100) / 100;

        let name = cleanName(item.productName);
        let slug = generateSlug(name);
        if (seenSlugs.has(slug)) {
          slug = `${slug}-${item.productId}`;
        }
        seenSlugs.add(slug);
        seenProductIds.add(item.productId);

        const shortDesc = item.description 
          ? item.description.replace(/<[^>]*>/g, '').replace(/Brinox/gi, 'NEXLAR').slice(0, 140).trim() + '...'
          : `Produto oficial NEXLAR com acabamento premium e alta durabilidade para sua casa.`;

        const fullDesc = item.description 
          ? item.description.replace(/<[^>]*>/g, '').replace(/Brinox/gi, 'NEXLAR').trim()
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
          rating: Number((4.6 + (Math.random() * 0.4)).toFixed(1)),
          reviews_count: Math.floor(30 + Math.random() * 180),
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
          product_images: images.slice(0, 4),
        };

        catProducts.push(pObj);
        allProducts.push(pObj);

        if (catProducts.length >= 8) break;
      }
      if (catProducts.length >= 8) break;
    }

    if (catProducts.length > 0 && catProducts[0].product_images[0]) {
      cat.image_url = catProducts[0].product_images[0].url;
    } else {
      cat.image_url = cat.image;
    }
  }

  console.log(`Total real products extracted: ${allProducts.length}`);

  const categoriesOutput = categoryConfigs.map((c, i) => ({
    id: c.id,
    name: c.name,
    slug: c.slug,
    description: c.description,
    image_url: c.image_url,
    position: i + 1,
  }));

  const bannersOutput = [
    {
      id: "banner-1",
      title: "Antiaderente cerâmico que dura anos",
      subtitle: "Linha Ceramic Life Pro com fundo triplo, revestimento cerâmico livre de PFOA e compatibilidade total com indução.",
      eyebrow: "LINHA CERAMIC LIFE",
      cta_label: "Ver panelas",
      cta_url: "/categoria/panelas",
      image_url: allProducts.find(p => p.category_id === 'cat-panelas')?.product_images[0]?.url || "https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=1600",
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
      image_url: allProducts.find(p => p.category_id === 'cat-pressao')?.product_images[0]?.url || "https://images.unsplash.com/photo-1585515320310-259814833e62?w=1600",
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
      image_url: allProducts.find(p => p.category_id === 'cat-lixeiras')?.product_images[0]?.url || "https://images.unsplash.com/photo-1556228578-8c89e6adf883?w=1600",
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
  console.log('Successfully wrote src/lib/catalog-data.ts!');
}

buildCatalog();
