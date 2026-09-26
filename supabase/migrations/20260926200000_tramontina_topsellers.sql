-- Migration: 20260926200000_tramontina_topsellers.sql
-- Adiciona 12 produtos mais vendidos da Tramontina (panelas) ao NEXLAR
-- Fonte: https://www.tramontina.com.br/panelas.html?O=OrderByTopSaleDESC
-- NÃO apaga produtos existentes (362 Brinox + categorias existentes)
-- Executar no Supabase SQL Editor após o deploy

BEGIN;

-- Inserir produtos Tramontina (ON CONFLICT DO NOTHING para evitar duplicatas)

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-27899286',
  'jogo-de-panelas-tramontina-ravena-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-5-pecas',
  'Jogo de Panelas Tramontina Ravena em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max 5 Peças',
  'Jogo de panelas Tramontina Ravena com 5 peças em alumínio e revestimento antiaderente Starflon Max. Alta resistência e fácil limpeza. Inclui panelas 14/16/18 cm, caçarola 20 cm e frigideira 24 cm.',
  'Tramontina', 'cat-jogos-de-panelas', 239.00, 546.00,
  'TRAM-27899286', 50, 4.3, 117, true, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27899286', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27899286PDM001E.jpg', 'Jogo de Panelas Tramontina Ravena 5 Peças', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-27816078',
  'cacArola-tramontina-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-preto-com-tampa-de-vidro-22-cm-35-l',
  'Caçarola Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Preto com Tampa de Vidro 22 cm 3,5 L',
  'Caçarola Tramontina em alumínio com revestimento antiaderente Starflon. Tampa de vidro temperado. 22 cm, 3,5 litros. Cozinhe com menos gordura.',
  'Tramontina', 'cat-cacarolas-e-avulsas', 199.00, 442.00,
  'TRAM-27816078', 50, 4.3, 134, true, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27816078', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27816078PDM001E.jpg', 'Caçarola Tramontina Starflon 22cm', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-27815868',
  'frigideira-funda-tramontina-ravena-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-28-cm-33-l',
  'Frigideira Funda Tramontina Ravena em Alumínio com Revestimento Interno Antiaderente Starflon Max 28 cm 3,3 L',
  'Frigideira Funda Tramontina Ravena em alumínio com revestimento antiaderente Starflon Max. 28 cm, 3,3 litros. Ideal para risotos, massas e refogados.',
  'Tramontina', 'cat-frigideiras-e-woks', 64.90, 143.00,
  'TRAM-27815868', 50, 4.3, 101, true, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27815868', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27815868PDM001E.jpg', 'Frigideira Funda Tramontina Ravena 28cm', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-28399205',
  'kit-cozinha-tramontina-lyf-verde-natureza-25-pecas',
  'Kit Cozinha Tramontina Lyf Verde Natureza 25 Peças',
  'Kit completo Tramontina Lyf com 25 peças na cor Verde Natureza. Panelas, frigideiras e utensílios para toda a cozinha com praticidade e durabilidade.',
  'Tramontina', 'cat-jogos-de-panelas', 389.42, 854.00,
  'TRAM-28399205', 50, 4.3, 168, true, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28399205', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28399205PDM001E.jpg', 'Kit Cozinha Tramontina Lyf 25 Peças Verde', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-20999319',
  'jogo-de-panelas-tramontina-refinatta-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-premium-03-pecas',
  'Jogo de Panelas Tramontina Refinatta em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Premium 03 Peças',
  'Jogo de Panelas Tramontina Refinatta em alumínio com revestimento antiaderente Starflon Premium. Design sofisticado e acabamento dourado. 3 peças de alta performance.',
  'Tramontina', 'cat-jogos-de-panelas', 712.50, 1500.00,
  'TRAM-20999319', 50, 4.3, 85, true, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20999319', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20999319PDM001E.jpg', 'Jogo Panelas Tramontina Refinatta 3 Peças Dourado', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-28319216',
  'frigideira-reta-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-16-cm',
  'Frigideira Reta Tramontina Lyf em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max 16 cm',
  'Frigideira Reta Tramontina Lyf em alumínio com revestimento antiaderente Starflon Max. 16 cm, ideal para ovos, crepes e porções individuais.',
  'Tramontina', 'cat-frigideiras-e-woks', 39.52, 88.00,
  'TRAM-28319216', 50, 4.3, 52, false, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28319216', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28319216PDM001E.jpg', 'Frigideira Reta Tramontina Lyf 16cm Verde', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-28316220',
  'cacarola-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-e-tampa-de-vidro-20-cm-28-l',
  'Caçarola Tramontina Lyf em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Tampa de Vidro 20 cm 2,8 L',
  'Caçarola Tramontina Lyf em alumínio com revestimento antiaderente Starflon Max. Tampa de vidro. 20 cm, 2,8 litros. Perfeita para sopas e molhos.',
  'Tramontina', 'cat-cacarolas-e-avulsas', 79.52, 174.00,
  'TRAM-28316220', 50, 4.3, 69, false, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28316220', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28316220PDM001E.jpg', 'Caçarola Tramontina Lyf 20cm Verde', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-28316224',
  'cacarola-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-e-tampa-de-vidro-24-cm-47-l',
  'Caçarola Tramontina Lyf em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Tampa de Vidro 24 cm 4,7 L',
  'Caçarola Tramontina Lyf em alumínio com revestimento antiaderente Starflon Max. Tampa de vidro. 24 cm, 4,7 litros. Ideal para famílias.',
  'Tramontina', 'cat-cacarolas-e-avulsas', 99.52, 216.00,
  'TRAM-28316224', 50, 4.3, 86, false, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28316224', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28316224PDM001E.jpg', 'Caçarola Tramontina Lyf 24cm Verde', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-28316228',
  'cacarola-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-e-tampa-de-vidro-28-cm-73-l',
  'Caçarola Tramontina Lyf em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Tampa de Vidro 28 cm 7,3 L',
  'Caçarola Tramontina Lyf em alumínio com revestimento antiaderente Starflon Max. Tampa de vidro. 28 cm, 7,3 litros. Ideal para grandes receitas.',
  'Tramontina', 'cat-cacarolas-e-avulsas', 129.52, 280.00,
  'TRAM-28316228', 50, 4.3, 103, false, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28316228', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28316228PDM001E.jpg', 'Caçarola Tramontina Lyf 28cm Verde', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-28317220',
  'frigideira-reta-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-20-cm',
  'Frigideira Reta Tramontina LYF em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max 20 cm',
  'Frigideira Reta Tramontina LYF em alumínio com revestimento antiaderente Starflon Max. 20 cm, versátil para ovos, legumes e carnes.',
  'Tramontina', 'cat-frigideiras-e-woks', 47.52, 104.00,
  'TRAM-28317220', 50, 4.3, 70, false, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28317220', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28317220PDM001E.jpg', 'Frigideira Reta Tramontina LYF 20cm Verde', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-27899204',
  'jogo-de-frigideiras-tramontina-everyday-em-aluminio-com-revestimento-interno-antiaderente-starflon-basic-3-pecas',
  'Jogo de Frigideiras Tramontina Everyday em Alumínio com Revestimento Interno Antiaderente Starflon Basic 3 Peças',
  'Jogo de Frigideiras Tramontina Everyday em alumínio com revestimento antiaderente Starflon Basic. 3 peças em tamanhos diferentes para o dia a dia.',
  'Tramontina', 'cat-frigideiras-e-woks', 94.81, 208.00,
  'TRAM-27899204', 50, 4.3, 87, false, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27899204', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27899204PDM001E.jpg', 'Jogo de Frigideiras Tramontina Everyday 3 Peças', true, 1) ON CONFLICT DO NOTHING;

-- -----------------------------------------------------------------------

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES (
  'prod-tram-28317224',
  'frigideira-reta-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-24-cm',
  'Frigideira Reta Tramontina Lyf em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max 24 cm',
  'Frigideira Reta Tramontina Lyf em alumínio com revestimento antiaderente Starflon Max. 24 cm, ideal para bifes, frango e refogados.',
  'Tramontina', 'cat-frigideiras-e-woks', 62.52, 136.00,
  'TRAM-28317224', 50, 4.3, 104, false, false, NOW(), NOW()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28317224', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28317224PDM001E.jpg', 'Frigideira Reta Tramontina Lyf 24cm Verde', true, 1) ON CONFLICT DO NOTHING;

COMMIT;

-- RESUMO:
-- Total de produtos adicionados: 12 (top sellers Tramontina por OrderByTopSaleDESC)
-- Produtos Brinox mantidos: 362 (sem alterações)
-- Total geral do catálogo após migração: 374 produtos