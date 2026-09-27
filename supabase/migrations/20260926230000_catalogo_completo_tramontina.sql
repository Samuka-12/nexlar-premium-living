-- Migration: 20260926230000_catalogo_completo_tramontina.sql
-- Adiciona todos os 397 produtos da Tramontina (Panelas) ao Supabase
-- Preserva todos os produtos Brinox existentes
BEGIN;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28699709', 'jogo-de-panelas-tramontina-sicilia-em-aluminio-com-revestimento-interno-ceramico-e-externo-em-poliester-vermelho-04-pecas', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno Cerâmico e Externo em Poliéster Vermelho 04 Peças', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno Cerâmico e Externo em Poliéster Vermelho 04 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 525.26, 709.1, 'TRAM-28699709', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28699709', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28699709PDM001E.jpg', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno Cerâmico e Externo em Poliéster Vermelho 04 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599706', 'jogo-de-panelas-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-vermelho-7-pecas', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 7 Peças', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 399.55, 539.39, 'TRAM-28599706', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599706', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599706PDM001E.jpg', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299404', 'jogo-de-panelas-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-rosa-4-pecas', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Rosa 4 Peças', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Rosa 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 290.7, 392.45, 'TRAM-28299404', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299404', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299404PDM001E.jpg', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Rosa 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20899750', 'jogo-de-panelas-tramontina-monaco-em-aluminio-com-revestimento-interno-em-starflon-premium-e-externo-siliconado-vermelho-05-pecas', 'Jogo de Panelas Tramontina Mônaco em Alumínio com Revestimento Interno em Starflon Premium e Externo Siliconado Vermelho 05 Peças', 'Jogo de Panelas Tramontina Mônaco em Alumínio com Revestimento Interno em Starflon Premium e Externo Siliconado Vermelho 05 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1099, 1483.65, 'TRAM-20899750', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20899750', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20899750PDM001E.jpg', 'Jogo de Panelas Tramontina Mônaco em Alumínio com Revestimento Interno em Starflon Premium e Externo Siliconado Vermelho 05 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65510623', 'jogo-de-panelas-tramontina-em-aco-inox-com-fundo-triplo-6-pecas', 'Jogo de Panelas Tramontina em Aço Inox com Fundo Triplo 6 Peças', 'Jogo de Panelas Tramontina em Aço Inox com Fundo Triplo 6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 729.63, 985, 'TRAM-65510623', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65510623', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65510623PDM001E.jpg', 'Jogo de Panelas Tramontina em Aço Inox com Fundo Triplo 6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27899307', 'jogo-de-panelas-tramontina-glenz-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-vermelho-4-pecas', 'Jogo de Panelas Tramontina Glenz em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Vermelho 4 Peças', 'Jogo de Panelas Tramontina Glenz em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Vermelho 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 714.63, 964.75, 'TRAM-27899307', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27899307', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27899307PDM001E.jpg', 'Jogo de Panelas Tramontina Glenz em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Vermelho 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65620400', 'jogo-cozi-pasta-tramontina-professional-em-aco-inox-fundo-triplo-com-tampa-plana-detalhe-satinado-2-pecas-24-cm', 'Jogo Cozi-Pasta Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 2 Peças 24 cm', 'Jogo Cozi-Pasta Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 2 Peças 24 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 683.1, 922.19, 'TRAM-65620400', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65620400', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65620400PDM001E.jpg', 'Jogo Cozi-Pasta Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 2 Peças 24 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65620410', 'jogo-cozi-pasta-tramontina-professional-em-aco-inox-fundo-triplo-com-tampa-plana-detalhe-satinado-2-pecas-20-cm', 'Jogo Cozi-Pasta Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 2 Peças 20 cm', 'Jogo Cozi-Pasta Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 2 Peças 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 683.1, 922.19, 'TRAM-65620410', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65620410', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65620410PDM001E.jpg', 'Jogo Cozi-Pasta Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 2 Peças 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299406', 'jogo-de-panelas-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-rosa-07-pecas', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Rosa 07 Peças', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Rosa 07 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 480.6, 648.81, 'TRAM-28299406', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299406', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299406PDM001E.jpg', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Rosa 07 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65420003', 'jogo-de-panelas-tramontina-iacute-sis-em-aco-inox-com-fundo-triplo-05-pecas', 'Jogo de Panelas Tramontina &Iacute;sis em Aço Inox com Fundo Triplo 05 Peças', 'Jogo de Panelas Tramontina &Iacute;sis em Aço Inox com Fundo Triplo 05 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 525.26, 709.1, 'TRAM-65420003', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65420003', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65420003PDM001E.jpg', 'Jogo de Panelas Tramontina &Iacute;sis em Aço Inox com Fundo Triplo 05 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65120026', 'jogo-de-panelas-tramontina-solar-ceramic-em-aco-inox-fundo-triplo-com-revestimento-interno-ceramico-grafite-4-pecas', 'Jogo de Panelas Tramontina Solar Ceramic em Aço Inox Fundo Triplo com Revestimento Interno Cerâmico Grafite 4 Peças', 'Jogo de Panelas Tramontina Solar Ceramic em Aço Inox Fundo Triplo com Revestimento Interno Cerâmico Grafite 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1429, 1929.15, 'TRAM-65120026', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65120026', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65120026PDM001E.jpg', 'Jogo de Panelas Tramontina Solar Ceramic em Aço Inox Fundo Triplo com Revestimento Interno Cerâmico Grafite 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65500410', 'jogo-cozi-pasta-tramontina-solar-em-aco-inox-fundo-triplo-com-alcas-2-pecas-20-cm', 'Jogo Cozi-Pasta Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 Peças 20 cm', 'Jogo Cozi-Pasta Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 Peças 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 916, 1236.6, 'TRAM-65500410', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65500410', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65500410PDM001E.jpg', 'Jogo Cozi-Pasta Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 Peças 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65510780', 'jogo-de-panelas-tramontina-solar-em-aco-inox-com-fundo-triplo-e-tampas-de-inox-5-pecas', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 970.2, 1309.77, 'TRAM-65510780', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65510780', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65510780PDM001E.jpg', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27899586', 'jogo-de-panelas-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-bege-10-pecas', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 10 Peças', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 10 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 504.9, 681.62, 'TRAM-27899586', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27899586', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27899586PDM001E.jpg', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 10 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299006', 'jogo-de-panelas-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-07-pecas', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 07 Peças', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 07 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 480.6, 648.81, 'TRAM-28299006', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299006', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299006PDM001E.jpg', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 07 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297612', 'kit-tramontina-47-pecas-para-cozinha-com-panelas-antiaderentes-em-aluminio-talheres-facas-e-utensilios-domesticos', 'Kit Tramontina 47 peças para Cozinha com Panelas Antiaderentes em Alumínio, Talheres, Facas e Utensílios Domésticos', 'Kit Tramontina 47 peças para Cozinha com Panelas Antiaderentes em Alumínio, Talheres, Facas e Utensílios Domésticos. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 528.3, 713.21, 'TRAM-20297612', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297612', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297612PDM001E.jpg', 'Kit Tramontina 47 peças para Cozinha com Panelas Antiaderentes em Alumínio, Talheres, Facas e Utensílios Domésticos', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65660280', 'jogo-de-panelas-tramontina-allegra-em-aco-inox-com-fundo-triplo-5-pecas', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 5 Peças', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 626.4, 845.64, 'TRAM-65660280', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65660280', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65660280PDM001E.jpg', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299004', 'jogo-de-panelas-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-4-pecas', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 4 Peças', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 290.7, 392.45, 'TRAM-28299004', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299004', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299004PDM001E.jpg', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599727', 'jogo-de-panelas-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-10-pecas', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 Peças', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 752.4, 1015.74, 'TRAM-28599727', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599727', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599727PDM001E.jpg', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299005', 'jogo-de-panelas-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-05-pecas', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 05 Peças', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 05 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 368.1, 496.94, 'TRAM-28299005', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299005', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299005PDM001E.jpg', 'Jogo de Panelas Tramontina Linz em Aluminio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 05 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297761', 'jogo-de-panelas-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-07-pecas', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 07 Peças', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 07 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 467.1, 630.59, 'TRAM-20297761', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297761', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297761PDM001E.jpg', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 07 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299007', 'jogo-de-panelas-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-10-pecas', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 10 Peças', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 10 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 593.1, 800.69, 'TRAM-28299007', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299007', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299007PDM001E.jpg', 'Jogo de Panelas Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 10 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299497', 'jogo-de-panelas-tramontina-michigan-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-siena-natural-5-pecas', 'Jogo de Panelas Tramontina Michigan em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Siena Natural 5 Peças', 'Jogo de Panelas Tramontina Michigan em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Siena Natural 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 406.8, 549.18, 'TRAM-28299497', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299497', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299497PDM001E.jpg', 'Jogo de Panelas Tramontina Michigan em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Siena Natural 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65650170', 'jogo-de-panelas-tramontina-allegra-em-aco-inox-com-fundo-triplo-7-pecas', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 7 Peças', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 878.4, 1185.84, 'TRAM-65650170', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65650170', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65650170PDM001E.jpg', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65660220', 'jogo-de-panelas-tramontina-allegra-em-aco-inox-com-fundo-triplo-e-tampas-de-inox-3-pecas', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 3 Peças', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 3 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 536.4, 724.14, 'TRAM-65660220', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65660220', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65660220PDM001E.jpg', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 3 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65650280', 'jogo-de-panelas-tramontina-allegra-em-aco-inox-com-fundo-triplo-e-tampas-de-inox-5-pecas', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 690, 931.5, 'TRAM-65650280', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65650280', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65650280PDM001E.jpg', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599461', 'jogo-de-panelas-tramontina-milazzo-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-amendoa-5-pecas', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 5 Peças', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 569.05, 768.22, 'TRAM-28599461', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599461', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599461PDM001E.jpg', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599601', 'jogo-de-panelas-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-chumbo-5-pecas', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 5 Peças', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 471.2, 636.12, 'TRAM-28599601', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599601', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599601PDM001E.jpg', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599701', 'jogo-de-panelas-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-vermelho-5-pecas', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 5 Peças', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 471.2, 636.12, 'TRAM-28599701', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599701', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599701PDM001E.jpg', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28799002', 'jogo-de-panelas-tramontina-monaco-induction-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-premium-preto-5-pecas', 'Jogo de Panelas Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 5 Peças', 'Jogo de Panelas Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1499, 2023.65, 'TRAM-28799002', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28799002', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28799002PDM001E.jpg', 'Jogo de Panelas Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20399783', 'jogo-de-panelas-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabos-e-alcas-vermelho-7-pecas', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Vermelho 7 Peças', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Vermelho 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 811, 1094.85, 'TRAM-20399783', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20399783', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20399783PDM001E.jpg', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Vermelho 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65510200', 'jogo-de-panelas-tramontina-solar-em-aco-inox-com-fundo-triplo-e-tampas-de-inox-6-pecas', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox  6 Peças', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox  6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 949, 1281.15, 'TRAM-65510200', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65510200', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65510200PDM001E.jpg', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox  6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20998053', 'kit-tramontina-lyon-em-aluminio-forjado-com-revestimento-interno-e-externo-em-antiaderente-starflon-high-performance-chumbo-6-pecas', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Chumbo 6 Peças', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Chumbo 6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1899, 2563.65, 'TRAM-20998053', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20998053', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20998053PDM001E.jpg', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Chumbo 6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297008', 'jogo-de-panelas-tramontina-caribe-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-de-poliester-preto-5-pecas', 'Jogo de Panelas Tramontina Caribe com Revestimento Interno em Antiaderente Starflon Max e Externo de Poliéster Preto 5 Peças', 'Jogo de Panelas Tramontina Caribe com Revestimento Interno em Antiaderente Starflon Max e Externo de Poliéster Preto 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 486, 656.1, 'TRAM-20297008', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297008', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297008PDM001E.jpg', 'Jogo de Panelas Tramontina Caribe com Revestimento Interno em Antiaderente Starflon Max e Externo de Poliéster Preto 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65120040', 'jogo-de-panelas-tramontina-solar-silicone-em-aco-inox-com-fundo-triplo-5-pecas', 'Jogo de Panelas Tramontina Solar Silicone em Aço Inox com Fundo Triplo 5 Peças', 'Jogo de Panelas Tramontina Solar Silicone em Aço Inox com Fundo Triplo 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1864, 2516.4, 'TRAM-65120040', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65120040', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65120040PDM001E.jpg', 'Jogo de Panelas Tramontina Solar Silicone em Aço Inox com Fundo Triplo 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65240200', 'jogo-de-panelas-tramontina-grano-compact-em-aco-inox-com-corpo-triplo-e-alcas-com-revestimento-em-silicone-preto-3-pecas', 'Jogo de Panelas Tramontina Grano Compact em Aço Inox com Corpo Triplo e Alças com Revestimento em Silicone Preto 3 Peças', 'Jogo de Panelas Tramontina Grano Compact em Aço Inox com Corpo Triplo e Alças com Revestimento em Silicone Preto 3 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1838, 2481.3, 'TRAM-65240200', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65240200', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65240200PDM001E.jpg', 'Jogo de Panelas Tramontina Grano Compact em Aço Inox com Corpo Triplo e Alças com Revestimento em Silicone Preto 3 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65660230', 'jogo-de-panelas-tramontina-allegra-em-aco-inox-com-fundo-triplo-e-tampas-de-inox-2-pecas', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 2 Peças', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 2 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 429, 579.15, 'TRAM-65660230', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65660230', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65660230PDM001E.jpg', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 2 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65570000', 'jogo-de-panelas-tramontina-lotus-em-aco-inox-com-fundo-triplo-e-alcas-dobraveis-3-pecas', 'Jogo de Panelas Tramontina Lótus em Aço Inox com Fundo Triplo e Alças Dobráveis 3 Peças', 'Jogo de Panelas Tramontina Lótus em Aço Inox com Fundo Triplo e Alças Dobráveis 3 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1025, 1383.75, 'TRAM-65570000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65570000', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65570000PDM001E.jpg', 'Jogo de Panelas Tramontina Lótus em Aço Inox com Fundo Triplo e Alças Dobráveis 3 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20298761', 'jogo-de-panelas-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-5-pecas', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 5 Peças', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 405, 546.75, 'TRAM-20298761', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20298761', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20298761PDM001E.jpg', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20399083', 'jogo-de-panelas-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabos-e-alcas-grafite-7-pecas', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Grafite 7 Peças', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Grafite 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 811, 1094.85, 'TRAM-20399083', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20399083', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20399083PDM001E.jpg', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Grafite 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65720000', 'jogo-de-panelas-tramontina-solar-baquelite-em-aco-inox-fundo-triplo-com-cabos-e-alcas-de-baquelite-6-pecas', 'Jogo de Panelas Tramontina Solar Baquelite em Aço Inox Fundo Triplo com Cabos e Alças de Baquelite 6 Peças', 'Jogo de Panelas Tramontina Solar Baquelite em Aço Inox Fundo Triplo com Cabos e Alças de Baquelite 6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1883, 2542.05, 'TRAM-65720000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65720000', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65720000PDM001E.jpg', 'Jogo de Panelas Tramontina Solar Baquelite em Aço Inox Fundo Triplo com Cabos e Alças de Baquelite 6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65160000', 'jogo-de-panelas-tramontina-grano-baquelite-em-aco-inox-com-corpo-triplo-e-cabos-e-alcas-em-baquelite-preto-4-pecas', 'Jogo de Panelas Tramontina Grano Baquelite em Aço Inox com Corpo Triplo e Cabos e Alças em Baquelite Preto 4 Peças', 'Jogo de Panelas Tramontina Grano Baquelite em Aço Inox com Corpo Triplo e Cabos e Alças em Baquelite Preto 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1420, 1917, 'TRAM-65160000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65160000', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65160000PDM001E.jpg', 'Jogo de Panelas Tramontina Grano Baquelite em Aço Inox com Corpo Triplo e Cabos e Alças em Baquelite Preto 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65300310', 'jogo-de-panelas-tramontina-brava-antiaderente-em-aco-inox-com-fundo-triplo-cabos-e-alcas-com-acabamento-efeito-amadeirado-4-pecas', 'Jogo de Panelas Tramontina Brava Antiaderente em Aço Inox com Fundo Triplo Cabos e Alças com Acabamento Efeito Amadeirado 4 Peças', 'Jogo de Panelas Tramontina Brava Antiaderente em Aço Inox com Fundo Triplo Cabos e Alças com Acabamento Efeito Amadeirado 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1351, 1823.85, 'TRAM-65300310', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65300310', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65300310PDM001E.jpg', 'Jogo de Panelas Tramontina Brava Antiaderente em Aço Inox com Fundo Triplo Cabos e Alças com Acabamento Efeito Amadeirado 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65500000', 'jogo-de-panelas-tramontina-solar-em-aco-inox-fundo-triplo-6-pecas', 'Jogo de Panelas Tramontina Solar em Aço Inox Fundo Triplo  6 Peças', 'Jogo de Panelas Tramontina Solar em Aço Inox Fundo Triplo  6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1710, 2308.5, 'TRAM-65500000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65500000', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65500000PDM001E.jpg', 'Jogo de Panelas Tramontina Solar em Aço Inox Fundo Triplo  6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65650270', 'jogo-de-panelas-tramontina-allegra-em-aco-inox-com-fundo-triplo-e-tampas-de-inox-4-pecas', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 4 Peças', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 666, 899.1, 'TRAM-65650270', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65650270', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65650270PDM001E.jpg', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo e Tampas de Inox 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65400410', 'jogo-cozi-pasta-tramontina-brava-em-aco-inox-fundo-triplo-com-tampa-plana-e-alcas-2-pecas-20-cm', 'Jogo Cozi-Pasta Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana e Alças 2 Peças 20 cm', 'Jogo Cozi-Pasta Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana e Alças 2 Peças 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 589, 795.15, 'TRAM-65400410', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65400410', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65400410PDM001E.jpg', 'Jogo Cozi-Pasta Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana e Alças 2 Peças 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65960000', 'jogo-de-panelas-tramontina-chrono-em-aco-inox-com-corpo-triplo-4-pecas', 'Jogo de Panelas Tramontina Chrono em Aço Inox com Corpo Triplo 4 Peças', 'Jogo de Panelas Tramontina Chrono em Aço Inox com Corpo Triplo 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1399, 1888.65, 'TRAM-65960000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65960000', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65960000PDM001E.jpg', 'Jogo de Panelas Tramontina Chrono em Aço Inox com Corpo Triplo 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65650060', 'jogo-cozi-pasta-tramontina-allegra-em-aco-inox-com-fundo-triplo-2-pecas', 'Jogo Cozi-Pasta Tramontina Allegra em Aço Inox com Fundo Triplo 2 Peças', 'Jogo Cozi-Pasta Tramontina Allegra em Aço Inox com Fundo Triplo 2 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 563, 760.05, 'TRAM-65650060', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65650060', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65650060PDM001E.jpg', 'Jogo Cozi-Pasta Tramontina Allegra em Aço Inox com Fundo Triplo 2 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599617', 'jogo-de-panelas-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-07-pecas', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 07 Peças', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 07 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 711, 959.85, 'TRAM-28599617', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599617', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599617PDM001E.jpg', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 07 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65650190', 'jogo-de-panelas-tramontina-allegra-em-aco-inox-com-fundo-triplo-5-pecas-65650190', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 5 Peças', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 837, 1129.95, 'TRAM-65650190', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65650190', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65650190PDM001E.jpg', 'Jogo de Panelas Tramontina Allegra em Aço Inox com Fundo Triplo 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20499159', 'kit-7-pecas-all-in-one-plus-tramontina-com-revestimento-interno-ceramico-e-externo-siliconado', 'Kit 7 peças All in one Plus  Tramontina com Revestimento Interno Cerâmico e Externo Siliconado', 'Kit 7 peças All in one Plus  Tramontina com Revestimento Interno Cerâmico e Externo Siliconado. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 799, 1078.65, 'TRAM-20499159', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20499159', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20499159PDM001E.jpg', 'Kit 7 peças All in one Plus  Tramontina com Revestimento Interno Cerâmico e Externo Siliconado', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599602', 'jogo-de-panelas-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-chumbo-7-pecas', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 7 Peças', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 930, 1255.5, 'TRAM-28599602', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599602', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599602PDM001E.jpg', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20399782', 'jogo-de-panelas-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabos-e-alcas-vermelho-5-pecas', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Vermelho 5 Peças', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Vermelho 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 572, 772.2, 'TRAM-20399782', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20399782', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20399782PDM001E.jpg', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabos e Alças Vermelho 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20499716', 'jogo-de-panelas-tramontina-sicilia-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-excellent-vermelho-4-pecas', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Vermelho 4 Peças', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Vermelho 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 888, 1198.8, 'TRAM-20499716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20499716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20499716PDM001E.jpg', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Vermelho 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20899050', 'jogo-de-panelas-tramontina-monaco-em-aluminio-com-revestimento-interno-e-externo-em-starflon-premium-preto-05-pecas', 'Jogo de Panelas Tramontina Mônaco em Alumínio com Revestimento Interno e Externo em Starflon Premium Preto 05 Peças', 'Jogo de Panelas Tramontina Mônaco em Alumínio com Revestimento Interno e Externo em Starflon Premium Preto 05 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1099, 1483.65, 'TRAM-20899050', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20899050', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20899050PDM001E.jpg', 'Jogo de Panelas Tramontina Mônaco em Alumínio com Revestimento Interno e Externo em Starflon Premium Preto 05 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20999254', 'kit-de-panelas-tramontina-lyon-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-high-perfomance-verde-esmeralda-4-pecas', 'Kit de Panelas Tramontina Lyon em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon High Perfomance Verde Esmeralda 4 Peças', 'Kit de Panelas Tramontina Lyon em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon High Perfomance Verde Esmeralda 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 2399, 3238.65, 'TRAM-20999254', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20999254', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20999254PDM001E.jpg', 'Kit de Panelas Tramontina Lyon em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon High Perfomance Verde Esmeralda 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65500400', 'jogo-cozi-pasta-tramontina-solar-em-aco-inox-fundo-triplo-com-alcas-2-pecas-24-cm', 'Jogo Cozi-Pasta Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 Peças 24 cm', 'Jogo Cozi-Pasta Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 Peças 24 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 916, 1236.6, 'TRAM-65500400', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65500400', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65500400PDM001E.jpg', 'Jogo Cozi-Pasta Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 Peças 24 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65180510', 'jogo-de-panelas-tramontina-brava-baquelite-em-aco-inox-com-fundo-triplo-e-cabos-e-alcas-de-baquelite-preto-4-pecas', 'Jogo de Panelas Tramontina Brava Baquelite em Aço Inox com Fundo Triplo e Cabos e Alças de Baquelite Preto 4 Peças', 'Jogo de Panelas Tramontina Brava Baquelite em Aço Inox com Fundo Triplo e Cabos e Alças de Baquelite Preto 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 849, 1146.15, 'TRAM-65180510', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65180510', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65180510PDM001E.jpg', 'Jogo de Panelas Tramontina Brava Baquelite em Aço Inox com Fundo Triplo e Cabos e Alças de Baquelite Preto 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20499616', 'jogo-de-panelas-tramontina-sicilia-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-excellent-avela-4-pecas', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Avelã 4 Peças', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Avelã 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 888, 1198.8, 'TRAM-20499616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20499616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20499616PDM001E.jpg', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Avelã 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20499615', 'jogo-de-panelas-tramontina-sicilia-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-excellent-avela-5-pecas', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Avelã 5 Peças', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Avelã 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 749, 1011.15, 'TRAM-20499615', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20499615', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20499615PDM001E.jpg', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Avelã 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28399142', 'jogo-de-panelas-tramontina-spezia-induction-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-excellent-azul-ardosia-5-pecas', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul Ardósia 5 Peças', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul Ardósia 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 799, 1078.65, 'TRAM-28399142', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28399142', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28399142PDM001E.jpg', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul Ardósia 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20399082', 'jogo-de-panelas-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-grafite-5-pecas', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Grafite 5 Peças', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Grafite 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 572, 772.2, 'TRAM-20399082', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20399082', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20399082PDM001E.jpg', 'Jogo de Panelas Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Grafite 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28799030', 'jogo-de-panelas-tramontina-romagna-em-aco-inox-e-aluminio-com-revestimento-interno-ceramico-black-stone-4-pecas', 'Jogo de Panelas Tramontina Romagna em Aço Inox e Alumínio com Revestimento Interno Cerâmico Black Stone 4 peças', 'Jogo de Panelas Tramontina Romagna em Aço Inox e Alumínio com Revestimento Interno Cerâmico Black Stone 4 peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1349, 1821.15, 'TRAM-28799030', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28799030', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28799030PDM001E.jpg', 'Jogo de Panelas Tramontina Romagna em Aço Inox e Alumínio com Revestimento Interno Cerâmico Black Stone 4 peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65120030', 'jogo-de-panelas-tramontina-solar-silicone-em-aco-inox-4-pecas', 'Jogo de Panelas Tramontina Solar Silicone em Aço Inox 4 Peças', 'Jogo de Panelas Tramontina Solar Silicone em Aço Inox 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1548, 2089.8, 'TRAM-65120030', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65120030', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65120030PDM001E.jpg', 'Jogo de Panelas Tramontina Solar Silicone em Aço Inox 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65620010', 'jogo-de-panelas-tramontina-professional-em-aco-inox-fundo-triplo-com-tampa-plana-detalhe-satinado-5-pecas', 'Jogo de Panelas Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 5 Peças', 'Jogo de Panelas Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1586, 2141.1, 'TRAM-65620010', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65620010', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65620010PDM001E.jpg', 'Jogo de Panelas Tramontina Professional em Aço Inox Fundo Triplo com Tampa Plana Detalhe Satinado 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599460', 'jogo-de-panelas-tramontina-milazzo-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-amendoa-4-pecas', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 4 Peças', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 589, 795.15, 'TRAM-28599460', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599460', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599460PDM001E.jpg', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65400020', 'jogo-de-panelas-tramontina-brava-em-aco-inox-fundo-triplo-com-tampa-plana-4-pecas', 'Jogo de Panelas Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana 4 Peças', 'Jogo de Panelas Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 798, 1077.3, 'TRAM-65400020', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65400020', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65400020PDM001E.jpg', 'Jogo de Panelas Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28799111', 'jogo-de-panelas-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-azul-mediterraneo-5-pecas', 'Jogo de Panelas Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 5 Peças', 'Jogo de Panelas Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 949, 1281.15, 'TRAM-28799111', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28799111', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28799111PDM001E.jpg', 'Jogo de Panelas Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20298661', 'jogo-de-panelas-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-5-pecas', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 5 Peças', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 405, 546.75, 'TRAM-20298661', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20298661', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20298661PDM001E.jpg', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20298764', 'jogo-de-panelas-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-7-pecas', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 7 Peças', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 650, 877.5, 'TRAM-20298764', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20298764', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20298764PDM001E.jpg', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20998553', 'kit-tramontina-lyon-em-aluminio-forjado-com-revestimento-interno-e-externo-em-antiaderente-starflon-high-performance-carmim-6-pecas', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Carmim 6 Peças', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Carmim 6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1899, 2563.65, 'TRAM-20998553', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20998553', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20998553PDM001E.jpg', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Carmim 6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28399342', 'jogo-de-panelas-tramontina-spezia-induction-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-excellent-areia-5-pecas', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Areia 5 Peças', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Areia 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 799, 1078.65, 'TRAM-28399342', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28399342', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28399342PDM001E.jpg', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Areia 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20999400', 'jogo-de-panelas-multiuso-tramontina-itria-em-aluminio-com-revestimento-ceramico-marfim-e-cabo-removivel-10-pecas', 'Jogo de Panelas Multiuso Tramontina Itria em Alumínio com Revestimento Cerâmico Marfim e Cabo Removível 10 Peças', 'Jogo de Panelas Multiuso Tramontina Itria em Alumínio com Revestimento Cerâmico Marfim e Cabo Removível 10 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 899, 1213.65, 'TRAM-20999400', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20999400', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20999400PDM001E.jpg', 'Jogo de Panelas Multiuso Tramontina Itria em Alumínio com Revestimento Cerâmico Marfim e Cabo Removível 10 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65180310', 'jogo-de-panelas-tramontina-brava-baquelite-em-aco-inox-com-fundo-triplo-cabos-e-alcas-com-acabamento-efeito-amadeirado-4-pecas', 'Jogo de Panelas Tramontina Brava Baquelite em Aço Inox com Fundo Triplo Cabos e Alças com Acabamento Efeito Amadeirado 4 Peças', 'Jogo de Panelas Tramontina Brava Baquelite em Aço Inox com Fundo Triplo Cabos e Alças com Acabamento Efeito Amadeirado 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 947, 1278.45, 'TRAM-65180310', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65180310', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65180310PDM001E.jpg', 'Jogo de Panelas Tramontina Brava Baquelite em Aço Inox com Fundo Triplo Cabos e Alças com Acabamento Efeito Amadeirado 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65500040', 'jogo-de-panelas-tramontina-solar-em-aco-inox-fundo-triplo-6-pecas-65500040', 'Jogo de Panelas Tramontina Solar em Aço Inox Fundo Triplo 6 Peças', 'Jogo de Panelas Tramontina Solar em Aço Inox Fundo Triplo 6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1704, 2300.4, 'TRAM-65500040', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65500040', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65500040PDM001E.jpg', 'Jogo de Panelas Tramontina Solar em Aço Inox Fundo Triplo 6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20999700', 'jogo-de-panelas-multiuso-tramontina-itria-em-aluminio-com-revestimento-interno-e-externo-ceramico-vermelho-10-pecas', 'Jogo de Panelas Multiuso Tramontina Itria em Alumínio com Revestimento Interno e Externo Cerâmico Vermelho 10 Peças', 'Jogo de Panelas Multiuso Tramontina Itria em Alumínio com Revestimento Interno e Externo Cerâmico Vermelho 10 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 899, 1213.65, 'TRAM-20999700', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20999700', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20999700PDM001E.jpg', 'Jogo de Panelas Multiuso Tramontina Itria em Alumínio com Revestimento Interno e Externo Cerâmico Vermelho 10 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20499715', 'jogo-de-panelas-tramontina-sicilia-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-excellent-vermelho-5-pecas', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Vermelho 5 Peças', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Vermelho 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 749, 1011.15, 'TRAM-20499715', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20499715', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20499715PDM001E.jpg', 'Jogo de Panelas Tramontina Sicília em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Excellent Vermelho 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20998453', 'kit-tramontina-lyon-em-aluminio-forjado-com-revestimento-interno-e-externo-em-antiaderente-starflon-high-performance-dourado-6-pecas', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Dourado 6 Peças', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Dourado 6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1899, 2563.65, 'TRAM-20998453', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20998453', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20998453PDM001E.jpg', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Dourado 6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65720740', 'jogo-de-panelas-tramontina-solar-baquelite-em-aco-inox-com-fundo-triplo-e-cabos-e-alcas-de-baquelite-3-pecas', 'Jogo de Panelas Tramontina Solar Baquelite em Aço Inox com Fundo Triplo e Cabos e Alças de Baquelite 3 Peças', 'Jogo de Panelas Tramontina Solar Baquelite em Aço Inox com Fundo Triplo e Cabos e Alças de Baquelite 3 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 989, 1335.15, 'TRAM-65720740', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65720740', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65720740PDM001E.jpg', 'Jogo de Panelas Tramontina Solar Baquelite em Aço Inox com Fundo Triplo e Cabos e Alças de Baquelite 3 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28399141', 'jogo-de-panelas-tramontina-spezia-induction-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-excellent-azul-ardosia-4-pecas', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul Ardósia 4 Peças', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul Ardósia 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 920, 1242, 'TRAM-28399141', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28399141', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28399141PDM001E.jpg', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul Ardósia 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297964', 'jogo-de-panelas-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-10-pecas', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 Peças', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 672, 907.2, 'TRAM-20297964', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297964', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297964PDM001E.jpg', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65420013', 'jogo-de-panelas-tramontina-iacute-sis-em-aco-inox-com-fundo-triplo-04-pecas', 'Jogo de Panelas Tramontina &Iacute;sis em Aço Inox com Fundo Triplo 04 Peças', 'Jogo de Panelas Tramontina &Iacute;sis em Aço Inox com Fundo Triplo 04 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 688, 928.8, 'TRAM-65420013', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65420013', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65420013PDM001E.jpg', 'Jogo de Panelas Tramontina &Iacute;sis em Aço Inox com Fundo Triplo 04 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28699416', 'jogo-de-panelas-tramontina-veronese-em-aluminio-reciclado-com-revestimento-interno-ceramico-e-externo-siliconado-argila-5-pecas', 'Jogo de Panelas Tramontina Veronese em Alumínio Reciclado com Revestimento Interno Cerâmico e Externo Siliconado Argila 5 Peças', 'Jogo de Panelas Tramontina Veronese em Alumínio Reciclado com Revestimento Interno Cerâmico e Externo Siliconado Argila 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 599, 808.65, 'TRAM-28699416', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28699416', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28699416PDM001E.jpg', 'Jogo de Panelas Tramontina Veronese em Alumínio Reciclado com Revestimento Interno Cerâmico e Externo Siliconado Argila 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28799330', 'jogo-de-panelas-tramontina-romagna-em-aco-inox-e-aluminio-com-revestimento-interno-ceramico-marfim-4-pecas', 'Jogo de Panelas Tramontina Romagna em Aço Inox e Alumínio com Revestimento Interno Cerâmico Marfim 4 peças', 'Jogo de Panelas Tramontina Romagna em Aço Inox e Alumínio com Revestimento Interno Cerâmico Marfim 4 peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1349, 1821.15, 'TRAM-28799330', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28799330', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28799330PDM001E.jpg', 'Jogo de Panelas Tramontina Romagna em Aço Inox e Alumínio com Revestimento Interno Cerâmico Marfim 4 peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28399341', 'jogo-de-panelas-tramontina-spezia-induction-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-excellent-areia-4-pecas', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Areia 4 Peças', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Areia 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 920, 1242, 'TRAM-28399341', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28399341', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28399341PDM001E.jpg', 'Jogo de Panelas Tramontina Spezia Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Areia 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20998853', 'kit-tramontina-lyon-em-aluminio-forjado-com-revestimento-interno-e-externo-em-antiaderente-starflon-high-performance-azul-elementar-6-pecas', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Azul Elementar 6 Peças', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Azul Elementar 6 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1899, 2563.65, 'TRAM-20998853', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20998853', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20998853PDM001E.jpg', 'Kit Tramontina Lyon em Alumínio Forjado com Revestimento Interno e Externo em Antiaderente Starflon High Performance Azul Elementar 6 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65510760', 'jogo-de-panelas-tramontina-solar-em-aco-inox-com-fundo-triplo-4-pecas', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo 4 Peças', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 986, 1331.1, 'TRAM-65510760', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65510760', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65510760PDM001E.jpg', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65580000', 'jogo-de-panelas-tramontina-grano-black-em-aco-inox-corpo-triplo-4-pecas', 'Jogo de Panelas Tramontina Grano Black em Aço Inox Corpo Triplo 4 Peças', 'Jogo de Panelas Tramontina Grano Black em Aço Inox Corpo Triplo 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1699, 2293.65, 'TRAM-65580000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65580000', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65580000PDM001E.jpg', 'Jogo de Panelas Tramontina Grano Black em Aço Inox Corpo Triplo 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65510740', 'jogo-de-panelas-tramontina-solar-em-aco-inox-com-fundo-triplo-3-pecas', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo 3 Peças', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo 3 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 797, 1075.95, 'TRAM-65510740', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65510740', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65510740PDM001E.jpg', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo 3 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599462', 'jogo-de-panelas-tramontina-milazzo-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-amendoa-7-pecas', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 7 Peças', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 926, 1250.1, 'TRAM-28599462', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599462', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599462PDM001E.jpg', 'Jogo de Panelas Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20917000', 'cabo-removivel-tramontina-iacute-tria-em-material-antitermico', 'Cabo Removível Tramontina &Iacute;tria em Material Antitérmico', 'Cabo Removível Tramontina &Iacute;tria em Material Antitérmico. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 273, 368.55, 'TRAM-20917000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20917000', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20917000PDM001E.jpg', 'Cabo Removível Tramontina &Iacute;tria em Material Antitérmico', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20298664', 'jogo-de-panelas-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-7-pecas', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 7 Peças', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 7 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 650, 877.5, 'TRAM-20298664', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20298664', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20298664PDM001E.jpg', 'Jogo de Panelas Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 7 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65140004', 'jogo-de-panelas-tramontina-grano-glass-em-aco-inox-com-corpo-triplo-e-tampa-de-vidro-4-pecas', 'Jogo de Panelas Tramontina Grano Glass em Aço Inox com Corpo Triplo e Tampa de Vidro 4 Peças', 'Jogo de Panelas Tramontina Grano Glass em Aço Inox com Corpo Triplo e Tampa de Vidro 4 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1545, 2085.75, 'TRAM-65140004', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65140004', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65140004PDM001E.jpg', 'Jogo de Panelas Tramontina Grano Glass em Aço Inox com Corpo Triplo e Tampa de Vidro 4 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65510560', 'jogo-de-panelas-tramontina-solar-em-aco-inox-com-fundo-triplo-e-tampas-de-inox-5-pecas-65510560', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 1165, 1572.75, 'TRAM-65510560', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65510560', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65510560PDM001E.jpg', 'Jogo de Panelas Tramontina Solar em Aço Inox com Fundo Triplo e Tampas de Inox 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599717', 'jogo-de-panelas-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-07-pecas', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 07 Peças', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 07 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 711, 959.85, 'TRAM-28599717', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599717', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599717PDM001E.jpg', 'Jogo de Panelas Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 07 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65400010', 'jogo-de-panelas-tramontina-brava-em-aco-inox-fundo-triplo-com-tampa-plana-5-pecas', 'Jogo de Panelas Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana 5 Peças', 'Jogo de Panelas Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 896, 1209.6, 'TRAM-65400010', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65400010', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65400010PDM001E.jpg', 'Jogo de Panelas Tramontina Brava em Aço Inox Fundo Triplo com Tampa Plana 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297508', 'jogo-de-panelas-tramontina-caribe-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-5-pecas', 'Jogo de Panelas Tramontina Caribe com Revestimento Interno e Externo em antiaderente Starflon Max Vermelho 5 Peças', 'Jogo de Panelas Tramontina Caribe com Revestimento Interno e Externo em antiaderente Starflon Max Vermelho 5 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-jogos-de-panelas', 486, 656.1, 'TRAM-20297508', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297508', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297508PDM001E.jpg', 'Jogo de Panelas Tramontina Caribe com Revestimento Interno e Externo em antiaderente Starflon Max Vermelho 5 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28318224', 'cacarola-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-verde-24-cm', 'Caçarola Tramontina Lyf em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde 24 cm', 'Caçarola Tramontina Lyf em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde 24 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 106.02, 143.13, 'TRAM-28318224', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28318224', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28318224PDM001E.jpg', 'Caçarola Tramontina Lyf em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde 24 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28319218', 'panela-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-verde-natureza-18-cm-2-1-l', 'Panela Tramontina LYF em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde Natureza 18 cm 2,1 L', 'Panela Tramontina LYF em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde Natureza 18 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 63.24, 85.37, 'TRAM-28319218', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28319218', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28319218PDM001E.jpg', 'Panela Tramontina LYF em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde Natureza 18 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28318220', 'cacarola-tramontina-lyf-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-verde-natureza-20-cm-2-9-l', 'Caçarola Tramontina LYF em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde Natureza 20 cm 2,9 L', 'Caçarola Tramontina LYF em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde Natureza 20 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 106.02, 143.13, 'TRAM-28318220', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28318220', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28318220PDM001E.jpg', 'Caçarola Tramontina LYF em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Verde Natureza 20 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62484160', 'cacarola-tramontina-duo-silicone-funda-em-aco-inox-fundo-triplo-com-tampa-e-alcas-em-silicone-16-cm-1-8-l', 'Caçarola Tramontina Duo Silicone Funda em Aço Inox Fundo Triplo com Tampa e Alças em Silicone 16 cm 1,8 L', 'Caçarola Tramontina Duo Silicone Funda em Aço Inox Fundo Triplo com Tampa e Alças em Silicone 16 cm 1,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 209, 282.15, 'TRAM-62484160', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62484160', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62484160PDM001E.jpg', 'Caçarola Tramontina Duo Silicone Funda em Aço Inox Fundo Triplo com Tampa e Alças em Silicone 16 cm 1,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62485200', 'caldeirao-tramontina-duo-silicone-em-aco-inox-fundo-triplo-com-tampa-e-alcas-em-silicone-20-cm-4-5-l', 'Caldeirão Tramontina Duo Silicone em Aço Inox Fundo Triplo com Tampa e Alças em Silicone 20 cm 4,5 L', 'Caldeirão Tramontina Duo Silicone em Aço Inox Fundo Triplo com Tampa e Alças em Silicone 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 291.2, 393.12, 'TRAM-62485200', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62485200', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62485200PDM001E.jpg', 'Caldeirão Tramontina Duo Silicone em Aço Inox Fundo Triplo com Tampa e Alças em Silicone 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261820', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-20-cm-2-8-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 2,8 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 2,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 79.1, 106.79, 'TRAM-20261820', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261820', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261820PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 2,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27803075', 'frigideira-tramontina-em-aluminio-com-revestimento-interno-com-antiaderente-starflon-excellent-cinza-30-cm-2-9-l', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Cinza 30 cm 2,9 L', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Cinza 30 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 110.6, 149.31, 'TRAM-27803075', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27803075', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27803075PDM001E.jpg', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Cinza 30 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28538622', 'jogo-4-funcoes-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro', 'Jogo 4 Funções Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro', 'Jogo 4 Funções Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 420.3, 567.41, 'TRAM-28538622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28538622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28538622PDM001E.jpg', 'Jogo 4 Funções Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262816', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-16-cm-1-4-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm 1,4 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 58.73, 79.29, 'TRAM-20262816', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262816', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262816PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62490160', 'cozi-vapore-tramontina-duo-silicone-em-aco-inox-com-alcas-em-silicone-16-cm-1-6-l', 'Cozi-Vapore Tramontina Duo Silicone em Aço Inox com Alças em Silicone 16 cm 1,6 L', 'Cozi-Vapore Tramontina Duo Silicone em Aço Inox com Alças em Silicone 16 cm 1,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 125.3, 169.16, 'TRAM-62490160', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62490160', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62490160PDM001E.jpg', 'Cozi-Vapore Tramontina Duo Silicone em Aço Inox com Alças em Silicone 16 cm 1,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65620411', 'cozi-pasta-tramontina-professional-em-aco-inox-com-4-divisorias-oslash-30-cm-13-5-l-sem-embalagem-litografada', 'Cozi-Pasta Tramontina Professional em Aço Inox com 4 Divisórias &Oslash;30 cm 13,5 L Sem Embalagem Litografada', 'Cozi-Pasta Tramontina Professional em Aço Inox com 4 Divisórias &Oslash;30 cm 13,5 L Sem Embalagem Litografada. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 1090.6, 1472.31, 'TRAM-65620411', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65620411', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65620411PDM001E.jpg', 'Cozi-Pasta Tramontina Professional em Aço Inox com 4 Divisórias &Oslash;30 cm 13,5 L Sem Embalagem Litografada', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62645500', 'caldeirao-tramontina-professional-em-aco-inox-com-fundo-triplo-sem-tampa-50-cm-58-l', 'Caldeirão Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 50 cm 58 L', 'Caldeirão Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 50 cm 58 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 1870, 2524.5, 'TRAM-62645500', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62645500', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62645400PDM001E.jpg', 'Caldeirão Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 50 cm 58 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262818', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-18-cm-2-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 18 cm 2 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 70, 94.5, 'TRAM-20262818', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262818', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262818PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261818', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-18-cm-2-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 18 cm 2 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 70, 94.5, 'TRAM-20261818', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261818', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261818PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28723118', 'panela-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-azul-mediterraneo-18-cm-2-l', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 18 cm 2 L', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 219.2, 295.92, 'TRAM-28723118', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28723118', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28723118PDM001E.jpg', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28722420', 'cacarola-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-rosa-trufado-20-cm-2-9-l', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 20 cm 2,9 L', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 20 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 263.2, 355.32, 'TRAM-28722420', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28722420', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28722420PDM001E.jpg', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 20 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28723116', 'panela-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-azul-mediterraneo-16-cm-1-3-l', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 16 cm 1,3 L', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 16 cm 1,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 219.2, 295.92, 'TRAM-28723116', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28723116', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28723116PDM001E.jpg', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 16 cm 1,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20266716', 'jogo-4-funcoes-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-16-cm', 'Jogo 4 Funções Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm', 'Jogo 4 Funções Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 173.6, 234.36, 'TRAM-20266716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20266716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20266716PDM001E.jpg', 'Jogo 4 Funções Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28723418', 'panela-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-em-rosa-trufado-18-cm-2-l', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado em Rosa Trufado 18 cm 2 L', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado em Rosa Trufado 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 219.2, 295.92, 'TRAM-28723418', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28723418', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28723418PDM001E.jpg', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado em Rosa Trufado 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28722424', 'cacarola-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-rosa-trufado-24-cm-4-8-l', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado  Rosa Trufado 24 cm 4,8 L', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado  Rosa Trufado 24 cm 4,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 263.2, 355.32, 'TRAM-28722424', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28722424', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28722424PDM001E.jpg', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado  Rosa Trufado 24 cm 4,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28723416', 'panela-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-rosa-trufado-16-cm-1-3-l', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 16 cm 1,3 L', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 16 cm 1,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 219.2, 295.92, 'TRAM-28723416', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28723416', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28723416PDM001E.jpg', 'Panela Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 16 cm 1,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28722124', 'cacarola-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-azul-mediterraneo-24-cm-4-8-l', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 24 cm 4,8 L', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 24 cm 4,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 263.2, 355.32, 'TRAM-28722124', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28722124', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28722124PDM001E.jpg', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 24 cm 4,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28722120', 'cacarola-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-azul-mediterraneo-20-cm-2-9-l', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 20 cm 2,9 L', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 20 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 263.2, 355.32, 'TRAM-28722120', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28722120', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28722120PDM001E.jpg', 'Caçarola Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Azul Mediterrâneo 20 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262718', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-18-cm-2-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 2 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 95.4, 128.79, 'TRAM-20262718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262718PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524620', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-20-cm-2-9-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 2,9 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524620PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524726', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-26-cm-6-3-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 6,3 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 6,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524726', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524726', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524726PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 6,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524628', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-28-cm-8-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 28 cm 8 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 28 cm 8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524628', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524628', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524628PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 28 cm 8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28545732', 'wok-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-32-cm-4-4-l', 'Wok Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 32 cm 4,4 L', 'Wok Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 32 cm 4,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 299.7, 404.6, 'TRAM-28545732', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28545732', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28545732PDM001E.jpg', 'Wok Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 32 cm 4,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20263620', 'caldeirao-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-20-cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 166.5, 224.78, 'TRAM-20263620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20263620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20263620PDM001E.jpg', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530728', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-28-cm-11-8-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 28 cm 11,8 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 28 cm 11,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530728PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 28 cm 11,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530726', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-26-cm-9-6-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 9,6 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 9,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530726', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530726', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530726PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 9,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20263724', 'caldeirao-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-24-cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 166.5, 224.78, 'TRAM-20263724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20263724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20263724PDM001E.jpg', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524622', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-22-cm-3-8-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 3,8 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 3,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524622PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 3,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261720', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-20-cm-2-8-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 20 cm 2,8 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 20 cm 2,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261720PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 20 cm 2,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524728', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-28-cm-8-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 28 cm 8 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 28 cm 8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524728PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 28 cm 8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20395724', 'wok-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-24-cm-2-2-l', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 2,2 L', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 2,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 74.61, 100.72, 'TRAM-20395724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20395724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20395724PDM001E.jpg', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 2,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524624', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-24-cm-4-9-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 4,9 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 4,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524624PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 4,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20395728', 'wok-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-vermelho-28-cm-3-6-l', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 28 cm 3,6 L', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 28 cm 3,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 74.61, 100.72, 'TRAM-20395728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20395728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20395728PDM001E.jpg', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 28 cm 3,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62509200', 'tampa-avulsa-tramontina-solar-em-aco-inox-20-cm', 'Tampa Avulsa Tramontina Solar em Aço Inox 20 cm', 'Tampa Avulsa Tramontina Solar em Aço Inox 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 64.9, 87.62, 'TRAM-62509200', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62509200', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62509200PDM001E.jpg', 'Tampa Avulsa Tramontina Solar em Aço Inox 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525718', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-18-cm-2-1-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 2,1 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525718PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261620', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-20-cm-2-8-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 2,8 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 2,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261620PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 2,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20395028', 'wok-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-grafite-28-cm-3-6-l', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Grafite 28 cm 3,6 L', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Grafite 28 cm 3,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 74.61, 100.72, 'TRAM-20395028', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20395028', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20395028PDM001E.jpg', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Grafite 28 cm 3,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525720', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-20-cm-2-9-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 2,9 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525720PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20266616', 'jogo-4-funcoes-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-16-cm', 'Jogo 4 Funções Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm', 'Jogo 4 Funções Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 173.6, 234.36, 'TRAM-20266616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20266616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20266616PDM001E.jpg', 'Jogo 4 Funções Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262720', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-20-cm-2-8-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 2,8 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 2,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 95.4, 128.79, 'TRAM-20262720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262720PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 2,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525616', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-16-cm-1-5-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 1,5 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 1,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525616PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 1,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525722', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-22-cm-3-8-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 3,8 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 3,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525722PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 3,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530722', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-22-cm-5-7-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 5,7 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 5,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530722PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 5,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525618', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-18-cm-2-1-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 2,1 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525618PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262618', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-18-cm-2-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 2 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 95.4, 128.79, 'TRAM-20262618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262618PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262616', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-16-cm-1-4-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 1,4 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 95.4, 128.79, 'TRAM-20262616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262616PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524618', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-18-cm-2-1-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 2,1 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524618PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20395024', 'wok-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-grafite-24-cm-2-2-l', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Grafite 24 cm 2,2 L', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Grafite 24 cm 2,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 74.61, 100.72, 'TRAM-20395024', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20395024', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20395024PDM001E.jpg', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Grafite 24 cm 2,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530618', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-18-cm-3-1-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 3,1 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 3,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530618PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 18 cm 3,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530620', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-20-cm-4-2-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 4,2 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 4,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530620PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 4,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530622', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-22-cm-5-7-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 5,7 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 5,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530622PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 5,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28538722', 'jogo-4-funcoes-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro', 'Jogo 4 Funções Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro', 'Jogo 4 Funções Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 420.3, 567.41, 'TRAM-28538722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28538722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28538722PDM001E.jpg', 'Jogo 4 Funções Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28535624', 'espagueteira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-com-tampa-de-aluminio-chumbo-24-cm-7-2-l', 'Espagueteira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max com Tampa de Alumínio Chumbo 24 cm 7,2 L', 'Espagueteira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max com Tampa de Alumínio Chumbo 24 cm 7,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 320.4, 432.54, 'TRAM-28535624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28535624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28535624PDM001E.jpg', 'Espagueteira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max com Tampa de Alumínio Chumbo 24 cm 7,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525622', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-22-cm-3-8-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 3,8 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 3,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525622PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 3,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524626', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-26-cm-6-3-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 6,3 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 6,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524626', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524626', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524626PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 6,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261622', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-22-cm-3-7-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 22 cm 3,7 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 22 cm 3,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261622PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 22 cm 3,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261618', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-18-cm-2-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 2 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261618PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530718', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-18-cm-3-1-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 3,1 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 3,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530718PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 3,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530626', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-26-cm-9-6-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 9,6 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 9,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530626', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530626', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530626PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 9,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20263624', 'caldeirao-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-24-cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 166.5, 224.78, 'TRAM-20263624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20263624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20263624PDM001E.jpg', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530616', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-16-cm-2-1-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 2,1 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530616PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20263720', 'caldeirao-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-20-cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 166.5, 224.78, 'TRAM-20263720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20263720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20263720PDM001E.jpg', 'Caldeirão Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28535724', 'espagueteira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-com-tampa-de-aluminio-vermelho-24-cm-7-2-l', 'Espagueteira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max com Tampa de Alumínio Vermelho 24 cm 7,2 L', 'Espagueteira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max com Tampa de Alumínio Vermelho 24 cm 7,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 320.4, 432.54, 'TRAM-28535724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28535724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28535724PDM001E.jpg', 'Espagueteira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max com Tampa de Alumínio Vermelho 24 cm 7,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262716', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-16-cm-1-4-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 16 cm 1,4 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 16 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 95.4, 128.79, 'TRAM-20262716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262716PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 16 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65500300', 'jogo-de-cozi-vapore-tramontina-solar-em-aco-inox-fundo-triplo-com-alcas-2-pecas-16-cm', 'Jogo de Cozi-Vapore Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 peças 16 cm', 'Jogo de Cozi-Vapore Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 peças 16 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 396.9, 535.82, 'TRAM-65500300', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65500300', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65500300PDM001E.jpg', 'Jogo de Cozi-Vapore Tramontina Solar em Aço Inox Fundo Triplo com Alças 2 peças 16 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261718', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-18-cm-2-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 2 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261718PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524718', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-18-cm-2-1-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 2,1 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524718PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 18 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261722', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-22-cm-3-7-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 3,7 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 3,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261722PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 3,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524722', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-22-cm-3-8-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 3,8 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 3,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524722PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 3,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261724', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-24-cm-4-7-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 24 cm 4,7 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 24 cm 4,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261724PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 24 cm 4,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525620', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-20-cm-2-9-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 2,9 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525620PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 20 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62509240', 'tampa-avulsa-tramontina-solar-em-aco-inox-24-cm', 'Tampa Avulsa Tramontina Solar em Aço Inox 24 cm', 'Tampa Avulsa Tramontina Solar em Aço Inox 24 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 64.9, 87.62, 'TRAM-62509240', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62509240', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62509240PDM001E.jpg', 'Tampa Avulsa Tramontina Solar em Aço Inox 24 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524720', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-20-cm-2-9-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 2,9 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524720PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28524724', 'cacarola-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-24-cm-4-9-l', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 4,9 L', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 4,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28524724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28524724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28524724PDM001E.jpg', 'Caçarola Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 4,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20261624', 'cacarola-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-24-cm-4-7-l', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 4,7 L', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 4,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 114.3, 154.31, 'TRAM-20261624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20261624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20261624PDM001E.jpg', 'Caçarola Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 4,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28545632', 'wok-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-32-cm-4-4-l', 'Wok Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 32 cm 4,4 L', 'Wok Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 32 cm 4,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 299.7, 404.6, 'TRAM-28545632', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28545632', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28545632PDM001E.jpg', 'Wok Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 32 cm 4,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530628', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-28-cm-11-8-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 28 cm 11,8 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 28 cm 11,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530628', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530628', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530628PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 28 cm 11,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530720', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-20-cm-4-2-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 4,2 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 4,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530720PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 20 cm 4,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530716', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-16-cm-2-1-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 2,1 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530716PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62509160', 'tampa-avulsa-tramontina-solar-em-aco-inox-16-cm', 'Tampa Avulsa Tramontina Solar em Aço Inox 16 cm', 'Tampa Avulsa Tramontina Solar em Aço Inox 16 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 64.9, 87.62, 'TRAM-62509160', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62509160', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62509160PDM001E.jpg', 'Tampa Avulsa Tramontina Solar em Aço Inox 16 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20262620', 'panela-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-20-cm-2-8-l', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 2,8 L', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 2,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 95.4, 128.79, 'TRAM-20262620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20262620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20262620PDM001E.jpg', 'Panela Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 2,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28525716', 'panela-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-16-cm-1-5-l', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 1,5 L', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 1,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 127.8, 172.53, 'TRAM-28525716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28525716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28525716PDM001E.jpg', 'Panela Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 1,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62644365', 'cacarola-funda-tramontina-professional-em-aco-inox-com-fundo-triplo-sem-tampa-36-cm-22-3-l', 'Caçarola Funda Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 36 cm 22,3 L', 'Caçarola Funda Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 36 cm 22,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 1001.3, 1351.76, 'TRAM-62644365', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62644365', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62643400PDM001E.jpg', 'Caçarola Funda Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 36 cm 22,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27817120', 'wok-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-grafite-28-cm-3-3-l', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Grafite 28 cm 3,3 L', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Grafite 28 cm 3,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 214, 288.9, 'TRAM-27817120', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27817120', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27817120PDM001E.jpg', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Grafite 28 cm 3,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62649450', 'tampa-avulsa-tramontina-professional-em-aco-inox-45-cm', 'Tampa Avulsa Tramontina Professional em Aço Inox 45 cm', 'Tampa Avulsa Tramontina Professional em Aço Inox 45 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 258.4, 348.84, 'TRAM-62649450', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62649450', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62649400PDM001E.jpg', 'Tampa Avulsa Tramontina Professional em Aço Inox 45 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530724', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-24-cm-7-2-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 7,2 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 7,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530724PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 7,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20394728', 'wok-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-28-cm-3-3-l', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,3 L', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 182.4, 246.24, 'TRAM-20394728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20394728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20394728PDM001E.jpg', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62643365', 'cacarola-rasa-tramontina-professional-em-aco-inox-com-fundo-triplo-sem-tampa-36-cm-15-l', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 36 cm 15 L', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 36 cm 15 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 1001.3, 1351.76, 'TRAM-62643365', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62643365', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62643400PDM001E.jpg', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 36 cm 15 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28530624', 'caldeirao-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-24-cm-7-2-l', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 7,2 L', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 7,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 165.6, 223.56, 'TRAM-28530624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28530624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28530624PDM001E.jpg', 'Caldeirão Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 7,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62643455', 'cacarola-rasa-tramontina-professional-em-aco-inox-com-fundo-triplo-sem-tampa-45-cm-35-l', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 45 cm 35 L', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 45 cm 35 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 2660.95, 3592.28, 'TRAM-62643455', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62643455', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62643450PDM001E.jpg', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 45 cm 35 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62639360', 'tampa-avulsa-tramontina-professional-em-aco-inox-36-cm', 'Tampa Avulsa Tramontina Professional em Aço Inox 36 cm', 'Tampa Avulsa Tramontina Professional em Aço Inox 36 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 258.4, 348.84, 'TRAM-62639360', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62639360', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62649400PDM001E.jpg', 'Tampa Avulsa Tramontina Professional em Aço Inox 36 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62643405', 'cacarola-rasa-tramontina-professional-em-aco-inox-com-fundo-triplo-sem-tampa-40-cm-23-l', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 40 cm 23 L', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 40 cm 23 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 1862.95, 2514.98, 'TRAM-62643405', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62643405', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62643400PDM001E.jpg', 'Caçarola Rasa Tramontina Professional em Aço Inox com Fundo Triplo sem Tampa 40 cm 23 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20395828', 'wok-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-28-cm-3-6-l', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,6 L', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 92.06, 124.28, 'TRAM-20395828', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20395828', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20395828PDM001E.jpg', 'Wok Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27899375', 'jogo-de-frigideiras-tramontina-em-aluminio-com-revestimento-interno-de-antiaderente-starflon-max-e-externo-siliconado-vermelho-02-pecas', 'Jogo de Frigideiras Tramontina em Alumínio com Revestimento Interno de Antiaderente Starflon Max e Externo Siliconado Vermelho 02 Peças', 'Jogo de Frigideiras Tramontina em Alumínio com Revestimento Interno de Antiaderente Starflon Max e Externo Siliconado Vermelho 02 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 82.28, 111.08, 'TRAM-27899375', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27899375', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27899375PDM001E.jpg', 'Jogo de Frigideiras Tramontina em Alumínio com Revestimento Interno de Antiaderente Starflon Max e Externo Siliconado Vermelho 02 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27817499', 'frigideira-tramontina-sicilia-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-excellent-azul-28-cm-2-l', 'Frigideira Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul 28 cm 2 L', 'Frigideira Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul 28 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 86.1, 116.24, 'TRAM-27817499', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27817499', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27817499PDM001E.jpg', 'Frigideira Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Azul 28 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27803070', 'frigideira-tramontina-em-aluminio-com-revestimento-interno-com-antiaderente-starflon-excellent-vermelho-oslash-20cm', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Vermelho &Oslash; 20cm', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Vermelho &Oslash; 20cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 68.53, 92.52, 'TRAM-27803070', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27803070', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27803070PDM001E.jpg', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Vermelho &Oslash; 20cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27806017', 'frigideira-reta-tramontina-vermont-em-aluminio-com-revestimento-interno-cobre-antiaderente-starflon-max-com-cabo-baquelite-grafite-24-cm-2-l', 'Frigideira Reta Tramontina Vermont em Alumínio com Revestimento Interno Cobre Antiaderente Starflon Max com Cabo Baquelite Grafite 24 cm 2 L', 'Frigideira Reta Tramontina Vermont em Alumínio com Revestimento Interno Cobre Antiaderente Starflon Max com Cabo Baquelite Grafite 24 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 99.4, 134.19, 'TRAM-27806017', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27806017', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27806017PDM001E.jpg', 'Frigideira Reta Tramontina Vermont em Alumínio com Revestimento Interno Cobre Antiaderente Starflon Max com Cabo Baquelite Grafite 24 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20123820', 'omeleteira-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-20-cm', 'Omeleteira Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm', 'Omeleteira Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 62.23, 84.01, 'TRAM-20123820', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20123820', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20123820PDM001E.jpg', 'Omeleteira Tramontina Loreto em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27899281', 'jogo-de-frigideiras-tramontina-coimbra-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-de-poliester-02-pecas', 'Jogo de Frigideiras Tramontina Coimbra em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Poliéster 02 Peças', 'Jogo de Frigideiras Tramontina Coimbra em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Poliéster 02 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 87.5, 118.13, 'TRAM-27899281', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27899281', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27899281PDM001E.jpg', 'Jogo de Frigideiras Tramontina Coimbra em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Poliéster 02 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27803073', 'frigideira-tramontina-em-aluminio-com-revestimento-interno-com-antiaderente-starflon-excellent-cinza-oslash-20cm', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Cinza &Oslash; 20cm', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Cinza &Oslash; 20cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 68.53, 92.52, 'TRAM-27803073', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27803073', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27803073PDM001E.jpg', 'Frigideira Tramontina em Alumínio com Revestimento Interno com Antiaderente Starflon Excellent Cinza &Oslash; 20cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28599600', 'jogo-de-frigideiras-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-chumbo-2-pecas', 'Jogo de Frigideiras Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 2 Peças', 'Jogo de Frigideiras Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 2 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 193, 260.55, 'TRAM-28599600', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28599600', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28599600PDM001E.jpg', 'Jogo de Frigideiras Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 2 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297409', 'jogo-de-frigideiras-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-rosa-03-pecas', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Rosa 03 Peças', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Rosa 03 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 132.3, 178.61, 'TRAM-20297409', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297409', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297409PDM001E.jpg', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Rosa 03 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20193713', 'frigideira-para-ovo-tramontina-turim-em-aluminio-com-revestimento-antiaderente-starflon-max-e-cabo-baquelite-vermelho-13-cm-0-4-l', 'Frigideira para Ovo Tramontina Turim em Alumínio com Revestimento Antiaderente Starflon Max e Cabo Baquelite Vermelho 13 cm 0,4 L', 'Frigideira para Ovo Tramontina Turim em Alumínio com Revestimento Antiaderente Starflon Max e Cabo Baquelite Vermelho 13 cm 0,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 25.13, 33.93, 'TRAM-20193713', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20193713', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20193713PDM001E.jpg', 'Frigideira para Ovo Tramontina Turim em Alumínio com Revestimento Antiaderente Starflon Max e Cabo Baquelite Vermelho 13 cm 0,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20198459', 'jogo-de-frigideiras-tramontina-em-aluminio-com-revestimento-interno-em-starflon-excellent-e-externo-siliconado-laranja-2-pecas', 'Jogo de Frigideiras Tramontina em Alumínio com Revestimento Interno em Starflon Excellent e Externo Siliconado Laranja 2 Peças', 'Jogo de Frigideiras Tramontina em Alumínio com Revestimento Interno em Starflon Excellent e Externo Siliconado Laranja 2 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 228, 307.8, 'TRAM-20198459', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20198459', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20198459PDM001E.jpg', 'Jogo de Frigideiras Tramontina em Alumínio com Revestimento Interno em Starflon Excellent e Externo Siliconado Laranja 2 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62480200', 'frigideira-tramontina-duo-silicone-em-aco-inox-fundo-triplo-com-tampa-e-cabo-de-silicone-20-cm-2-1-l', 'Frigideira Tramontina Duo Silicone em Aço Inox Fundo Triplo com Tampa e Cabo de Silicone 20 cm 2,1 L', 'Frigideira Tramontina Duo Silicone em Aço Inox Fundo Triplo com Tampa e Cabo de Silicone 20 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 261.1, 352.49, 'TRAM-62480200', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62480200', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62480200PDM001E.jpg', 'Frigideira Tramontina Duo Silicone em Aço Inox Fundo Triplo com Tampa e Cabo de Silicone 20 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27812098', 'panquequeira-tramontina-em-aluminio-com-revest-interno-em-antiaderente-starflon-max-e-ext-siliconado-estampado-colorido-22-cm', 'Panquequeira Tramontina em Alumínio com Revest. Interno em Antiaderente Starflon Max e Ext. Siliconado Estampado Colorido 22 cm', 'Panquequeira Tramontina em Alumínio com Revest. Interno em Antiaderente Starflon Max e Ext. Siliconado Estampado Colorido 22 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 73.58, 99.33, 'TRAM-27812098', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27812098', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27812098PDM001E.jpg', 'Panquequeira Tramontina em Alumínio com Revest. Interno em Antiaderente Starflon Max e Ext. Siliconado Estampado Colorido 22 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20380028', 'frigideira-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-e-cabo-baquelite-28-cm-2-l-grafite', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Cabo Baquelite 28 cm 2 L Grafite', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Cabo Baquelite 28 cm 2 L Grafite. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 54.9, 74.12, 'TRAM-20380028', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20380028', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20380028PDM001E.jpg', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Cabo Baquelite 28 cm 2 L Grafite', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20380724', 'frigideira-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabo-baquelite-24-cm-1-4-l-vermelha', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 24 cm 1,4 L Vermelha', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 24 cm 1,4 L Vermelha. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 54.9, 74.12, 'TRAM-20380724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20380724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20380724PDM001E.jpg', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 24 cm 1,4 L Vermelha', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28721424', 'frigideira-funda-tramontina-tunis-em-aluminio-com-revestimento-interno-ceramico-e-externo-siliconado-rosa-trufado-24-cm-2-9-l', 'Frigideira Funda Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 24 cm 2,9 L', 'Frigideira Funda Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 24 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 202.4, 273.24, 'TRAM-28721424', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28721424', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28721424PDM001E.jpg', 'Frigideira Funda Tramontina Tunis em Alumínio com Revestimento Interno Cerâmico e Externo Siliconado Rosa Trufado 24 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20380026', 'frigideira-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-e-cabo-baquelite-26-cm-1-8-l-grafite', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Cabo Baquelite 26 cm 1,8 L Grafite', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Cabo Baquelite 26 cm 1,8 L Grafite. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 54.9, 74.12, 'TRAM-20380026', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20380026', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20380026PDM001E.jpg', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max e Cabo Baquelite 26 cm 1,8 L Grafite', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20380726', 'frigideira-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabo-baquelite-26-cm-1-8-l-vermelha', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 26 cm 1,8 L Vermelha', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 26 cm 1,8 L Vermelha. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 54.9, 74.12, 'TRAM-20380726', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20380726', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20380726PDM001E.jpg', 'Frigideira Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 26 cm 1,8 L Vermelha', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20764022', 'frigideira-pergaminho-tramontina-profissional-em-ferro-22-cm-1-l', 'Frigideira Pergaminho Tramontina Profissional em Ferro 22 cm 1 L', 'Frigideira Pergaminho Tramontina Profissional em Ferro 22 cm 1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 288.15, 389, 'TRAM-20764022', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20764022', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20764022PDM001E.jpg', 'Frigideira Pergaminho Tramontina Profissional em Ferro 22 cm 1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28506628', 'panquequeira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-chumbo-28-cm-1-8-l', 'Panquequeira Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 28 cm 1,8 L', 'Panquequeira Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 28 cm 1,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 125.1, 168.89, 'TRAM-28506628', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28506628', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28506628PDM001E.jpg', 'Panquequeira Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 28 cm 1,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28520626', 'frigideira-funda-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-26-cm-2-9-l', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 2,9 L', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 168.3, 227.21, 'TRAM-28520626', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28520626', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28520626PDM001E.jpg', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28508630', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-preto-com-espatula-30-cm-2-5-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 30 cm 2,5 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 30 cm 2,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 169.2, 228.42, 'TRAM-28508630', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28508630', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28508630PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 30 cm 2,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28509624', 'frigideira-funda-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-24-cm-2-2-l', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 2,2 L', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 2,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 133.2, 179.82, 'TRAM-28509624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28509624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28509624PDM001E.jpg', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 2,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260728', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-28-cm-2-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 28 cm 2 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 28 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260728PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 28 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28520726', 'frigideira-funda-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-26-cm-2-9-l', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 2,9 L', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 2,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 168.3, 227.21, 'TRAM-28520726', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28520726', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28520726PDM001E.jpg', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 2,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27812101', 'frigideira-tramontina-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-estampado-24-cm-1-2-l', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 89.01, 120.16, 'TRAM-27812101', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27812101', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27812101PDM001E.jpg', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28518626', 'fritadeira-multiuso-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-26-cm-3-6-l', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 3,6 L', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 3,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 221.4, 298.89, 'TRAM-28518626', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28518626', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28518626PDM001E.jpg', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 26 cm 3,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28508728', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-vermelho-com-espatula-28-cm-2-0-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Vermelho com Espátula 28 cm 2,0 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Vermelho com Espátula 28 cm 2,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 151.2, 204.12, 'TRAM-28508728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28508728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28508728PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Vermelho com Espátula 28 cm 2,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28504624', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-24-cm-2-0-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 24 cm 2,0 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 24 cm 2,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 113.4, 153.09, 'TRAM-28504624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28504624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28504624PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 24 cm 2,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28508618', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-preto-com-espatula-18-cm-0-6-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 18 cm 0,6 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 18 cm 0,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 90, 121.5, 'TRAM-28508618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28508618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28508618PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 18 cm 0,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297009', 'jogo-de-frigideiras-tramontina-linz-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-03-pecas', 'Jogo de Frigideiras Tramontina Linz com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 03 Peças', 'Jogo de Frigideiras Tramontina Linz com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 03 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 132.3, 178.61, 'TRAM-20297009', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297009', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297009PDM001E.jpg', 'Jogo de Frigideiras Tramontina Linz com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 03 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500722', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-22-cm-1-0-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 22 cm 1,0 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 22 cm 1,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500722PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 22 cm 1,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500626', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-26-cm-1-8-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 26 cm 1,8 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 26 cm 1,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500626', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500626', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500626PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 26 cm 1,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260622', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-22-cm-1-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 22 cm 1 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 22 cm 1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260622PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 22 cm 1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500726', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-26-cm-1-8-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 26 cm 1,8 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 26 cm 1,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500726', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500726', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500726PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 26 cm 1,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28504724', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-24-cm-2-0-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 24 cm 2,0 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 24 cm 2,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 113.4, 153.09, 'TRAM-28504724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28504724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28504724PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 24 cm 2,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28509724', 'frigideira-funda-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-24-cm-2-2-l', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 2,2 L', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 2,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 133.2, 179.82, 'TRAM-28509724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28509724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28509724PDM001E.jpg', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 2,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500624', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-24-cm-1-2-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 24 cm 1,2 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 24 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500624PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 24 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297509', 'jogo-de-frigideiras-tramontina-linz-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-03-pecas', 'Jogo de Frigideiras Tramontina Linz com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 03 Peças', 'Jogo de Frigideiras Tramontina Linz com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 03 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 132.3, 178.61, 'TRAM-20297509', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297509', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297509PDM001E.jpg', 'Jogo de Frigideiras Tramontina Linz com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 03 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260624', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-24-cm-1-4-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 1,4 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260624PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 24 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500730', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-30-cm-2-5-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 30 cm 2,5 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 30 cm 2,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500730', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500730', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500730PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 30 cm 2,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260722', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-22-cm-1-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 1 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260722PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28508620', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-preto-com-espatula-20-cm-0-8-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 20 cm 0,8 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 20 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 98.1, 132.44, 'TRAM-28508620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28508620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28508620PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 20 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260626', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-26-cm-1-8-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 26 cm 1,8 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 26 cm 1,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260626', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260626', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260626PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 26 cm 1,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27812100', 'frigideira-tramontina-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-estampado-24-cm-1-2-l-27812100', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 89.01, 120.16, 'TRAM-27812100', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27812100', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27812100PDM001E.jpg', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297909', 'jogo-de-frigideiras-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-preto-03-pecas', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Preto 03 Peças', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Preto 03 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 132.3, 178.61, 'TRAM-20297909', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297909', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297909PDM001E.jpg', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Preto 03 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500622', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-22-cm-1-0-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 22 cm 1,0 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 22 cm 1,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500622PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 22 cm 1,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260630', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-30-cm-2-5-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 30 cm 2,5 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 30 cm 2,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260630', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260630', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260630PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 30 cm 2,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260716', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-16-cm-0-4-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 16 cm 0,4 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 16 cm 0,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260716PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 16 cm 0,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20182013', 'frigideira-para-ovo-tramontina-turim-em-aluminio-com-revestimento-antiaderente-starflon-max-e-cabo-baquelite-chumbo-13-cm-0-4-l', 'Frigideira para Ovo Tramontina Turim em Alumínio com Revestimento Antiaderente Starflon Max e Cabo Baquelite Chumbo 13 cm 0,4 L', 'Frigideira para Ovo Tramontina Turim em Alumínio com Revestimento Antiaderente Starflon Max e Cabo Baquelite Chumbo 13 cm 0,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 40.41, 54.55, 'TRAM-20182013', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20182013', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20182013PDM001E.jpg', 'Frigideira para Ovo Tramontina Turim em Alumínio com Revestimento Antiaderente Starflon Max e Cabo Baquelite Chumbo 13 cm 0,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28505624', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-24-cm-2-0-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 2,0 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 2,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 162, 218.7, 'TRAM-28505624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28505624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28505624PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 2,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28504622', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-22-cm-1-7-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 22 cm 1,7 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 113.4, 153.09, 'TRAM-28504622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28504622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28504622PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28505722', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-22-cm-1-7-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 1,7 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 162, 218.7, 'TRAM-28505722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28505722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28505722PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27812099', 'frigideira-tramontina-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-estampado-24-cm-1-2-l-27812099', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 89.01, 120.16, 'TRAM-27812099', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27812099', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27812099PDM001E.jpg', 'Frigideira Tramontina em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Estampado 24 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20297309', 'jogo-de-frigideiras-tramontina-linz-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-mocaccino-03-pecas', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Mocaccino 03 Peças', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Mocaccino 03 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 132.3, 178.61, 'TRAM-20297309', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20297309', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20297309PDM001E.jpg', 'Jogo de Frigideiras Tramontina Linz em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Mocaccino 03 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260730', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-30-cm-2-5-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 30 cm 2,5 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 30 cm 2,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260730', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260730', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260730PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 30 cm 2,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28505622', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-22-cm-1-7-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 1,7 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 162, 218.7, 'TRAM-28505622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28505622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28505622PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500718', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-18-cm-0-6-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 18 cm 0,6 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 18 cm 0,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500718PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 18 cm 0,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260620', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-20-cm-0-8-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 0,8 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260620PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 20 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260616', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-16-cm-0-4-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 0,4 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 0,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260616PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 0,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260718', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-18-cm-0-7-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 0,7 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 0,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260718PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm 0,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28518624', 'fritadeira-multiuso-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-24-cm-2-8-l', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 2,8 L', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 2,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 221.4, 298.89, 'TRAM-28518624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28518624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28518624PDM001E.jpg', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 24 cm 2,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28504722', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-22-cm-1-7-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 22 cm 1,7 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 113.4, 153.09, 'TRAM-28504722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28504722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28504722PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28509728', 'frigideira-funda-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-28-cm-3-3-l', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,3 L', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 133.2, 179.82, 'TRAM-28509728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28509728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28509728PDM001E.jpg', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 28 cm 3,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28508628', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-preto-com-espatula-28-cm-2-0-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 28 cm 2,0 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 28 cm 2,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 151.2, 204.12, 'TRAM-28508628', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28508628', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28508628PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Preto com Espátula 28 cm 2,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500724', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-24-cm-1-2-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 24 cm 1,2 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 24 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500724PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 24 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28518726', 'fritadeira-multiuso-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-26-cm-3-6-l', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 3,6 L', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 3,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 221.4, 298.89, 'TRAM-28518726', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28518726', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28518726PDM001E.jpg', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 26 cm 3,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500618', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-18-cm-0-6-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 18 cm 0,6 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 18 cm 0,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500618PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 18 cm 0,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28506728', 'panquequeira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-vermelho-28-cm-1-8-l', 'Panquequeira Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 28 cm 1,8 L', 'Panquequeira Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 28 cm 1,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 125.1, 168.89, 'TRAM-28506728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28506728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28506728PDM001E.jpg', 'Panquequeira Tramontina Paris em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 28 cm 1,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260628', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-28-cm-2-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 28 cm 2 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 28 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260628', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260628', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260628PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 28 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260726', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-26-cm-1-8-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 26 cm 1,8 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 26 cm 1,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260726', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260726', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260726PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 26 cm 1,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500630', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-30-cm-2-5-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 30 cm 2,5 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 30 cm 2,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500630', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500630', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500630PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 30 cm 2,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28508724', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-siliconado-vermelho-com-espatula-24-cm-1-2-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Vermelho com Espátula 24 cm 1,2 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Vermelho com Espátula 24 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 122.4, 165.24, 'TRAM-28508724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28508724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28508724PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo Siliconado Vermelho com Espátula 24 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28509628', 'frigideira-funda-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-28-cm-3-3-l', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 28 cm 3,3 L', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 28 cm 3,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 133.2, 179.82, 'TRAM-28509628', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28509628', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28509628PDM001E.jpg', 'Frigideira Funda Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 28 cm 3,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260618', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-18-cm-0-7-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 0,7 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 0,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260618PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm 0,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28518724', 'fritadeira-multiuso-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-24-cm-2-8-l', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 2,8 L', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 2,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 221.4, 298.89, 'TRAM-28518724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28518724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28518724PDM001E.jpg', 'Fritadeira Multiuso Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 24 cm 2,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28504720', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-20-cm-1-4-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 20 cm 1,4 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 20 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 113.4, 153.09, 'TRAM-28504720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28504720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28504720PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 20 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28299496', 'jogo-de-frigideiras-tramontina-michigan-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-siena-siena-natural-2-pecas', 'Jogo de Frigideiras Tramontina Michigan em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Siena Siena Natural 2 Peças', 'Jogo de Frigideiras Tramontina Michigan em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Siena Siena Natural 2 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 99.9, 134.87, 'TRAM-28299496', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28299496', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28299496PDM001E.jpg', 'Jogo de Frigideiras Tramontina Michigan em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Siena Siena Natural 2 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260720', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-20-cm-0-8-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 20 cm 0,8 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 20 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260720PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 20 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28504620', 'frigideira-reta-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-20-cm-1-4-l', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 20 cm 1,4 L', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 20 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 113.4, 153.09, 'TRAM-28504620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28504620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28504620PDM001E.jpg', 'Frigideira Reta Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 20 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20260724', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-24-cm-1-4-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 24 cm 1,4 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 24 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 43.11, 58.2, 'TRAM-20260724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20260724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20260724PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 24 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20265622', 'frigideira-reta-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-cinza-22-cm-1-7-l', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Cinza 22 cm 1,7 L', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Cinza 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 83.61, 112.87, 'TRAM-20265622', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20265622', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20265622PDM001E.jpg', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Cinza 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20264822', 'panquequeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-22-cm-0-6-l', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 22 cm 0,6 L', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 22 cm 0,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 58.8, 79.38, 'TRAM-20264822', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20264822', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20264822PDM001E.jpg', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 22 cm 0,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20264722', 'panquequeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-22-cm-0-6-l', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 0,6 L', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 0,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 49.3, 66.56, 'TRAM-20264722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20264722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20264722PDM001E.jpg', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 22 cm 0,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500620', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-espatula-de-nylon-20-cm-0-8-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 20 cm 0,8 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 20 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500620PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Espátula de Nylon 20 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20264618', 'panquequeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-18-cm', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 49.3, 66.56, 'TRAM-20264618', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20264618', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20264618PDM001E.jpg', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 18 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20264718', 'panquequeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-18-cm', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 49.3, 66.56, 'TRAM-20264718', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20264718', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20264718PDM001E.jpg', 'Panquequeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 18 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20265722', 'frigideira-reta-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-vermelho-22-cm-1-7-l', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 22 cm 1,7 L', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 83.61, 112.87, 'TRAM-20265722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20265722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20265722PDM001E.jpg', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20255820', 'frigideira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-20-cm-0-8-l', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 0,8 L', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 54.05, 72.97, 'TRAM-20255820', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20255820', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20255820PDM001E.jpg', 'Frigideira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20265822', 'frigideira-reta-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-22-cm-1-7-l', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 22 cm 1,7 L', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 88.25, 119.14, 'TRAM-20265822', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20265822', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20265822PDM001E.jpg', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28500720', 'frigideira-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-espatula-de-nylon-20-cm-0-8-l', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 20 cm 0,8 L', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 20 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 77.31, 104.37, 'TRAM-28500720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28500720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28500720PDM001E.jpg', 'Frigideira Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Espátula de Nylon 20 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20267722', 'frigideira-reta-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-22-cm-1-7-l', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 1,7 L', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 118.75, 160.31, 'TRAM-20267722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20267722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20267722PDM001E.jpg', 'Frigideira Reta Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 22 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20892024', 'frigideira-tramontina-profissional-em-aluminio-com-revestimento-interno-antiaderente-starflon-premium-e-acabamento-externo-lixado-24-cm-1-3-l', 'Frigideira Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 24 cm 1,3 L', 'Frigideira Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 24 cm 1,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 176.7, 238.55, 'TRAM-20892024', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20892024', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20892024PDM001E.jpg', 'Frigideira Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 24 cm 1,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62518223', 'panela-de-pressao-tramontina-presto-em-aco-inox-fundo-triplo-com-5-dispositivos-de-seguranca-22-cm-6-l', 'Panela de Pressão Tramontina Presto em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 6 L', 'Panela de Pressão Tramontina Presto em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 664.05, 896.47, 'TRAM-62518223', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62518223', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62518220PDM001E.jpg', 'Panela de Pressão Tramontina Presto em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20564024', 'panela-de-pressao-tramontina-valencia-em-aluminio-polido-24-cm-10-l', 'Panela de Pressão Tramontina Valência em Alumínio Polido 24 cm 10 L', 'Panela de Pressão Tramontina Valência em Alumínio Polido 24 cm 10 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 1092, 1474.2, 'TRAM-20564024', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20564024', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20564024PDM001E.jpg', 'Panela de Pressão Tramontina Valência em Alumínio Polido 24 cm 10 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20565424', 'panela-de-pressao-tramontina-valencia-black-em-aluminio-com-revestimento-ceramico-preto-24-cm-7-l', 'Panela de Pressão Tramontina Valência Black em Alumínio com Revestimento Cerâmico Preto 24 cm 7 L', 'Panela de Pressão Tramontina Valência Black em Alumínio com Revestimento Cerâmico Preto 24 cm 7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 749, 1011.15, 'TRAM-20565424', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20565424', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20565424PDM001E.jpg', 'Panela de Pressão Tramontina Valência Black em Alumínio com Revestimento Cerâmico Preto 24 cm 7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20591320', 'panela-de-pressao-tramontina-vancouver-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-bege-20-cm-4-5-l', 'Panela de Pressão Tramontina Vancouver em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 20 cm 4,5 L', 'Panela de Pressão Tramontina Vancouver em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 394, 531.9, 'TRAM-20591320', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20591320', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20591320PDM001E.jpg', 'Panela de Pressão Tramontina Vancouver em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62511223', 'panela-de-pressao-tramontina-solar-em-aco-inox-fundo-triplo-com-5-dispositivos-de-seguranca-22-cm-3-l', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 3 L', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 799, 1078.65, 'TRAM-62511223', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62511223', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62511223PDM001E.jpg', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20560520', 'panela-de-pressao-tramontina-arizona-induction-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-titanio-20-cm-4-5-l', 'Panela de Pressão Tramontina Arizona Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Titânio 20 cm 4,5 L', 'Panela de Pressão Tramontina Arizona Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Titânio 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 329, 444.15, 'TRAM-20560520', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20560520', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20560520PDM001E.jpg', 'Panela de Pressão Tramontina Arizona Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Titânio 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20592724', 'panela-de-pressao-tramontina-vancouver-effect-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-24-cm-6-l', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 6 L', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 229, 309.15, 'TRAM-20592724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20592724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20592724PDM001E.jpg', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 24 cm 6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62676970', 'anel-de-vedacao-em-silicone-para-panela-de-pressao-tramontina-allegra-22-cm', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Allegra 22 cm', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Allegra 22 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 85.9, 115.97, 'TRAM-62676970', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62676970', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62676970PDM001E.jpg', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Allegra 22 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62516970', 'anel-de-vedacao-em-silicone-para-panela-de-pressao-tramontina-solar-22-cm', 'Anel de Vedação  em Silicone para Panela de Pressão Tramontina Solar 22 cm', 'Anel de Vedação  em Silicone para Panela de Pressão Tramontina Solar 22 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 47.9, 64.67, 'TRAM-62516970', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62516970', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62516970PDM001E.jpg', 'Anel de Vedação  em Silicone para Panela de Pressão Tramontina Solar 22 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20591720', 'panela-de-pressao-tramontina-vancouver-effect-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-20-cm-4-5-l', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 4,5 L', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 229, 309.15, 'TRAM-20591720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20591720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20591720PDM001E.jpg', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20593420', 'panela-de-pressao-tramontina-vancouver-effect-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-preto-20-cm-3-l', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Preto 20 cm 3 L', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Preto 20 cm 3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 229, 309.15, 'TRAM-20593420', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20593420', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20593420PDM001E.jpg', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Preto 20 cm 3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20593720', 'panela-de-pressao-tramontina-vancouver-effect-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-vermelho-20-cm-3-l', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 20 cm 3 L', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 20 cm 3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 229, 309.15, 'TRAM-20593720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20593720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20593720PDM001E.jpg', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 20 cm 3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62416990', 'anel-de-vedacao-em-silicone-para-panela-de-pressao-tramontina-brava-22-cm', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Brava 22 cm', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Brava 22 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 56.9, 76.82, 'TRAM-62416990', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62416990', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62416990PDM001E.jpg', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Brava 22 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62416921', 'valvula-de-trabalho-tramontina-para-panela-de-pressao-allegra-e-brava', 'Válvula de Trabalho Tramontina para Panela de Pressão Allegra e Brava', 'Válvula de Trabalho Tramontina para Panela de Pressão Allegra e Brava. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 51.9, 70.07, 'TRAM-62416921', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62416921', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62416921PDM001E.jpg', 'Válvula de Trabalho Tramontina para Panela de Pressão Allegra e Brava', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62513223', 'panela-de-pressao-tramontina-solar-em-aco-inox-fundo-triplo-com-5-dispositivos-de-seguranca-22-cm-4-5-l', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 4,5 L', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 799, 1078.65, 'TRAM-62513223', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62513223', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62513223PDM001E.jpg', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20591420', 'panela-de-pressao-tramontina-vancouver-effect-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-20-cm-4-5-l', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 20 cm 4,5 L', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 229, 309.15, 'TRAM-20591420', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20591420', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20591420PDM001E.jpg', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20560320', 'panela-de-pressao-tramontina-arizona-induction-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-mocaccino-20-cm-4-5-l', 'Panela de Pressão Tramontina Arizona Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Mocaccino 20 cm 4,5 L', 'Panela de Pressão Tramontina Arizona Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Mocaccino 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 329, 444.15, 'TRAM-20560320', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20560320', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20560320PDM001E.jpg', 'Panela de Pressão Tramontina Arizona Induction em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Mocaccino 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20579001', 'anel-de-vedacao-para-panela-de-pressao-tramontina-vancouver-e-valencia-em-silicone-20-cm', 'Anel de Vedação para Panela de Pressão Tramontina Vancouver e Valência em Silicone 20 cm', 'Anel de Vedação para Panela de Pressão Tramontina Vancouver e Valência em Silicone 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 53.9, 72.77, 'TRAM-20579001', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20579001', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20579001PDM001E.jpg', 'Anel de Vedação para Panela de Pressão Tramontina Vancouver e Valência em Silicone 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20579016', 'anel-de-vedacao-para-panela-de-pressao-tramontina-vancouver-valencia-e-valencia-black-em-silicone-24-cm', 'Anel de Vedação para Panela de Pressão Tramontina Vancouver, Valência e Valência Black em Silicone 24 cm', 'Anel de Vedação para Panela de Pressão Tramontina Vancouver, Valência e Valência Black em Silicone 24 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 53.9, 72.77, 'TRAM-20579016', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20579016', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20579016PDM001E.jpg', 'Anel de Vedação para Panela de Pressão Tramontina Vancouver, Valência e Valência Black em Silicone 24 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20558620', 'panela-de-pressao-tramontina-torino-em-aluminio-com-revestimento-interno-e-externo-ceramico-verde-petroleo-e-fundo-de-inducao-20-cm-4-5-l', 'Panela de Pressão Tramontina Torino em Alumínio com Revestimento Interno e Externo Cerâmico Verde Petróleo e Fundo de Indução 20 cm 4,5 L', 'Panela de Pressão Tramontina Torino em Alumínio com Revestimento Interno e Externo Cerâmico Verde Petróleo e Fundo de Indução 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-inducao', 529, 714.15, 'TRAM-20558620', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20558620', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20558620PDM001E.jpg', 'Panela de Pressão Tramontina Torino em Alumínio com Revestimento Interno e Externo Cerâmico Verde Petróleo e Fundo de Indução 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20592424', 'panela-de-pressao-tramontina-vancouver-effect-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-24-cm-6-l', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 24 cm 6 L', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 24 cm 6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 229, 309.15, 'TRAM-20592424', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20592424', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20592424PDM001E.jpg', 'Panela de Pressão Tramontina Vancouver Effect em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 24 cm 6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62416980', 'anel-de-vedacao-em-silicone-para-panela-de-pressao-tramontina-brava-20-cm', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Brava 20 cm', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Brava 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 52.9, 71.42, 'TRAM-62416980', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62416980', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62518970PDM001E.jpg', 'Anel de Vedação em Silicone para Panela de Pressão Tramontina Brava 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62416200', 'panela-de-pressao-tramontina-brava-em-aco-inox-com-fundo-triplo-20-cm-4-5-l', 'Panela de Pressão Tramontina Brava em Aço Inox com Fundo Triplo 20 cm 4,5 L', 'Panela de Pressão Tramontina Brava em Aço Inox com Fundo Triplo 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 549, 741.15, 'TRAM-62416200', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62416200', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62416200PDM002E.jpg', 'Panela de Pressão Tramontina Brava em Aço Inox com Fundo Triplo 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20558920', 'panela-de-pressao-tramontina-torino-em-aluminio-com-revestimento-interno-e-externo-ceramico-vermelho-framboesa-com-fundo-de-inducao-20-cm-4-5-l', 'Panela de Pressão Tramontina Torino em Alumínio com Revestimento Interno e Externo Cerâmico Vermelho Framboesa com Fundo de Indução 20 cm 4,5 L', 'Panela de Pressão Tramontina Torino em Alumínio com Revestimento Interno e Externo Cerâmico Vermelho Framboesa com Fundo de Indução 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-inducao', 529, 714.15, 'TRAM-20558920', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20558920', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20558920PDM001E.jpg', 'Panela de Pressão Tramontina Torino em Alumínio com Revestimento Interno e Externo Cerâmico Vermelho Framboesa com Fundo de Indução 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20576006', 'filtro-metalico-de-protecao-tramontina-torino', 'Filtro Metálico de Proteção Tramontina Torino', 'Filtro Metálico de Proteção Tramontina Torino. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 23.9, 32.27, 'TRAM-20576006', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20576006', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20576006PDM001E.jpg', 'Filtro Metálico de Proteção Tramontina Torino', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62516223', 'panela-de-pressao-tramontina-solar-em-aco-inox-fundo-triplo-com-5-dispositivos-de-seguranca-22-cm-6-l', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 6 L', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 799, 1078.65, 'TRAM-62516223', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62516223', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62516223PDM001E.jpg', 'Panela de Pressão Tramontina Solar em Aço Inox Fundo Triplo com 5 Dispositivos de Segurança 22 cm 6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62416220', 'panela-de-pressao-tramontina-brava-em-aco-inox-com-fundo-triplo-22-cm-6-l', 'Panela de Pressão Tramontina Brava em Aço Inox com Fundo Triplo 22 cm 6 L', 'Panela de Pressão Tramontina Brava em Aço Inox com Fundo Triplo 22 cm 6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 549, 741.15, 'TRAM-62416220', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62416220', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62416220PDM001E.jpg', 'Panela de Pressão Tramontina Brava em Aço Inox com Fundo Triplo 22 cm 6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20577011', 'anel-de-vedacao-para-panela-de-pressao-tramontina-em-silicone-20-cm', 'Anel de Vedação para Panela de Pressão Tramontina em Silicone 20 cm', 'Anel de Vedação para Panela de Pressão Tramontina em Silicone 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 48.9, 66.02, 'TRAM-20577011', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20577011', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20577011PDM001E.jpg', 'Anel de Vedação para Panela de Pressão Tramontina em Silicone 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20559420', 'panela-de-pressao-tramontina-arizona-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-preto-20-cm-4-5-l', 'Panela de Pressão Tramontina Arizona em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 20 cm 4,5 L', 'Panela de Pressão Tramontina Arizona em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 20 cm 4,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-de-pressao', 231.47, 312.48, 'TRAM-20559420', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20559420', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20559420PDM001E.jpg', 'Panela de Pressão Tramontina Arizona em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Preto 20 cm 4,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20387720', 'pipoqueira-tramontina-loreto-em-aluminio-com-revestimento-em-antiaderente-starflon-max-vermelho-20-cm-3-5-l', 'Pipoqueira Tramontina Loreto em Alumínio com Revestimento em Antiaderente Starflon Max Vermelho 20 cm 3,5 L', 'Pipoqueira Tramontina Loreto em Alumínio com Revestimento em Antiaderente Starflon Max Vermelho 20 cm 3,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 161.6, 218.16, 'TRAM-20387720', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20387720', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20387720PDM001E.jpg', 'Pipoqueira Tramontina Loreto em Alumínio com Revestimento em Antiaderente Starflon Max Vermelho 20 cm 3,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20387020', 'pipoqueira-tramontina-loreto-em-aluminio-com-revestimento-em-antiaderente-starflon-max-grafite-20-cm-3-5-l', 'Pipoqueira Tramontina Loreto em Alumínio com Revestimento em Antiaderente Starflon Max Grafite 20 cm 3,5 L', 'Pipoqueira Tramontina Loreto em Alumínio com Revestimento em Antiaderente Starflon Max Grafite 20 cm 3,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 161.6, 218.16, 'TRAM-20387020', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20387020', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20387020PDM001E.jpg', 'Pipoqueira Tramontina Loreto em Alumínio com Revestimento em Antiaderente Starflon Max Grafite 20 cm 3,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20549001', 'haste-para-pipoqueira-tramontina-com-tampa-de-aluminio-em-zitel-20-cm', 'Haste para Pipoqueira Tramontina com Tampa de Alumínio em Zitel 20 cm', 'Haste para Pipoqueira Tramontina com Tampa de Alumínio em Zitel 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 39.9, 53.87, 'TRAM-20549001', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20549001', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20549001PDM001E.jpg', 'Haste para Pipoqueira Tramontina com Tampa de Alumínio em Zitel 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20549000', 'haste-para-pipoqueira-tramontina-com-tampa-de-vidro-22-cm', 'Haste para Pipoqueira Tramontina com Tampa de Vidro 22 cm', 'Haste para Pipoqueira Tramontina com Tampa de Vidro 22 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 39.9, 53.87, 'TRAM-20549000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20549000', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20549001PDM001E.jpg', 'Haste para Pipoqueira Tramontina com Tampa de Vidro 22 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62658220', 'pipoqueira-tramontina-allegra-em-aco-inox-com-fundo-triplo-e-tampa-de-vidro-com-borda-de-silicone-22-cm-5-6-l', 'Pipoqueira Tramontina Allegra em Aço Inox com Fundo Triplo e Tampa de Vidro com Borda de Silicone 22 cm 5,6 L', 'Pipoqueira Tramontina Allegra em Aço Inox com Fundo Triplo e Tampa de Vidro com Borda de Silicone 22 cm 5,6 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 387, 522.45, 'TRAM-62658220', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62658220', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62658220PDM001E.jpg', 'Pipoqueira Tramontina Allegra em Aço Inox com Fundo Triplo e Tampa de Vidro com Borda de Silicone 22 cm 5,6 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28711022', 'pipoqueira-tramontina-monaco-induction-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-premium-preto-22-cm-5-4-l', 'Pipoqueira Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 22 cm 5,4 L', 'Pipoqueira Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 22 cm 5,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 369, 498.15, 'TRAM-28711022', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28711022', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28711022PDM001E.jpg', 'Pipoqueira Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 22 cm 5,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27815875', 'pipoqueira-tramontina-ravena-em-aluminio-com-revestimento-em-antiaderente-starflon-max-20-cm-3-5-l', 'Pipoqueira Tramontina Ravena em Alumínio com Revestimento em Antiaderente Starflon Max 20 cm 3,5 L', 'Pipoqueira Tramontina Ravena em Alumínio com Revestimento em Antiaderente Starflon Max 20 cm 3,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 266, 359.1, 'TRAM-27815875', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27815875', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27815875PDM001E.jpg', 'Pipoqueira Tramontina Ravena em Alumínio com Revestimento em Antiaderente Starflon Max 20 cm 3,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20387000', 'haste-para-pipoqueira-tramontina-20-cm', 'Haste para Pipoqueira Tramontina 20 cm', 'Haste para Pipoqueira Tramontina 20 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 45.9, 61.97, 'TRAM-20387000', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20387000', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20387000PDM001E.jpg', 'Haste para Pipoqueira Tramontina 20 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-61483013', 'chaleira-tramontina-com-apito-em-aco-inox-cabo-preto-2-1-l', 'Chaleira Tramontina com Apito em Aço Inox Cabo Preto 2,1  L', 'Chaleira Tramontina com Apito em Aço Inox Cabo Preto 2,1  L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 409, 552.15, 'TRAM-61483013', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-61483013', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/61483013PDM001E.jpg', 'Chaleira Tramontina com Apito em Aço Inox Cabo Preto 2,1  L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-61485160', 'chaleira-tramontina-em-aco-inox-com-fundo-triplo-cabo-preto-1-5-l', 'Chaleira Tramontina em Aço Inox com Fundo Triplo Cabo Preto 1,5 L', 'Chaleira Tramontina em Aço Inox com Fundo Triplo Cabo Preto 1,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 261, 352.35, 'TRAM-61485160', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-61485160', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/61485160PDM001E.jpg', 'Chaleira Tramontina em Aço Inox com Fundo Triplo Cabo Preto 1,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28596123', 'chaleira-tramontina-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-azul-marinho-2-3-l', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Azul Marinho 2,3 L', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Azul Marinho 2,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 271, 365.85, 'TRAM-28596123', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28596123', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28596123PDM001E.jpg', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Azul Marinho 2,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-61483023', 'chaleira-tramontina-com-apito-em-aco-inox-cabo-preto-3-l', 'Chaleira Tramontina com Apito em Aço Inox Cabo Preto 3 L', 'Chaleira Tramontina com Apito em Aço Inox Cabo Preto 3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 421, 568.35, 'TRAM-61483023', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-61483023', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/61483023PDM001E.jpg', 'Chaleira Tramontina com Apito em Aço Inox Cabo Preto 3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-61482183', 'chaleira-tramontina-em-aco-inox-cabo-preto-14-5-cm-2-25-l', 'Chaleira Tramontina em Aço Inox Cabo Preto 14,5 cm  2,25 L', 'Chaleira Tramontina em Aço Inox Cabo Preto 14,5 cm  2,25 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 472, 637.2, 'TRAM-61482183', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-61482183', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/61482183PDM001E.jpg', 'Chaleira Tramontina em Aço Inox Cabo Preto 14,5 cm  2,25 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28534619', 'chaleira-tramontina-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-chumbo-1-9-l', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 1,9 L', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 262, 353.7, 'TRAM-28534619', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28534619', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28534619PDM001E.jpg', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Chumbo 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28596323', 'chaleira-tramontina-em-aluminio-com-revestimento-interno-e-externo-starflon-max-off-white-2-3-l', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Starflon Max Off-white 2,3 L', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Starflon Max Off-white 2,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 271, 365.85, 'TRAM-28596323', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28596323', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28596323PDM001E.jpg', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Starflon Max Off-white 2,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28534719', 'chaleira-tramontina-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-vermelho-1-9-l', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 1,9 L', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 262, 353.7, 'TRAM-28534719', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28534719', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28534719PDM001E.jpg', 'Chaleira Tramontina em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max Vermelho 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20550719', 'chaleira-tramontina-paris-em-aluminio-com-revestimento-antiaderente-starflon-max-vermelho-1-9-l', 'Chaleira Tramontina Paris em Alumínio com Revestimento Antiaderente Starflon Max Vermelho 1,9 L', 'Chaleira Tramontina Paris em Alumínio com Revestimento Antiaderente Starflon Max Vermelho 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 169, 228.15, 'TRAM-20550719', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20550719', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20550719PDM001E.jpg', 'Chaleira Tramontina Paris em Alumínio com Revestimento Antiaderente Starflon Max Vermelho 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20550619', 'chaleira-tramontina-paris-em-aluminio-com-revestimento-antiaderente-starflon-max-grafite-1-9-l', 'Chaleira Tramontina Paris em Alumínio com Revestimento Antiaderente Starflon Max Grafite 1,9 L', 'Chaleira Tramontina Paris em Alumínio com Revestimento Antiaderente Starflon Max Grafite 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-chaleiras', 169, 228.15, 'TRAM-20550619', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20550619', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20550619PDM001E.jpg', 'Chaleira Tramontina Paris em Alumínio com Revestimento Antiaderente Starflon Max Grafite 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531610', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-10-cm-0-8-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 10 cm 0,8 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 10 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531610', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531610', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531610PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 10 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531616', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-16-cm-2-7-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 2,7 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 2,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531616PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 16 cm 2,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28532614', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-14-cm-1-9-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 14 cm 1,9 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 125.1, 168.89, 'TRAM-28532614', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28532614', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28532614PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28532716', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-16-cm-2-7-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 2,7 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 2,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 125.1, 168.89, 'TRAM-28532716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28532716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28532716PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 16 cm 2,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28532714', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-com-tampa-de-vidro-14-cm-1-9-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 14 cm 1,9 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 125.1, 168.89, 'TRAM-28532714', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28532714', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28532714PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho com Tampa de Vidro 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62492140', 'fervedor-tramontina-solar-silicone-em-aco-inox-fundo-triplo-com-cabo-de-silicone-14-cm-2-0-l', 'Fervedor Tramontina Solar Silicone em Aço Inox Fundo Triplo com Cabo de Silicone 14 cm 2,0 L', 'Fervedor Tramontina Solar Silicone em Aço Inox Fundo Triplo com Cabo de Silicone 14 cm 2,0 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 206.1, 278.24, 'TRAM-62492140', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62492140', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62492140PDM001E.jpg', 'Fervedor Tramontina Solar Silicone em Aço Inox Fundo Triplo com Cabo de Silicone 14 cm 2,0 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28532616', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-com-tampa-de-vidro-16-cm-2-7-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 2,7 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 2,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 125.1, 168.89, 'TRAM-28532616', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28532616', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28532616PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo com Tampa de Vidro 16 cm 2,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531716', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-16-cm-2-7-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm 2,7 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm 2,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531716', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531716', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531716PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 16 cm 2,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20329712', 'fervedor-tramontina-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-12-cm-1-1-l', 'Fervedor Tramontina em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,1 L', 'Fervedor Tramontina em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 69.21, 93.43, 'TRAM-20329712', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20329712', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20329712PDM001E.jpg', 'Fervedor Tramontina em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531714', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-14-cm-1-9-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,9 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531714', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531714', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531714PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531614', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-14-cm-1-9-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,9 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531614', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531614', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531614PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531612', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-12-cm-1-2-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 12 cm 1,2 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 12 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531612', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531612', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531612PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 12 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531712', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-12-cm-1-2-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,2 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531712', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531712', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531712PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20332612', 'fervedor-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-12-cm-1-1-l', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 12 cm 1,1 L', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 12 cm 1,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 69.9, 94.37, 'TRAM-20332612', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20332612', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20332612PDM001E.jpg', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 12 cm 1,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62512145', 'fervedor-tramontina-solar-em-aco-inox-fundo-triplo-com-tampa-14-cm-2-l', 'Fervedor Tramontina Solar em Aço Inox Fundo Triplo com Tampa 14 cm 2 L', 'Fervedor Tramontina Solar em Aço Inox Fundo Triplo com Tampa 14 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 372, 502.2, 'TRAM-62512145', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62512145', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62512145PDM001E.jpg', 'Fervedor Tramontina Solar em Aço Inox Fundo Triplo com Tampa 14 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20332614', 'fervedor-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-14-cm-1-7-l', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,7 L', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 69.9, 94.37, 'TRAM-20332614', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20332614', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20332614PDM001E.jpg', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20332712', 'fervedor-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-12-cm-1-1-l', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,1 L', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 69.9, 94.37, 'TRAM-20332712', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20332712', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20332712PDM001E.jpg', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 12 cm 1,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20384714', 'fervedor-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabo-de-baquelite-14-cm-1-7-l-vermelho', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo de Baquelite 14 cm 1,7 L Vermelho', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo de Baquelite 14 cm 1,7 L Vermelho. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 94.9, 128.12, 'TRAM-20384714', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20384714', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20384714PDM001E.jpg', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo de Baquelite 14 cm 1,7 L Vermelho', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20332714', 'fervedor-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-14-cm-1-7-l', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,7 L', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 69.9, 94.37, 'TRAM-20332714', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20332714', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20332714PDM001E.jpg', 'Fervedor Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28575414', 'fervedor-tramontina-milazzo-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-amendoa-14-cm', 'Fervedor Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 14 cm', 'Fervedor Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 14 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 117, 157.95, 'TRAM-28575414', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28575414', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28575414PDM001E.jpg', 'Fervedor Tramontina Milazzo em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Amêndoa 14 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28531710', 'fervedor-tramontina-paris-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-10-cm-0-8-l', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 cm 0,8 L', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 75.9, 102.47, 'TRAM-28531710', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28531710', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28531710PDM001E.jpg', 'Fervedor Tramontina Paris em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 10 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62132146', 'fervedor-tramontina-solar-ceramic-em-aco-inox-com-fundo-triplo-interior-ceramico-grafite-cabo-de-silicone-14-cm-2-l', 'Fervedor Tramontina Solar Ceramic em Aço Inox com Fundo Triplo Interior Cerâmico Grafite Cabo de Silicone 14 cm 2 L', 'Fervedor Tramontina Solar Ceramic em Aço Inox com Fundo Triplo Interior Cerâmico Grafite Cabo de Silicone 14 cm 2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 424, 572.4, 'TRAM-62132146', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62132146', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62132146PDM001E.jpg', 'Fervedor Tramontina Solar Ceramic em Aço Inox com Fundo Triplo Interior Cerâmico Grafite Cabo de Silicone 14 cm 2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20405614', 'fervedor-tramontina-sicilia-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-excellent-avela-14-cm-1-9-l', 'Fervedor Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Avelã 14 cm 1,9 L', 'Fervedor Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Avelã 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 146, 197.1, 'TRAM-20405614', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20405614', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20405614PDM001E.jpg', 'Fervedor Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Avelã 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20405714', 'fervedor-tramontina-sicilia-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-excellent-vermelho-14-cm-1-9-l', 'Fervedor Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Vermelho 14 cm 1,9 L', 'Fervedor Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Vermelho 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 146, 197.1, 'TRAM-20405714', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20405714', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20405714PDM001E.jpg', 'Fervedor Tramontina Sicília em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Excellent Vermelho 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20384014', 'fervedor-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabo-baquelite-14-cm-1-7-l-grafite', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 14 cm 1,7 L Grafite', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 14 cm 1,7 L Grafite. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 94.9, 128.12, 'TRAM-20384014', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20384014', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20384014PDM001E.jpg', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 14 cm 1,7 L Grafite', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62932140', 'fervedor-tramontina-allegra-em-aco-inox-com-fundo-triplo-e-cabo-de-baquelite-14-cm-2-l', 'Fervedor Tramontina Allegra em Aço inox com Fundo Triplo e Cabo de Baquelite 14 cm  2 L', 'Fervedor Tramontina Allegra em Aço inox com Fundo Triplo e Cabo de Baquelite 14 cm  2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 299, 403.65, 'TRAM-62932140', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62932140', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62932140PDM001E.jpg', 'Fervedor Tramontina Allegra em Aço inox com Fundo Triplo e Cabo de Baquelite 14 cm  2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62664120', 'fervedor-tramontina-allegra-em-aco-inox-12-cm-1-4-l', 'Fervedor Tramontina Allegra em Aço Inox 12 cm 1,4 L', 'Fervedor Tramontina Allegra em Aço Inox 12 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 166, 224.1, 'TRAM-62664120', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62664120', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62664120PDM001E.jpg', 'Fervedor Tramontina Allegra em Aço Inox 12 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62934120', 'fervedor-tramontina-allegra-em-aco-inox-e-cabo-de-baquelite-12-cm-1-4-l', 'Fervedor Tramontina Allegra em Aço inox e Cabo de Baquelite 12 cm 1,4 L', 'Fervedor Tramontina Allegra em Aço inox e Cabo de Baquelite 12 cm 1,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 169, 228.15, 'TRAM-62934120', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62934120', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62934120PDM001E.jpg', 'Fervedor Tramontina Allegra em Aço inox e Cabo de Baquelite 12 cm 1,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20384712', 'fervedor-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabo-de-baquelite-12-cm-1-1-l-vermelho', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo de Baquelite 12 cm 1,1 L Vermelho', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo de Baquelite 12 cm 1,1 L Vermelho. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 94.9, 128.12, 'TRAM-20384712', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20384712', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20384712PDM001E.jpg', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo de Baquelite 12 cm 1,1 L Vermelho', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20384012', 'fervedor-tramontina-loreto-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-max-com-cabo-baquelite-12-cm-1-1-l-grafite', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 12 cm 1,1 L Grafite', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 12 cm 1,1 L Grafite. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-cacarolas-e-avulsas', 94.9, 128.12, 'TRAM-20384012', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20384012', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20384012PDM001E.jpg', 'Fervedor Tramontina Loreto em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Max com Cabo Baquelite 12 cm 1,1 L Grafite', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62159227', 'bistequeira-tramontina-grano-em-aco-inox-comrevestimento-interno-em-antiaderente-1-2-l', 'Bistequeira Tramontina Grano em Aço Inox comRevestimento Interno em Antiaderente 1,2 L', 'Bistequeira Tramontina Grano em Aço Inox comRevestimento Interno em Antiaderente 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 276.5, 373.28, 'TRAM-62159227', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62159227', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62159227PDM001E.jpg', 'Bistequeira Tramontina Grano em Aço Inox comRevestimento Interno em Antiaderente 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62159287', 'bistequeira-tramontina-grano-em-aco-inox-com-revestimento-interno-antiaderente-1-9-l', 'Bistequeira Tramontina Grano em Aço Inox com Revestimento Interno Antiaderente 1,9 L', 'Bistequeira Tramontina Grano em Aço Inox com Revestimento Interno Antiaderente 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 276.5, 373.28, 'TRAM-62159287', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62159287', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62839287PDM001E.jpg', 'Bistequeira Tramontina Grano em Aço Inox com Revestimento Interno Antiaderente 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20396024', 'bistequeira-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-e-exterior-siliconado-grafite-26-cm', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Exterior Siliconado Grafite 26 cm', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Exterior Siliconado Grafite 26 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 139, 187.65, 'TRAM-20396024', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20396024', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20396024PDM001E.jpg', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Exterior Siliconado Grafite 26 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28515628', 'bistequeira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-de-silicone-preto-28-cm-2-3-l', 'Bistequeira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Preto 28 cm 2,3 L', 'Bistequeira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Preto 28 cm 2,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 204, 275.4, 'TRAM-28515628', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28515628', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28515628PDM001E.jpg', 'Bistequeira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Preto 28 cm 2,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20392024', 'bistequeira-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-e-cabo-baquelite-26-cm-1-0-l-grafite', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 26 cm 1,0 L Grafite', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 26 cm 1,0 L Grafite. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 139, 187.65, 'TRAM-20392024', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20392024', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20392024PDM001E.jpg', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 26 cm 1,0 L Grafite', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20392724', 'bistequeira-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-com-cabo-baquelite-26-cm-1-0-l-vermelha', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 26 cm 1,0 L Vermelha', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 26 cm 1,0 L Vermelha. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 139, 187.65, 'TRAM-20392724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20392724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20392724PDM001E.jpg', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 26 cm 1,0 L Vermelha', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20391724', 'bistequeira-lisa-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-com-cabo-baquelite-26-cm-1-l-vermelha', 'Bistequeira Lisa Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 26 cm 1 L Vermelha', 'Bistequeira Lisa Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 26 cm 1 L Vermelha. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 139, 187.65, 'TRAM-20391724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20391724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20391724PDM001E.jpg', 'Bistequeira Lisa Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 26 cm 1 L Vermelha', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20396724', 'bistequeira-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-e-exterior-siliconado-vermelho-26-cm', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Exterior Siliconado Vermelho 26 cm', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Exterior Siliconado Vermelho 26 cm. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 139, 187.65, 'TRAM-20396724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20396724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20396724PDM001E.jpg', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Exterior Siliconado Vermelho 26 cm', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28702024', 'bistequeira-tramontina-monaco-induction-em-aluminio-com-revestimento-interno-e-externo-antiaderente-starflon-premium-preto-24-cm-1-5-l', 'Bistequeira Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 24 cm 1,5 L', 'Bistequeira Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 24 cm 1,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 269, 363.15, 'TRAM-28702024', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28702024', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20855024PDM001E.jpg', 'Bistequeira Tramontina Mônaco Induction em Alumínio com Revestimento Interno e Externo Antiaderente Starflon Premium Preto 24 cm 1,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20391024', 'bistequeira-lisa-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-e-cabo-baquelite-26-cm-1-l-grafite', 'Bistequeira Lisa Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 26 cm 1 L Grafite', 'Bistequeira Lisa Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 26 cm 1 L Grafite. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 139, 187.65, 'TRAM-20391024', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20391024', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20391024PDM001E.jpg', 'Bistequeira Lisa Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 26 cm 1 L Grafite', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20390722', 'bistequeira-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-com-cabo-baquelite-22-cm-0-6-l-vermelha', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 22 cm 0,6 L Vermelha', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 22 cm 0,6 L Vermelha. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 51.92, 70.09, 'TRAM-20390722', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20390722', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20390722PDM001E.jpg', 'Bistequeira Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Cabo Baquelite 22 cm 0,6 L Vermelha', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62159220', 'bistequeira-tramontina-grano-em-aco-inox-1-2-l', 'Bistequeira Tramontina Grano em Aço Inox 1,2 L', 'Bistequeira Tramontina Grano em Aço Inox 1,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 377, 508.95, 'TRAM-62159220', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62159220', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62839283PDM001E.jpg', 'Bistequeira Tramontina Grano em Aço Inox 1,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20274624', 'bistequeira-tramontina-turim-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-e-cabo-baquelite-24-cm-1-l-grafite', 'Bistequeira Tramontina Turim em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 24 cm 1 L Grafite', 'Bistequeira Tramontina Turim em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 24 cm 1 L Grafite. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 127, 171.45, 'TRAM-20274624', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20274624', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20274624PDM001E.jpg', 'Bistequeira Tramontina Turim em Alumínio com Revestimento Interno Antiaderente Starflon Max e Cabo Baquelite 24 cm 1 L Grafite', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28515728', 'bistequeira-tramontina-paris-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-de-silicone-vermelho-28-cm-2-3-l', 'Bistequeira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Vermelho 28 cm 2,3 L', 'Bistequeira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Vermelho 28 cm 2,3 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 204, 275.4, 'TRAM-28515728', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28515728', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28515728PDM001E.jpg', 'Bistequeira Tramontina Paris em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Vermelho 28 cm 2,3 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20274724', 'bistequeira-tramontina-turim-em-aluminio-com-revestimento-interno-em-antiaderente-starflon-max-e-externo-de-silicone-vermelho-24-cm-1-l', 'Bistequeira Tramontina Turim em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Vermelho 24 cm 1 L', 'Bistequeira Tramontina Turim em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Vermelho 24 cm 1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 127, 171.45, 'TRAM-20274724', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20274724', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20274724PDM001E.jpg', 'Bistequeira Tramontina Turim em Alumínio com Revestimento Interno em Antiaderente Starflon Max e Externo de Silicone Vermelho 24 cm 1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62159280', 'bistequeira-tramontina-grano-em-aco-inox-1-9-l', 'Bistequeira Tramontina Grano em Aço Inox 1,9 L', 'Bistequeira Tramontina Grano em Aço Inox 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 377, 508.95, 'TRAM-62159280', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62159280', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62839283PDM001E.jpg', 'Bistequeira Tramontina Grano em Aço Inox 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20896060', 'paellera-tramontina-profissional-em-aluminio-com-revestimento-interno-antiaderente-starflon-premium-e-acabamento-externo-lixado-60-cm-18-2-l', 'Paellera Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 60 cm 18,2 L', 'Paellera Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 60 cm 18,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 647, 873.45, 'TRAM-20896060', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20896060', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20896060PDM001E.jpg', 'Paellera Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 60 cm 18,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20765038', 'paellera-tramontina-profissional-em-ferro-38-cm-5-1-l', 'Paellera Tramontina Profissional em Ferro 38 cm 5,1 L', 'Paellera Tramontina Profissional em Ferro 38 cm 5,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 508, 685.8, 'TRAM-20765038', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20765038', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20765038PDM001E.jpg', 'Paellera Tramontina Profissional em Ferro 38 cm 5,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20125030', 'paellera-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-com-alcas-metalicas-grafite-30-cm-2-5-l', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 30 cm 2,5 L', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 30 cm 2,5 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 191, 257.85, 'TRAM-20125030', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20125030', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20125030PDM001E.jpg', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 30 cm 2,5 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20125034', 'paellera-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-com-alcas-metalicas-grafite-34-cm-3-7-l', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 34 cm 3,7 L', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 34 cm 3,7 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 191, 257.85, 'TRAM-20125034', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20125034', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20125034PDM001E.jpg', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 34 cm 3,7 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20125038', 'paellera-tramontina-loreto-em-aluminio-com-revestimento-interno-antiaderente-starflon-max-com-alcas-metalicas-grafite-38-cm-5-4-l', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 38 cm 5,4 L', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 38 cm 5,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 191, 257.85, 'TRAM-20125038', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20125038', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20125038PDM001E.jpg', 'Paellera Tramontina Loreto em Alumínio com Revestimento Interno Antiaderente Starflon Max com Alças Metálicas Grafite 38 cm 5,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20896045', 'paellera-tramontina-profissional-em-aluminio-com-revestimento-interno-antiaderente-starflon-premium-e-acabamento-externo-lixado-45-cm-9-2-l', 'Paellera Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 45 cm 9,2 L', 'Paellera Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 45 cm 9,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 647, 873.45, 'TRAM-20896045', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20896045', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20896045PDM001E.jpg', 'Paellera Tramontina Profissional em Alumínio com Revestimento Interno Antiaderente Starflon Premium e Acabamento Externo Lixado 45 cm 9,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20268814', 'cuscuzeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelho-14-cm-1-9-l', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,9 L', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 120.4, 162.54, 'TRAM-20268814', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20268814', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20268814PDM001E.jpg', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelho 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-65650050', 'cuscuzeira-tramontina-allegra-em-aco-inox-com-fundo-triplo-2-pecas', 'Cuscuzeira Tramontina Allegra em Aço Inox com Fundo Triplo 2 Peças', 'Cuscuzeira Tramontina Allegra em Aço Inox com Fundo Triplo 2 Peças. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 342.9, 462.92, 'TRAM-65650050', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-65650050', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/65650050PDM001E.jpg', 'Cuscuzeira Tramontina Allegra em Aço Inox com Fundo Triplo 2 Peças', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62519140', 'cuscuzeira-tramontina-solar-em-aco-inox-com-alcas-e-tampa-14-cm-2-2-l', 'Cuscuzeira Tramontina Solar em Aço Inox com Alças e Tampa 14 cm 2,2 L', 'Cuscuzeira Tramontina Solar em Aço Inox com Alças e Tampa 14 cm 2,2 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 372.6, 503.01, 'TRAM-62519140', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62519140', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62519140PDM001E.jpg', 'Cuscuzeira Tramontina Solar em Aço Inox com Alças e Tampa 14 cm 2,2 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-27805358', 'cuscuzeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-bege-10-cm-0-8-l', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 10 cm 0,8 L', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 10 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 125.1, 168.89, 'TRAM-27805358', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-27805358', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/27805358PDM001E.jpg', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Bege 10 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20273610', 'cuscuzeira-tramontina-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-10-cm-0-8-l', 'Cuscuzeira Tramontina em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 10 cm 0,8 L', 'Cuscuzeira Tramontina em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 10 cm 0,8 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 125.1, 168.89, 'TRAM-20273610', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20273610', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20273610PDM001E.jpg', 'Cuscuzeira Tramontina em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 10 cm 0,8 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20268614', 'cuscuzeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-chumbo-14-cm-1-9-l', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,9 L', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 200, 270, 'TRAM-20268614', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20268614', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20268614PDM001E.jpg', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Chumbo 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-62419140', 'cuscuzeira-tramontina-brava-em-aco-inox-com-alcas-e-tampa-14-cm-2-1-l', 'Cuscuzeira Tramontina Brava em Aço Inox com Alças e Tampa 14 cm 2,1 L', 'Cuscuzeira Tramontina Brava em Aço Inox com Alças e Tampa 14 cm 2,1 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 320.4, 432.54, 'TRAM-62419140', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-62419140', 'https://assets.tramontina.com.br/upload/tramon/imagens/FAR/62419140PDM001E.jpg', 'Cuscuzeira Tramontina Brava em Aço Inox com Alças e Tampa 14 cm 2,1 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-20268714', 'cuscuzeira-tramontina-turim-em-aluminio-com-revestimento-interno-e-externo-em-antiaderente-starflon-max-vermelha-14-cm-1-9-l', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 14 cm 1,9 L', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 14 cm 1,9 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-panelas-especiais', 200, 270, 'TRAM-20268714', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-20268714', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/20268714PDM001E.jpg', 'Cuscuzeira Tramontina Turim em Alumínio com Revestimento Interno e Externo em Antiaderente Starflon Max Vermelha 14 cm 1,9 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28766018', 'chapa-oval-tramontina-fargo-em-ferro-fundido-com-acabamento-pre-seasoned-com-tabua-18-cm-0-4-l', 'Chapa Oval Tramontina Fargo em Ferro Fundido com Acabamento Pre-Seasoned com tábua 18 cm 0,4 L', 'Chapa Oval Tramontina Fargo em Ferro Fundido com Acabamento Pre-Seasoned com tábua 18 cm 0,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 217, 292.95, 'TRAM-28766018', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28766018', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28766018PDM001E.jpg', 'Chapa Oval Tramontina Fargo em Ferro Fundido com Acabamento Pre-Seasoned com tábua 18 cm 0,4 L', true, 1) ON CONFLICT DO NOTHING;

INSERT INTO products (id, slug, name, description, brand, category_id, price, compare_at_price, sku, stock, rating, review_count, is_featured, is_new, created_at, updated_at)
VALUES ('prod-tram-28765018', 'chapa-oval-tramontina-fargo-em-ferro-fundido-com-acabamento-pre-seasoned-18-cm-0-4-l', 'Chapa Oval Tramontina Fargo em Ferro Fundido com Acabamento Pre-Seasoned 18 cm 0,4 L', 'Chapa Oval Tramontina Fargo em Ferro Fundido com Acabamento Pre-Seasoned 18 cm 0,4 L. Produto oficial Tramontina de alta qualidade.', 'Tramontina', 'cat-frigideiras-e-woks', 133, 179.55, 'TRAM-28765018', 50, 4.5, 45, false, false, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
INSERT INTO product_images (product_id, url, alt, is_primary, display_order)
VALUES ('prod-tram-28765018', 'https://assets.tramontina.com.br/upload/tramon/imagens/CUT/28765018PDM001E.jpg', 'Chapa Oval Tramontina Fargo em Ferro Fundido com Acabamento Pre-Seasoned 18 cm 0,4 L', true, 1) ON CONFLICT DO NOTHING;

COMMIT;