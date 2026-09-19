-- ============================================================
-- NEXLAR Premium Living — Catálogo Equivalente Brinox
-- Migração: substitui categorias, produtos, imagens e banners
-- ============================================================

-- 1. Limpar dados existentes (ordem correta para FK)
DELETE FROM public.product_images;
DELETE FROM public.product_variants;
DELETE FROM public.reviews;
DELETE FROM public.products;
DELETE FROM public.categories;
DELETE FROM public.banners;

-- ============================================================
-- 2. CATEGORIAS (equivalentes às da Brinox)
-- ============================================================
INSERT INTO public.categories (id, name, slug, description, image_url, position, active) VALUES

  ('aaaa0001-0000-4000-8000-000000000000',
   'Panelas',
   'panelas',
   'Jogos de panelas, frigideiras, caçarolas, woks, chaleiras e mais.',
   'https://images.unsplash.com/photo-1556910103-1c02745aae4d?auto=format&fit=crop&w=800&q=80',
   1, true),

  ('aaaa0002-0000-4000-8000-000000000000',
   'Panelas de Pressão',
   'panelas-de-pressao',
   'Panelas de pressão com fechamento externo, interno e linha antiaderente cerâmica.',
   'https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=800&q=80',
   2, true),

  ('aaaa0003-0000-4000-8000-000000000000',
   'Eletroportáteis',
   'eletroportateis',
   'Panelas de pressão elétricas e cooktops de indução para cozinhas modernas.',
   'https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=800&q=80',
   3, true),

  ('aaaa0004-0000-4000-8000-000000000000',
   'Lixeiras',
   'lixeiras',
   'Lixeiras com pedal, basculantes, com sensor e para reciclagem seletiva.',
   'https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=800&q=80',
   4, true),

  ('aaaa0005-0000-4000-8000-000000000000',
   'Utensílios de Cozinha',
   'utensilios-de-cozinha',
   'Kits de silicone, inox, tábuas de corte, escorredores e acessórios essenciais.',
   'https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=800&q=80',
   5, true),

  ('aaaa0006-0000-4000-8000-000000000000',
   'Mesa & Talheres',
   'mesa-e-talheres',
   'Faqueiros, bandejas de servir, bowls e acessórios para uma mesa posta impecável.',
   'https://images.unsplash.com/photo-1573821663912-569905455b1c?auto=format&fit=crop&w=800&q=80',
   6, true),

  ('aaaa0007-0000-4000-8000-000000000000',
   'Assadeiras & Formas',
   'assadeiras-e-formas',
   'Assadeiras antiaderentes, formas de bolo, forma para lasanha e para pão.',
   'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=800&q=80',
   7, true),

  ('aaaa0008-0000-4000-8000-000000000000',
   'Organização',
   'organizacao',
   'Porta-temperos, cestos, potes herméticos e soluções para organizar a cozinha.',
   'https://images.unsplash.com/photo-1493606278519-11aa9f86e40a?auto=format&fit=crop&w=800&q=80',
   8, true),

  ('aaaa0009-0000-4000-8000-000000000000',
   'Churrasco',
   'churrasco',
   'Kits, grelhas, churrasqueiras e acessórios para o churrasco perfeito.',
   'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?auto=format&fit=crop&w=800&q=80',
   9, true);


-- ============================================================
-- 3. BANNERS (Hero da página inicial)
-- ============================================================
INSERT INTO public.banners (id, title, subtitle, eyebrow, cta_label, cta_url, image_url, position, active) VALUES

  ('cccc0001-0000-4000-8000-000000000000',
   'Antiaderente que dura anos',
   'Linha Ceramic Pro com fundo triplo, revestimento cerâmico livre de PFOA e compatibilidade com indução. Feito para cozinhas que trabalham todos os dias.',
   'LINHA CERAMIC PRO',
   'Ver panelas',
   '/categoria/panelas',
   'https://images.unsplash.com/photo-1556910103-1c02745aae4d?auto=format&fit=crop&w=1600&q=80',
   1, true),

  ('cccc0002-0000-4000-8000-000000000000',
   'Pressão com segurança total',
   'Panelas de pressão Nexlar com 5 sistemas de segurança, aço inox 18/10 e compatíveis com todos os tipos de fogão. Cozinhe mais rápido com total confiança.',
   'PANELAS DE PRESSÃO',
   'Ver panelas de pressão',
   '/categoria/panelas-de-pressao',
   'https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=1600&q=80',
   2, true),

  ('cccc0003-0000-4000-8000-000000000000',
   'Organização com estilo',
   'Porta-temperos, potes herméticos, cestos e organizadores com design premium para transformar sua cozinha num espaço funcional e bonito.',
   'ORGANIZAÇÃO',
   'Explorar organização',
   '/categoria/organizacao',
   'https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=1600&q=80',
   3, true);


-- ============================================================
-- 4. PRODUTOS
-- ============================================================

-- ────────────────────────────────────────────────────────────
-- PANELAS (15 produtos)
-- ────────────────────────────────────────────────────────────
INSERT INTO public.products
  (id, name, slug, sku, short_description, description, category_id,
   price, compare_at_price, pix_discount_percent, stock,
   rating, reviews_count, free_shipping, featured, is_new, active,
   highlights, specs)
VALUES

('bbbb0001-0000-4000-8000-000000000000',
 'Jogo de Panelas Nexlar Ceramic Pro 5 Peças Antiaderente',
 'jogo-panelas-ceramic-pro-5pc',
 'NX-PAN-001',
 'Jogo completo com antiaderente cerâmico de alta durabilidade, compatível com todos os tipos de fogão incluindo indução.',
 'O Jogo de Panelas Nexlar Ceramic Pro é a escolha ideal para quem busca qualidade e praticidade. Fabricado em alumínio forjado com revestimento antiaderente cerâmico livre de PFOA, distribui o calor de forma uniforme e facilita a limpeza. Inclui caldeirão, panela média, caçarola, frigideira e tampo de vidro extra.',
 'aaaa0001-0000-4000-8000-000000000000',
 389.90, 489.90, 10, 50, 4.8, 234, true, true, false, true,
 ARRAY['Revestimento cerâmico livre de PFOA','Compatível com indução','Tampa de vidro temperado','Alças ergonômicas de silicone','Distribuição uniforme de calor'],
 '{"Peças": "5 (caldeirão 20cm + panela 18cm + caçarola 20cm + frigideira 22cm + tampa extra)", "Material": "Alumínio forjado com cerâmica", "Compatibilidade": "Gás, elétrico, indução, vitrocerâmico", "Cor": "Cobre/Nude", "Garantia": "5 anos"}'::jsonb
),

('bbbb0002-0000-4000-8000-000000000000',
 'Jogo de Panelas Nexlar Inox Premium 7 Peças',
 'jogo-panelas-inox-premium-7pc',
 'NX-PAN-002',
 'Jogo em aço inox 18/10 com fundo triplo encapsulado para máxima performance em qualquer fogão.',
 'Elegância e durabilidade em um só produto. O Jogo de Panelas Nexlar Inox Premium é fabricado em aço inoxidável 18/10 de alta qualidade, com fundo triplo encapsulado para distribuição uniforme de calor. Ideal para cozinheiros que buscam peças que duram uma vida inteira.',
 'aaaa0001-0000-4000-8000-000000000000',
 549.90, 699.90, 10, 35, 4.9, 187, true, true, false, true,
 ARRAY['Aço inox 18/10','Fundo triplo encapsulado','Compatível com indução','Alças de inox soldadas','Lava-louças seguro'],
 '{"Peças": "7 (panelas 16/18/20/22cm + caçarola 24cm + frigideira 24cm + caldeirão 28cm)", "Material": "Aço inox 18/10", "Compatibilidade": "Gás, elétrico, indução, vitrocerâmico", "Cor": "Prata", "Garantia": "10 anos"}'::jsonb
),

('bbbb0003-0000-4000-8000-000000000000',
 'Jogo de Panelas Empilháveis Nexlar Slim 5 Peças',
 'jogo-panelas-empilhaveis-slim-5pc',
 'NX-PAN-003',
 'Design empilhável inovador que economiza até 60% de espaço no armário. Cabo removível para uso no forno.',
 'O Jogo Nexlar Slim foi criado para quem valoriza praticidade e organização. Seu design inovador permite empilhar todas as peças, economizando espaço. O cabo removível facilita o armazenamento e o uso no forno. Revestimento antiaderente cerâmico de última geração.',
 'aaaa0001-0000-4000-8000-000000000000',
 449.90, 599.90, 10, 28, 4.7, 156, true, false, true, true,
 ARRAY['Design empilhável','Cabo removível','Vai ao forno','Antiaderente cerâmico','Compatível com indução'],
 '{"Peças": "5 (panelas 16/18/20cm + frigideira 22cm + caçarola 24cm)", "Material": "Alumínio com cerâmica", "Compatibilidade": "Gás, elétrico, indução, vitrocerâmico", "Cor": "Areia", "Garantia": "5 anos"}'::jsonb
),

('bbbb0004-0000-4000-8000-000000000000',
 'Panela Antiaderente Nexlar Ceramic Pro 24cm',
 'panela-antiaderente-ceramic-pro-24cm',
 'NX-PAN-004',
 'Panela avulsa 24cm com antiaderente cerâmico de alta performance. Vai ao forno até 260°C.',
 'A Panela Nexlar Ceramic Pro 24cm é perfeita para o uso diário. Seu revestimento antiaderente cerâmico garante que os alimentos não grudem e facilita a limpeza. Tampa de vidro temperado com saída de vapor.',
 'aaaa0001-0000-4000-8000-000000000000',
 129.90, 169.90, 10, 80, 4.6, 98, false, false, false, true,
 ARRAY['Antiaderente cerâmico','Compatível com indução','Vai ao forno até 260°C','Tampa de vidro temperado'],
 '{"Diâmetro": "24cm", "Capacidade": "3.0L", "Material": "Alumínio com cerâmica", "Compatibilidade": "Todos os fogões", "Garantia": "3 anos"}'::jsonb
),

('bbbb0005-0000-4000-8000-000000000000',
 'Panela Antiaderente Nexlar Ceramic Pro 20cm',
 'panela-antiaderente-ceramic-pro-20cm',
 'NX-PAN-005',
 'Panela compacta 20cm ideal para solteiros e casais. Antiaderente cerâmico de fácil limpeza.',
 'A Panela Nexlar Ceramic Pro 20cm é a escolha perfeita para quem cozinha para 1 ou 2 pessoas. Tamanho compacto e fácil de manusear, com todo o desempenho da linha Ceramic Pro.',
 'aaaa0001-0000-4000-8000-000000000000',
 99.90, 129.90, 10, 100, 4.5, 72, false, false, false, true,
 ARRAY['Antiaderente cerâmico','Tamanho compacto','Fácil limpeza','Compatível com indução'],
 '{"Diâmetro": "20cm", "Capacidade": "1.8L", "Material": "Alumínio com cerâmica", "Compatibilidade": "Todos os fogões", "Garantia": "3 anos"}'::jsonb
),

('bbbb0006-0000-4000-8000-000000000000',
 'Frigideira Antiaderente Nexlar Ceramic Pro 26cm',
 'frigideira-ceramic-pro-26cm',
 'NX-PAN-006',
 'Frigideira 26cm com antiaderente cerâmico premium. Ideal para selados, omeletes e frituras com pouco óleo.',
 'A Frigideira Nexlar Ceramic Pro 26cm é perfeita para cozinhar com menos gordura. Seu revestimento antiaderente cerâmico de alta durabilidade permite selar carnes, preparar omeletes e frituras. Bordas altas para evitar respingos.',
 'aaaa0001-0000-4000-8000-000000000000',
 149.90, 199.90, 10, 65, 4.7, 143, false, true, false, true,
 ARRAY['Antiaderente cerâmico premium','Compatível com indução','Bordas altas para evitar respingos','Alça de inox ergonômica'],
 '{"Diâmetro": "26cm", "Profundidade": "5cm", "Material": "Alumínio com cerâmica", "Compatibilidade": "Todos os fogões", "Garantia": "3 anos"}'::jsonb
),

('bbbb0007-0000-4000-8000-000000000000',
 'Frigideira Antiaderente Nexlar Ceramic Pro 24cm',
 'frigideira-ceramic-pro-24cm',
 'NX-PAN-007',
 'Frigideira 24cm compacta e versátil. Antiaderente cerâmico de fácil limpeza.',
 'A Frigideira Nexlar Ceramic Pro 24cm é uma opção versátil para o dia a dia. Perfeita para ovos, panquecas, carnes e muito mais. Ideal para fogões domésticos de tamanho padrão.',
 'aaaa0001-0000-4000-8000-000000000000',
 129.90, 169.90, 10, 75, 4.6, 89, false, false, false, true,
 ARRAY['Antiaderente cerâmico','Compatível com indução','Fácil de limpar','Alça ergonômica'],
 '{"Diâmetro": "24cm", "Profundidade": "4.5cm", "Material": "Alumínio com cerâmica", "Compatibilidade": "Todos os fogões", "Garantia": "3 anos"}'::jsonb
),

('bbbb0008-0000-4000-8000-000000000000',
 'Frigideira de Ferro Fundido Nexlar Cast 28cm',
 'frigideira-ferro-fundido-cast-28cm',
 'NX-PAN-008',
 'Frigideira de ferro fundido natural 28cm. Dura para sempre e melhora com o uso.',
 'A Frigideira de Ferro Fundido Nexlar Cast é uma peça que dura gerações. O ferro fundido distribui o calor de forma uniforme e retém a temperatura por mais tempo. Ideal para selar carnes e preparar pratos no fogão e no forno.',
 'aaaa0001-0000-4000-8000-000000000000',
 189.90, 249.90, 10, 40, 4.8, 67, false, false, false, true,
 ARRAY['Ferro fundido natural','Dura para sempre','Melhora com o uso (seasoning)','Vai ao forno','Retém calor por mais tempo'],
 '{"Diâmetro": "28cm", "Material": "Ferro fundido", "Compatibilidade": "Todos os fogões e forno", "Peso": "2.8kg", "Garantia": "Vida útil"}'::jsonb
),

('bbbb0009-0000-4000-8000-000000000000',
 'Caçarola Nexlar Ceramic Pro 22cm com Tampa',
 'cacarola-ceramic-pro-22cm',
 'NX-PAN-009',
 'Caçarola 22cm com antiaderente cerâmico e tampa de vidro temperado. Perfeita para arroz e feijão.',
 'A Caçarola Nexlar Ceramic Pro 22cm é indispensável na cozinha brasileira. Com capacidade de 3.5L e revestimento antiaderente cerâmico, prepara arroz, feijão, sopas e ensopados. A tampa de vidro temperado permite monitorar o cozimento sem abrir.',
 'aaaa0001-0000-4000-8000-000000000000',
 169.90, 219.90, 10, 55, 4.7, 112, false, false, false, true,
 ARRAY['Antiaderente cerâmico','Tampa de vidro temperado','Ideal para arroz e feijão','Compatível com indução'],
 '{"Diâmetro": "22cm", "Capacidade": "3.5L", "Material": "Alumínio com cerâmica", "Compatibilidade": "Todos os fogões", "Garantia": "3 anos"}'::jsonb
),

('bbbb0010-0000-4000-8000-000000000000',
 'Wok Nexlar Antiaderente 32cm',
 'wok-antiaderente-32cm',
 'NX-PAN-010',
 'Wok 32cm com antiaderente cerâmico premium. Ideal para stir-fry e cozinha oriental.',
 'O Wok Nexlar Antiaderente 32cm foi desenvolvido para a cozinha oriental e preparações em alta temperatura. Formato cônico permite agitar os alimentos com facilidade e o revestimento cerâmico garante alta performance com pouco óleo.',
 'aaaa0001-0000-4000-8000-000000000000',
 199.90, 259.90, 10, 45, 4.6, 78, false, false, false, true,
 ARRAY['Formato wok tradicional','Antiaderente cerâmico','Ideal para alta temperatura','Compatível com indução','Tampa de vidro inclusa'],
 '{"Diâmetro": "32cm", "Profundidade": "9cm", "Capacidade": "4.5L", "Material": "Alumínio com cerâmica", "Compatibilidade": "Todos os fogões", "Garantia": "3 anos"}'::jsonb
),

('bbbb0011-0000-4000-8000-000000000000',
 'Omeleteira Nexlar Ceramic Pro 20cm',
 'omeleteira-ceramic-pro-20cm',
 'NX-PAN-011',
 'Omeleteira 20cm específica para omeletes perfeitas. Antiaderente cerâmico premium com borda baixa.',
 'A Omeleteira Nexlar Ceramic Pro foi desenvolvida especialmente para preparar omeletes, panquecas e crepes perfeitos. Sua borda baixa facilita virar os alimentos e o revestimento cerâmico garante que não grudem.',
 'aaaa0001-0000-4000-8000-000000000000',
 89.90, 119.90, 10, 90, 4.5, 56, false, false, false, true,
 ARRAY['Design específico para omeletes','Antiaderente cerâmico','Borda baixa para virar facilmente','Fácil de limpar'],
 '{"Diâmetro": "20cm", "Material": "Alumínio com cerâmica", "Compatibilidade": "Gás, elétrico, vitrocerâmico", "Garantia": "2 anos"}'::jsonb
),

('bbbb0012-0000-4000-8000-000000000000',
 'Chaleira Inox Nexlar 1.5L',
 'chaleira-inox-1-5l',
 'NX-PAN-012',
 'Chaleira em aço inox 18/10 de 1.5L. Design elegante com bico estendido para servir com precisão.',
 'A Chaleira Nexlar em aço inox 18/10 combina elegância e funcionalidade. Com capacidade de 1.5L e fundo encapsulado, esquenta a água rapidamente em qualquer tipo de fogão. Tampa articulada e bico estendido para servir com precisão.',
 'aaaa0001-0000-4000-8000-000000000000',
 119.90, 159.90, 10, 60, 4.6, 45, false, false, false, true,
 ARRAY['Aço inox 18/10','Fundo encapsulado','Tampa articulada','Bico preciso','Compatível com todos os fogões'],
 '{"Capacidade": "1.5L", "Material": "Aço inox 18/10", "Compatibilidade": "Todos os fogões", "Garantia": "5 anos"}'::jsonb
),

('bbbb0013-0000-4000-8000-000000000000',
 'Chaleira Elétrica Nexlar Premium 1.7L',
 'chaleira-eletrica-premium-1-7l',
 'NX-PAN-013',
 'Chaleira elétrica 1.7L com temperatura variável e desligamento automático. Pronta em 3 minutos.',
 'A Chaleira Elétrica Nexlar Premium é a solução inteligente para quem ama chá e café. Com 5 opções de temperatura e desligamento automático, ferve 1.7L em menos de 3 minutos. Design em inox com base sem fio 360°.',
 'aaaa0001-0000-4000-8000-000000000000',
 199.90, 259.90, 10, 40, 4.7, 89, true, false, true, true,
 ARRAY['5 opções de temperatura','Desligamento automático','Base sem fio 360°','Filtro anti-calcário','Display LED'],
 '{"Capacidade": "1.7L", "Potência": "1500W", "Material": "Aço inox", "Temperatura": "60°C a 100°C variável", "Garantia": "2 anos"}'::jsonb
),

('bbbb0014-0000-4000-8000-000000000000',
 'Panela para Espaguete Nexlar Inox 5L',
 'panela-espaguete-inox-5l',
 'NX-PAN-014',
 'Panela para espaguete em inox 5L com cesto escorredor removível. Cozinha pasta perfeita.',
 'A Panela para Espaguete Nexlar Inox é a escolha ideal para quem ama macarrão. Com 5L de capacidade e cesto escorredor removível em inox, prepara pastas na medida certa. O escorredor pode ser usado separado como peneira.',
 'aaaa0001-0000-4000-8000-000000000000',
 179.90, 229.90, 10, 35, 4.5, 34, false, false, false, true,
 ARRAY['Cesto escorredor incluso','Aço inox 18/10','Tampa de vidro temperado','5L de capacidade','Serve também como peneira'],
 '{"Capacidade": "5L", "Material": "Aço inox 18/10", "Inclusos": "Panela + cesto escorredor + tampa", "Compatibilidade": "Todos os fogões", "Garantia": "5 anos"}'::jsonb
),

('bbbb0015-0000-4000-8000-000000000000',
 'Grill Antiaderente Nexlar 28x22cm',
 'grill-antiaderente-28x22',
 'NX-PAN-015',
 'Grill 28x22cm com antiaderente cerâmico. Marcas de grelha perfeitas sem sair de casa.',
 'O Grill Nexlar permite preparar carnes e legumes com marcas de grelha autênticas sem sair de casa. Seu revestimento cerâmico antiaderente garante uma selagem perfeita com pouco óleo. Ideal para bifes, frangos e vegetais.',
 'aaaa0001-0000-4000-8000-000000000000',
 149.90, 199.90, 10, 50, 4.6, 67, false, false, false, true,
 ARRAY['Ranhuras de grelha profundas','Antiaderente cerâmico','Drena a gordura','Tampa com regulagem de vapor inclusa','Compatível com indução'],
 '{"Dimensões": "28x22cm", "Material": "Alumínio com cerâmica", "Compatibilidade": "Todos os fogões", "Garantia": "3 anos"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- PANELAS DE PRESSÃO (6 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0016-0000-4000-8000-000000000000',
 'Panela de Pressão Nexlar Inox 4.5L Fechamento Externo',
 'panela-pressao-inox-4-5l',
 'NX-PRE-001',
 'Panela de pressão 4.5L em inox com fechamento externo e 5 sistemas de segurança.',
 'A Panela de Pressão Nexlar Inox 4.5L tem sistema de fechamento externo com múltiplos dispositivos de segurança. Fabricada em aço inox 18/10 resistente, com fundo triplo para distribuição uniforme de calor. Cozinha feijão e carnes em tempo recorde.',
 'aaaa0002-0000-4000-8000-000000000000',
 249.90, 319.90, 10, 45, 4.7, 156, true, true, false, true,
 ARRAY['Fechamento externo','Aço inox 18/10','5 sistemas de segurança','Válvula de pressão seletora','Compatível com indução'],
 '{"Capacidade": "4.5L", "Material": "Aço inox 18/10", "Sistema": "Fechamento externo", "Compatibilidade": "Gás, elétrico, indução, vitrocerâmico", "Garantia": "5 anos"}'::jsonb
),

('bbbb0017-0000-4000-8000-000000000000',
 'Panela de Pressão Nexlar Inox 6L Fechamento Externo',
 'panela-pressao-inox-6l',
 'NX-PRE-002',
 'Panela de pressão 6L em inox. Para famílias que cozinham em quantidade.',
 'A Panela de Pressão Nexlar 6L é perfeita para famílias maiores. Com capacidade generosa e fechamento externo seguro, prepara grandes quantidades em tempo reduzido. Aço inox 18/10 de alta qualidade.',
 'aaaa0002-0000-4000-8000-000000000000',
 289.90, 369.90, 10, 38, 4.8, 134, true, true, false, true,
 ARRAY['Grande capacidade 6L','Fechamento externo','Aço inox 18/10','5 sistemas de segurança','Compatível com indução'],
 '{"Capacidade": "6L", "Material": "Aço inox 18/10", "Sistema": "Fechamento externo", "Compatibilidade": "Todos os fogões", "Garantia": "5 anos"}'::jsonb
),

('bbbb0018-0000-4000-8000-000000000000',
 'Panela de Pressão Antiaderente Nexlar Ceramic Pro 4.2L',
 'panela-pressao-ceramic-pro-4-2l',
 'NX-PRE-003',
 'Panela de pressão com antiaderente cerâmico interno. A mais avançada da linha Nexlar.',
 'A Panela de Pressão Nexlar Ceramic Pro combina pressão com a praticidade do antiaderente cerâmico interno. Revestimento de última geração evita que alimentos grudem e facilita a limpeza. Compatível com indução.',
 'aaaa0002-0000-4000-8000-000000000000',
 329.90, 419.90, 10, 30, 4.9, 98, true, true, true, true,
 ARRAY['Antiaderente cerâmico interno','Compatível com indução','Fechamento externo premium','Fácil de limpar','5 sistemas de segurança'],
 '{"Capacidade": "4.2L", "Material": "Alumínio com cerâmica + tampa inox", "Sistema": "Fechamento externo", "Compatibilidade": "Todos os fogões", "Garantia": "5 anos"}'::jsonb
),

('bbbb0019-0000-4000-8000-000000000000',
 'Panela de Pressão Nexlar Inox 7L',
 'panela-pressao-inox-7l',
 'NX-PRE-004',
 'Panela de pressão 7L para grandes famílias e uso semiprofissional.',
 'A Panela de Pressão Nexlar 7L é ideal para quem cozinha em grandes quantidades. Com 7L de capacidade e todos os sistemas de segurança da linha Nexlar, é a escolha de grandes famílias.',
 'aaaa0002-0000-4000-8000-000000000000',
 349.90, 449.90, 10, 25, 4.7, 67, true, false, false, true,
 ARRAY['7L de capacidade','Uso semiprofissional','Aço inox 18/10','5 sistemas de segurança','Compatível com todos os fogões'],
 '{"Capacidade": "7L", "Material": "Aço inox 18/10", "Sistema": "Fechamento externo", "Compatibilidade": "Todos os fogões", "Garantia": "5 anos"}'::jsonb
),

('bbbb0020-0000-4000-8000-000000000000',
 'Panela de Pressão Nexlar VAPT 4.5L Fechamento Interno',
 'panela-pressao-vapt-4-5l',
 'NX-PRE-005',
 'Sistema VAPT de fechamento interno. Abertura e fechamento com um único giro.',
 'A Panela de Pressão Nexlar VAPT tem sistema de fechamento interno que abre e fecha com um único giro. Mais prática e segura, é a preferência de quem cozinha todos os dias. Tampa entra por dentro da panela.',
 'aaaa0002-0000-4000-8000-000000000000',
 299.90, 379.90, 10, 35, 4.6, 112, true, false, false, true,
 ARRAY['Sistema VAPT fechamento interno','Abertura com 1 giro','Mais prático e seguro','Aço inox 18/10','Compatível com indução'],
 '{"Capacidade": "4.5L", "Material": "Aço inox 18/10", "Sistema": "Fechamento interno (VAPT)", "Compatibilidade": "Todos os fogões", "Garantia": "5 anos"}'::jsonb
),

('bbbb0021-0000-4000-8000-000000000000',
 'Panela de Pressão Nexlar Inox 3L',
 'panela-pressao-inox-3l',
 'NX-PRE-006',
 'Panela de pressão compacta 3L. Ideal para solteiros e casais.',
 'A Panela de Pressão Nexlar 3L é a opção compacta para quem mora sozinho ou cozinha para dois. Cabe em qualquer fogão e cozinha feijão e carnes em tempo recorde.',
 'aaaa0002-0000-4000-8000-000000000000',
 219.90, 279.90, 10, 50, 4.5, 78, false, false, false, true,
 ARRAY['Tamanho compacto 3L','Ideal para 1-2 pessoas','Aço inox 18/10','Fechamento externo','Compatível com indução'],
 '{"Capacidade": "3L", "Material": "Aço inox 18/10", "Sistema": "Fechamento externo", "Compatibilidade": "Todos os fogões", "Garantia": "5 anos"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- ELETROPORTÁTEIS (5 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0022-0000-4000-8000-000000000000',
 'Panela de Pressão Elétrica Nexlar Digital 5L',
 'panela-pressao-eletrica-digital-5l',
 'NX-ELE-001',
 'Panela de pressão elétrica 5L com 12 programas automáticos. Cozinha sem supervisão.',
 'A Panela de Pressão Elétrica Nexlar Digital é a assistente perfeita para sua cozinha. Com 12 programas pré-configurados incluindo feijão, arroz, carne e sopa, basta pressionar o botão e a panela cuida do resto. Display digital com timer e aquecimento automático.',
 'aaaa0003-0000-4000-8000-000000000000',
 599.90, 799.90, 10, 25, 4.8, 203, true, true, false, true,
 ARRAY['12 programas automáticos','Display digital com timer','Aquecimento automático','Desligamento automático de segurança','Tampa removível para limpeza'],
 '{"Capacidade": "5L", "Potência": "1000W", "Programas": "12 (feijão, arroz, carne, sopa, vapor e mais)", "Tensão": "110/220V bivolt", "Garantia": "2 anos"}'::jsonb
),

('bbbb0023-0000-4000-8000-000000000000',
 'Cooktop de Indução Nexlar 1 Boca 2200W',
 'cooktop-inducao-1-boca-2200w',
 'NX-ELE-002',
 'Cooktop portátil de indução 2200W com 9 níveis de potência. Economiza energia e aquece em segundos.',
 'O Cooktop de Indução Nexlar é a solução portátil para cozinhar com eficiência energética. Com potência de 2200W e 9 níveis, aquece panelas de indução em segundos. Display digital com timer e desligamento automático de segurança.',
 'aaaa0003-0000-4000-8000-000000000000',
 299.90, 399.90, 10, 35, 4.7, 145, false, false, false, true,
 ARRAY['2200W de potência','9 níveis de potência','Display digital com timer','Portátil e compacto','Economiza até 50% de energia'],
 '{"Potência": "2200W", "Bocas": "1", "Níveis": "9 níveis de potência", "Display": "LCD digital", "Garantia": "2 anos"}'::jsonb
),

('bbbb0024-0000-4000-8000-000000000000',
 'Cooktop de Indução Nexlar 2 Bocas 4200W',
 'cooktop-inducao-2-bocas-4200w',
 'NX-ELE-003',
 'Cooktop de indução 2 bocas com controle independente de temperatura. Substitui o fogão tradicional.',
 'O Cooktop de Indução Nexlar 2 Bocas oferece versatilidade com controle independente de temperatura para cada boca. Com 4200W de potência total e 9 níveis por boca, substitui o fogão tradicional com vantagem.',
 'aaaa0003-0000-4000-8000-000000000000',
 449.90, 589.90, 10, 20, 4.8, 112, false, true, false, true,
 ARRAY['4200W de potência total','Controle independente por boca','9 níveis por boca','Timer individual','Proteção contra superaquecimento'],
 '{"Potência": "4200W total (2x2100W)", "Bocas": "2 com controle independente", "Tensão": "220V", "Display": "LCD digital", "Garantia": "2 anos"}'::jsonb
),

('bbbb0025-0000-4000-8000-000000000000',
 'Panela de Pressão Elétrica Nexlar Pro 6L Multi-funções',
 'panela-pressao-eletrica-pro-6l',
 'NX-ELE-004',
 'Panela elétrica 6L 15-em-1. Pressão, vapor, refogar, iogurte e muito mais.',
 'A Panela de Pressão Elétrica Nexlar Pro é a mais completa da linha. Com 15 funções em 1 aparelho, substitui vários eletrodomésticos. Pressão rápida, lenta, vapor, refogar, iogurte e mais. Tela touchscreen intuitiva.',
 'aaaa0003-0000-4000-8000-000000000000',
 699.90, 899.90, 10, 15, 4.9, 89, true, true, true, true,
 ARRAY['15 funções em 1','Tela touchscreen','Pressão rápida e lenta','Função iogurte e vapor','Capacidade 6L para a família'],
 '{"Capacidade": "6L", "Potência": "1200W", "Funções": "15 (pressão rápida, lenta, vapor, refogar, iogurte e mais)", "Tensão": "110/220V bivolt", "Garantia": "2 anos"}'::jsonb
),

('bbbb0026-0000-4000-8000-000000000000',
 'Panela de Pressão Elétrica Nexlar Basic 3L',
 'panela-pressao-eletrica-basic-3l',
 'NX-ELE-005',
 'Panela elétrica compacta 3L. Ideal para solteiros que querem praticidade na cozinha.',
 'A Panela de Pressão Elétrica Nexlar Basic é a opção compacta e acessível para quem mora sozinho. Com 6 programas básicos e capacidade de 3L, prepara feijão, arroz e sopas sem complicação.',
 'aaaa0003-0000-4000-8000-000000000000',
 449.90, 579.90, 10, 30, 4.6, 67, false, false, false, true,
 ARRAY['Compacta 3L','6 programas automáticos','Desligamento automático','Tampa removível fácil de limpar','Ideal para 1-2 pessoas'],
 '{"Capacidade": "3L", "Potência": "800W", "Programas": "6", "Tensão": "110/220V bivolt", "Garantia": "2 anos"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- LIXEIRAS (8 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0027-0000-4000-8000-000000000000',
 'Lixeira com Pedal Nexlar Inox 25L',
 'lixeira-pedal-inox-25l',
 'NX-LIX-001',
 'Lixeira em aço inox 25L com pedal silencioso. Design slim de alta qualidade para a cozinha.',
 'A Lixeira com Pedal Nexlar Inox 25L combina design sofisticado com funcionalidade. Em aço inox escovado resistente a manchas, seu mecanismo de pedal silencioso mantém as mãos sempre limpas. Balde interno removível facilita a troca do saco.',
 'aaaa0004-0000-4000-8000-000000000000',
 189.90, 249.90, 10, 40, 4.7, 123, true, true, false, true,
 ARRAY['Aço inox escovado','Pedal silencioso','Balde interno removível','Design slim','Resistente a manchas'],
 '{"Capacidade": "25L", "Material": "Aço inox", "Abertura": "Pedal", "Dimensões": "25x35x65cm", "Garantia": "3 anos"}'::jsonb
),

('bbbb0028-0000-4000-8000-000000000000',
 'Lixeira com Pedal Nexlar Slim 12L Branca',
 'lixeira-pedal-slim-12l-branca',
 'NX-LIX-002',
 'Lixeira com pedal 12L em plástico de alta resistência. Slim e discreta para qualquer ambiente.',
 'A Lixeira com Pedal Nexlar Slim 12L é perfeita para banheiros e cozinhas compactas. Em plástico ABS de alta resistência com design slim que ocupa pouco espaço. Pedal durável e balde removível.',
 'aaaa0004-0000-4000-8000-000000000000',
 129.90, 169.90, 10, 55, 4.5, 89, false, false, false, true,
 ARRAY['Design slim','Plástico ABS resistente','Pedal durável','Balde removível','Fácil limpeza'],
 '{"Capacidade": "12L", "Material": "Plástico ABS", "Cor": "Branco", "Abertura": "Pedal", "Garantia": "2 anos"}'::jsonb
),

('bbbb0029-0000-4000-8000-000000000000',
 'Lixeira Basculante Nexlar 8L Branca',
 'lixeira-basculante-8l-branca',
 'NX-LIX-003',
 'Lixeira basculante 8L. Tampa abre com simples toque das mãos. Ideal para sob a pia.',
 'A Lixeira Basculante Nexlar 8L é ideal para instalar sob a pia ou em locais com pouco espaço. A tampa bascula com um simples toque das mãos, sem necessidade de pedal. Compacta e fácil de limpar.',
 'aaaa0004-0000-4000-8000-000000000000',
 79.90, 99.90, 10, 70, 4.4, 67, false, false, false, true,
 ARRAY['Tampa basculante sem pedal','Compacta 8L','Ideal para sob a pia','Fácil de instalar','Fácil de limpar'],
 '{"Capacidade": "8L", "Material": "Plástico", "Cor": "Branco", "Abertura": "Basculante", "Garantia": "1 ano"}'::jsonb
),

('bbbb0030-0000-4000-8000-000000000000',
 'Lixeira Basculante Nexlar 15L Preta',
 'lixeira-basculante-15l-preta',
 'NX-LIX-004',
 'Lixeira basculante 15L em preto. Design moderno para qualquer ambiente da casa.',
 'A Lixeira Basculante Nexlar 15L em preto tem design moderno que combina com qualquer decoração. Tampa bascula com um simples toque e o plástico ABS de alta resistência garante durabilidade.',
 'aaaa0004-0000-4000-8000-000000000000',
 99.90, 129.90, 10, 60, 4.5, 45, false, false, false, true,
 ARRAY['Design moderno','Tampa basculante','Plástico ABS','15L de capacidade','Cor preta elegante'],
 '{"Capacidade": "15L", "Material": "Plástico ABS", "Cor": "Preto", "Abertura": "Basculante", "Garantia": "1 ano"}'::jsonb
),

('bbbb0031-0000-4000-8000-000000000000',
 'Lixeira com Sensor Nexlar Inox 10L',
 'lixeira-sensor-inox-10l',
 'NX-LIX-005',
 'Lixeira com sensor de movimento 10L em inox. Abre automaticamente sem tocar.',
 'A Lixeira com Sensor Nexlar é o máximo em higiene e praticidade. Com sensor de movimento infravermelho, abre automaticamente quando você se aproxima. Ideal para cozinhas e banheiros. Revestimento em inox escovado.',
 'aaaa0004-0000-4000-8000-000000000000',
 249.90, 329.90, 10, 30, 4.8, 89, true, true, true, true,
 ARRAY['Sensor de movimento automático','Aço inox escovado','Pilhas ou USB-C','Higiene total sem toque','Fechamento silencioso'],
 '{"Capacidade": "10L", "Material": "Aço inox", "Abertura": "Sensor de movimento infravermelho", "Alimentação": "4xAA ou USB-C", "Garantia": "2 anos"}'::jsonb
),

('bbbb0032-0000-4000-8000-000000000000',
 'Lixeira Reciclável Nexlar 2 Compartimentos 50L',
 'lixeira-reciclavel-2-comp-50l',
 'NX-LIX-006',
 'Lixeira para reciclagem 50L com 2 compartimentos de 25L cada. Organize a coleta seletiva.',
 'A Lixeira Reciclável Nexlar tem 2 compartimentos para facilitar a coleta seletiva em casa. Com 50L de capacidade total, separa recicláveis de orgânicos. Design compacto que ocupa pouco espaço com pedais independentes.',
 'aaaa0004-0000-4000-8000-000000000000',
 229.90, 299.90, 10, 25, 4.6, 56, false, false, false, true,
 ARRAY['2 compartimentos 25L cada','Coleta seletiva facilitada','Pedais independentes','Design compacto','Fácil de limpar'],
 '{"Capacidade": "50L total (2x25L)", "Material": "Plástico ABS", "Abertura": "Pedal duplo independente", "Uso": "Coleta seletiva", "Garantia": "2 anos"}'::jsonb
),

('bbbb0033-0000-4000-8000-000000000000',
 'Lixeira com Pedal Nexlar Inox 40L',
 'lixeira-pedal-inox-40l',
 'NX-LIX-007',
 'Lixeira de grande porte 40L em inox. Para cozinhas profissionais e grandes famílias.',
 'A Lixeira com Pedal Nexlar 40L é ideal para cozinhas de uso intensivo. Com 40L de capacidade e aço inox premium, suporta o uso diário de grandes famílias e ambientes semiprofissionais.',
 'aaaa0004-0000-4000-8000-000000000000',
 249.90, 319.90, 10, 20, 4.7, 34, true, false, false, true,
 ARRAY['Grande capacidade 40L','Aço inox premium','Pedal silencioso','Balde interno duplo','Uso intensivo'],
 '{"Capacidade": "40L", "Material": "Aço inox", "Abertura": "Pedal", "Uso": "Intensivo / semiprofissional", "Garantia": "3 anos"}'::jsonb
),

('bbbb0034-0000-4000-8000-000000000000',
 'Lixeira para Banheiro Nexlar com Pedal 5L',
 'lixeira-banheiro-pedal-5l',
 'NX-LIX-008',
 'Lixeira compacta 5L com pedal para banheiros. Design elegante e discreto.',
 'A Lixeira para Banheiro Nexlar com Pedal é a solução elegante e higiênica para banheiros. Com apenas 5L de capacidade e design slim, cabe perfeitamente ao lado do vaso sanitário.',
 'aaaa0004-0000-4000-8000-000000000000',
 69.90, 89.90, 10, 80, 4.4, 45, false, false, false, true,
 ARRAY['Design slim para banheiro','Pedal higiênico','Compacta 5L','Balde removível','Fácil de limpar'],
 '{"Capacidade": "5L", "Material": "Plástico ABS", "Abertura": "Pedal", "Uso": "Banheiro", "Garantia": "1 ano"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- UTENSÍLIOS DE COZINHA (10 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0035-0000-4000-8000-000000000000',
 'Kit Utensílios Silicone Nexlar 6 Peças Preto',
 'kit-utensilios-silicone-6pc-preto',
 'NX-UTN-001',
 'Kit 6 peças em silicone alimentício resistente a 230°C. Não risca panelas antiaderentes.',
 'O Kit de Utensílios de Silicone Nexlar reúne as 6 peças essenciais: espátula, concha, escumadeira, colher de servir, pinça e espátula de virar. Silicone alimentício resistente a 230°C, não risca antiaderentes. Suporte de mesa incluso.',
 'aaaa0005-0000-4000-8000-000000000000',
 129.90, 169.90, 10, 60, 4.7, 178, false, true, false, true,
 ARRAY['Silicone alimentício','Resistente a 230°C','Não risca antiaderente','Suporte de mesa incluso','Lava-louças seguro'],
 '{"Peças": "6 (espátula + concha + escumadeira + colher + pinça + espátula de virar)", "Material": "Silicone alimentício + aço inox", "Temperatura": "Até 230°C", "Cor": "Preto", "Garantia": "2 anos"}'::jsonb
),

('bbbb0036-0000-4000-8000-000000000000',
 'Kit Utensílios Silicone Nexlar 8 Peças Bege',
 'kit-utensilios-silicone-8pc-bege',
 'NX-UTN-002',
 'Kit completo 8 peças em silicone bege premium. O kit mais completo da linha com suporte de bambu.',
 'O Kit de Utensílios Nexlar 8 Peças é o mais completo da linha. Com 8 peças em silicone alimentício de alta qualidade, cobre todas as necessidades de uma cozinha moderna. Suporte em bambu para mesa incluso.',
 'aaaa0005-0000-4000-8000-000000000000',
 159.90, 209.90, 10, 45, 4.8, 134, false, false, true, true,
 ARRAY['8 peças completas','Silicone alimentício premium','Suporte de bambu incluso','Resistente a 230°C','Não risca antiaderente'],
 '{"Peças": "8 + suporte de bambu", "Material": "Silicone alimentício + bambu", "Temperatura": "Até 230°C", "Cor": "Bege/Natural", "Garantia": "2 anos"}'::jsonb
),

('bbbb0037-0000-4000-8000-000000000000',
 'Kit Utensílios Inox Nexlar 5 Peças',
 'kit-utensilios-inox-5pc',
 'NX-UTN-003',
 'Kit 5 peças em aço inox 18/10. Resistente, higiênico e elegante para qualquer cozinha.',
 'O Kit de Utensílios Inox Nexlar é a escolha de quem valoriza durabilidade e elegância. Em aço inox 18/10 de alta qualidade, as peças são resistentes, fáceis de limpar e duram anos. Inclui concha, escumadeira, espátula, colher e pinça.',
 'aaaa0005-0000-4000-8000-000000000000',
 99.90, 139.90, 10, 55, 4.6, 89, false, false, false, true,
 ARRAY['Aço inox 18/10','Resistente e durável','Fácil limpeza','Lava-louças seguro','Design elegante'],
 '{"Peças": "5 (concha + escumadeira + espátula + colher + pinça)", "Material": "Aço inox 18/10", "Garantia": "5 anos"}'::jsonb
),

('bbbb0038-0000-4000-8000-000000000000',
 'Escorredor de Macarrão Nexlar Inox 28cm',
 'escorredor-macarrao-inox-28cm',
 'NX-UTN-004',
 'Escorredor de macarrão em inox 28cm com pés de borracha antiderrapante. Prático e higiênico.',
 'O Escorredor de Macarrão Nexlar em Inox 28cm é indispensável para escorrer massas, arroz e legumes. Com furos precisos que não deixam o macarrão passar e pés de borracha antiderrapante para segurança.',
 'aaaa0005-0000-4000-8000-000000000000',
 89.90, 119.90, 10, 50, 4.5, 67, false, false, false, true,
 ARRAY['Aço inox 18/10','Furos precisos','Pés de borracha antiderrapante','Alças ergonômicas','Lava-louças seguro'],
 '{"Diâmetro": "28cm", "Material": "Aço inox 18/10", "Base": "Pés de borracha", "Garantia": "3 anos"}'::jsonb
),

('bbbb0039-0000-4000-8000-000000000000',
 'Tábua de Corte Nexlar Bambu 40x25cm',
 'tabua-corte-bambu-40x25',
 'NX-UTN-005',
 'Tábua de corte em bambu certificado 40x25cm. Naturalmente antimicrobiana e não danifica facas.',
 'A Tábua de Corte Nexlar em Bambu é fabricada com bambu certificado de primeira qualidade. O bambu é naturalmente antimicrobiano e não danifica o fio das facas. Superfície lisa que facilita o corte e a limpeza.',
 'aaaa0005-0000-4000-8000-000000000000',
 69.90, 89.90, 10, 65, 4.6, 78, false, false, false, true,
 ARRAY['Bambu certificado','Naturalmente antimicrobiana','Não danifica facas','Não absorve odores','Sustentável'],
 '{"Dimensões": "40x25x1.8cm", "Material": "Bambu certificado", "Garantia": "2 anos"}'::jsonb
),

('bbbb0040-0000-4000-8000-000000000000',
 'Tábua de Corte Nexlar Bambu Grande 50x30cm',
 'tabua-corte-bambu-grande-50x30',
 'NX-UTN-006',
 'Tábua de corte em bambu extra grande 50x30cm. Para cortes profissionais em casa.',
 'A Tábua de Corte Nexlar Bambu Grande 50x30cm é ideal para cortar peças maiores de carne, aves e preparações mais elaboradas. Tamanho extra grande com espaço de sobra e alça lateral para fácil manuseio.',
 'aaaa0005-0000-4000-8000-000000000000',
 89.90, 119.90, 10, 45, 4.7, 56, false, false, false, true,
 ARRAY['Tamanho extra grande','Bambu certificado','Ideal para carnes e aves','Antimicrobiana','Alça lateral para fácil manuseio'],
 '{"Dimensões": "50x30x2cm", "Material": "Bambu certificado", "Garantia": "2 anos"}'::jsonb
),

('bbbb0041-0000-4000-8000-000000000000',
 'Concha Inox Nexlar 30cm',
 'concha-inox-30cm',
 'NX-UTN-007',
 'Concha em aço inox 18/10 com capacidade de 100ml. Cabo longo ergonômico com gancho.',
 'A Concha Nexlar em Aço Inox é uma peça essencial em qualquer cozinha. Com cabo longo de 30cm e capacidade de 100ml, serve sopas, caldos e arroz com precisão. Gancho para pendurar na panela.',
 'aaaa0005-0000-4000-8000-000000000000',
 39.90, 49.90, 10, 100, 4.5, 45, false, false, false, true,
 ARRAY['Aço inox 18/10','Cabo longo 30cm','Capacidade 100ml','Gancho para pendurar','Lava-louças seguro'],
 '{"Comprimento total": "30cm", "Capacidade": "100ml", "Material": "Aço inox 18/10", "Garantia": "5 anos"}'::jsonb
),

('bbbb0042-0000-4000-8000-000000000000',
 'Espátula Silicone Nexlar Premium',
 'espatula-silicone-premium',
 'NX-UTN-008',
 'Espátula em silicone alimentício resistente a 230°C. Cabeça flexível para raspar tudo.',
 'A Espátula de Silicone Nexlar Premium é perfeita para raspar tigelas, virar panquecas e misturar massas. Cabeça flexível e resistente a 230°C, cabo de aço inox sólido com boa pegada.',
 'aaaa0005-0000-4000-8000-000000000000',
 29.90, 39.90, 10, 150, 4.4, 56, false, false, false, true,
 ARRAY['Silicone alimentício','Cabeça flexível','Resistente a 230°C','Cabo inox sólido','Fácil de limpar'],
 '{"Comprimento": "28cm", "Material": "Silicone alimentício + inox", "Temperatura": "Até 230°C", "Garantia": "2 anos"}'::jsonb
),

('bbbb0043-0000-4000-8000-000000000000',
 'Peneira Inox Nexlar 22cm',
 'peneira-inox-22cm',
 'NX-UTN-009',
 'Peneira em inox 22cm com malha fina. Para farinha, massa, chá e mais.',
 'A Peneira Inox Nexlar 22cm é versátil e resistente. Coa farinha, filtra massas, faz chás e muito mais. Malha fina em inox que não enferruja. Cabo longo para manusear com segurança.',
 'aaaa0005-0000-4000-8000-000000000000',
 49.90, 64.90, 10, 80, 4.5, 34, false, false, false, true,
 ARRAY['Aço inox 18/10','Malha fina','Cabo longo','Versátil','Não enferruja'],
 '{"Diâmetro": "22cm", "Material": "Aço inox 18/10", "Garantia": "3 anos"}'::jsonb
),

('bbbb0044-0000-4000-8000-000000000000',
 'Escorredor de Louças Nexlar Inox com Bandeja',
 'escorredor-loucas-inox-com-bandeja',
 'NX-UTN-010',
 'Escorredor de louças em inox com bandeja coletora removível. Organiza e seca a louça com elegância.',
 'O Escorredor de Louças Nexlar Inox é a solução elegante para secar louças, copos, panelas e talheres. Com bandeja coletora removível e fundo inclinado para escorrer a água, mantém a bancada sempre seca. Porta-talheres incluso.',
 'aaaa0005-0000-4000-8000-000000000000',
 129.90, 169.90, 10, 40, 4.6, 67, false, false, false, true,
 ARRAY['Aço inox 18/10','Bandeja coletora removível','Porta-talheres incluso','Design moderno','Fácil de limpar'],
 '{"Material": "Aço inox 18/10", "Incluso": "Bandeja + porta-talheres", "Capacidade": "Grande", "Garantia": "3 anos"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- MESA & TALHERES (7 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0045-0000-4000-8000-000000000000',
 'Faqueiro Nexlar Inox 24 Peças',
 'faqueiro-inox-24pc',
 'NX-TAL-001',
 'Faqueiro 24 peças em aço inox 18/10 para 6 pessoas. Em caixa presentável.',
 'O Faqueiro Nexlar Inox 24 Peças é perfeito para presentear ou renovar a mesa. Em aço inox 18/10 de alta qualidade, o conjunto para 6 pessoas inclui garfos de jantar, facas, colheres de sopa e colheres de sobremesa, embalados em caixa presentável.',
 'aaaa0006-0000-4000-8000-000000000000',
 199.90, 259.90, 10, 35, 4.7, 145, false, true, false, true,
 ARRAY['24 peças para 6 pessoas','Aço inox 18/10','Caixa presentável','Design clássico','Lava-louças seguro'],
 '{"Peças": "24 (4 tipos x 6 unidades: garfo, faca, colher, sobremesa)", "Para": "6 pessoas", "Material": "Aço inox 18/10", "Garantia": "5 anos"}'::jsonb
),

('bbbb0046-0000-4000-8000-000000000000',
 'Faqueiro Nexlar Premium Inox 42 Peças',
 'faqueiro-premium-inox-42pc',
 'NX-TAL-002',
 'Faqueiro completo 42 peças para 8 pessoas. Inclui peças de serviço. O mais completo da linha.',
 'O Faqueiro Nexlar Premium 42 Peças é o conjunto mais completo. Para 8 pessoas, inclui todos os talheres para uma mesa posta perfeita: garfos de jantar, facas, colheres, colheres de sobremesa e peças de serviço.',
 'aaaa0006-0000-4000-8000-000000000000',
 349.90, 449.90, 10, 25, 4.9, 89, false, true, false, true,
 ARRAY['42 peças para 8 pessoas','Inclui peças de serviço','Aço inox 18/10 premium','Caixa de presente inclusa','Design sofisticado'],
 '{"Peças": "42 (garfos, facas, colheres, sobremesa + serviço)", "Para": "8 pessoas", "Material": "Aço inox 18/10 premium", "Garantia": "10 anos"}'::jsonb
),

('bbbb0047-0000-4000-8000-000000000000',
 'Faqueiro Nexlar Inox 16 Peças',
 'faqueiro-inox-16pc',
 'NX-TAL-003',
 'Faqueiro 16 peças para 4 pessoas. Opção perfeita para casais e famílias pequenas.',
 'O Faqueiro Nexlar Inox 16 Peças é a opção ideal para casais e famílias de até 4 pessoas. Compacto e completo, vem em caixa prática que facilita o armazenamento no armário.',
 'aaaa0006-0000-4000-8000-000000000000',
 149.90, 199.90, 10, 45, 4.6, 67, false, false, false, true,
 ARRAY['16 peças para 4 pessoas','Aço inox 18/10','Caixa prática inclusa','Design clássico','Lava-louças seguro'],
 '{"Peças": "16 (4 tipos x 4 unidades)", "Para": "4 pessoas", "Material": "Aço inox 18/10", "Garantia": "5 anos"}'::jsonb
),

('bbbb0048-0000-4000-8000-000000000000',
 'Bandeja Retangular Inox Nexlar 36cm',
 'bandeja-retangular-inox-36cm',
 'NX-TAL-004',
 'Bandeja retangular em inox espelhado 36cm. Elegante para servir petiscos e aperitivos.',
 'A Bandeja Retangular Nexlar em Inox 36cm é a peça perfeita para servir com elegância. Em aço inox espelhado, combina com qualquer decoração e é fácil de limpar. Bordas enroladas para segurança.',
 'aaaa0006-0000-4000-8000-000000000000',
 89.90, 119.90, 10, 45, 4.6, 45, false, false, false, true,
 ARRAY['Aço inox espelhado','Elegante para servir','Fácil de limpar','Bordas enroladas para segurança','Versátil'],
 '{"Dimensões": "36x25cm", "Material": "Aço inox", "Acabamento": "Espelhado", "Garantia": "3 anos"}'::jsonb
),

('bbbb0049-0000-4000-8000-000000000000',
 'Bandeja Oval Inox Nexlar 30cm',
 'bandeja-oval-inox-30cm',
 'NX-TAL-005',
 'Bandeja oval em inox espelhado 30cm. Perfeita para servir carnes e aperitivos à mesa.',
 'A Bandeja Oval Nexlar 30cm em Inox é ideal para servir carnes, assados e aperitivos. Formato oval facilita o serviço à mesa e o inox espelhado garante apresentação elegante.',
 'aaaa0006-0000-4000-8000-000000000000',
 79.90, 99.90, 10, 50, 4.5, 34, false, false, false, true,
 ARRAY['Formato oval prático','Aço inox espelhado','Ideal para assados','Fácil de limpar','Bordas de segurança'],
 '{"Dimensões": "30x20cm", "Material": "Aço inox", "Acabamento": "Espelhado", "Garantia": "3 anos"}'::jsonb
),

('bbbb0050-0000-4000-8000-000000000000',
 'Conjunto de Bowls Inox Nexlar 4 Peças',
 'conjunto-bowls-inox-4pc',
 'NX-TAL-006',
 'Set de 4 bowls em inox com tamanhos variados. Para saladas, snacks e preparo de receitas.',
 'O Conjunto de Bowls Nexlar em Inox reúne 4 tamanhos diferentes para todas as necessidades: tigelas para salada, snacks, petiscos e preparo de receitas. O inox 18/10 garante higiene e durabilidade. Empilháveis para economizar espaço.',
 'aaaa0006-0000-4000-8000-000000000000',
 139.90, 179.90, 10, 35, 4.7, 56, false, false, false, true,
 ARRAY['4 tamanhos variados','Aço inox 18/10','Empilháveis','Versateis para cozinhar e servir','Lava-louças seguro'],
 '{"Peças": "4 bowls (12/16/20/24cm)", "Material": "Aço inox 18/10", "Garantia": "3 anos"}'::jsonb
),

('bbbb0051-0000-4000-8000-000000000000',
 'Porta-guardanapos Inox Nexlar',
 'porta-guardanapos-inox',
 'NX-TAL-007',
 'Porta-guardanapos em inox escovado. Design minimalista para completar a mesa posta.',
 'O Porta-guardanapos Nexlar em Inox Escovado é o detalhe que completa a mesa posta. Design minimalista e moderno que combina com qualquer decoração. Base estabilizadora antiderrapante.',
 'aaaa0006-0000-4000-8000-000000000000',
 49.90, 64.90, 10, 80, 4.5, 23, false, false, false, true,
 ARRAY['Inox escovado','Design minimalista','Base antiderrapante','Fácil de limpar','Peso estável'],
 '{"Material": "Aço inox escovado", "Base": "Borracha antiderrapante", "Garantia": "3 anos"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- ASSADEIRAS & FORMAS (6 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0052-0000-4000-8000-000000000000',
 'Assadeira Antiaderente Nexlar 40x28cm',
 'assadeira-antiaderente-40x28',
 'NX-ASS-001',
 'Assadeira 40x28cm com antiaderente cerâmico. Para assar carnes, frango e legumes.',
 'A Assadeira Nexlar Antiaderente 40x28cm é perfeita para assar carnes, frangos e legumes. Seu revestimento antiaderente cerâmico facilita a limpeza e garante que os alimentos não grudem. Alças ergonômicas para manuseio seguro.',
 'aaaa0007-0000-4000-8000-000000000000',
 79.90, 99.90, 10, 55, 4.6, 89, false, false, false, true,
 ARRAY['Antiaderente cerâmico','Alças ergonômicas','Fácil de limpar','Distribui o calor uniformemente','Vai ao forno até 260°C'],
 '{"Dimensões": "40x28x5cm", "Material": "Alumínio com cerâmica", "Temperatura máx": "260°C", "Garantia": "3 anos"}'::jsonb
),

('bbbb0053-0000-4000-8000-000000000000',
 'Assadeira Antiaderente Nexlar 35x24cm',
 'assadeira-antiaderente-35x24',
 'NX-ASS-002',
 'Assadeira 35x24cm antiaderente. Tamanho médio perfeito para fornos domésticos.',
 'A Assadeira Nexlar 35x24cm é o tamanho ideal para a maioria dos fornos domésticos. Antiaderente, fácil de limpar e com alças que facilitam o manuseio mesmo com luvas de forno.',
 'aaaa0007-0000-4000-8000-000000000000',
 69.90, 89.90, 10, 60, 4.5, 67, false, false, false, true,
 ARRAY['Tamanho para fornos domésticos','Antiaderente','Alças com proteção','Fácil de limpar','Durável'],
 '{"Dimensões": "35x24x4.5cm", "Material": "Alumínio com antiaderente", "Temperatura máx": "250°C", "Garantia": "2 anos"}'::jsonb
),

('bbbb0054-0000-4000-8000-000000000000',
 'Forma de Bolo Redonda Nexlar 25cm Antiaderente',
 'forma-bolo-redonda-25cm',
 'NX-ASS-003',
 'Forma de bolo redonda 25cm com antiaderente. O bolo sai perfeito sem grudar.',
 'A Forma de Bolo Nexlar 25cm com Antiaderente é a escolha de quem gosta de confeitaria. Revestimento antiaderente garante que o bolo saia da forma inteiro e perfeito. Bordas removíveis para facilitar a desmoldagem.',
 'aaaa0007-0000-4000-8000-000000000000',
 59.90, 79.90, 10, 70, 4.7, 78, false, false, false, true,
 ARRAY['Antiaderente premium','Bordas removíveis','Bolo sai perfeito','Fácil de limpar','Distribuição uniforme de calor'],
 '{"Diâmetro": "25cm", "Altura": "6cm", "Material": "Alumínio com antiaderente", "Temperatura máx": "250°C", "Garantia": "2 anos"}'::jsonb
),

('bbbb0055-0000-4000-8000-000000000000',
 'Kit Assadeiras Nexlar 3 Peças',
 'kit-assadeiras-3pc',
 'NX-ASS-004',
 'Kit com 3 assadeiras em tamanhos diferentes. Completo para todas as receitas do forno.',
 'O Kit de Assadeiras Nexlar 3 Peças reúne os 3 tamanhos mais utilizados em uma única compra: pequena, média e grande. Todas com antiaderente de qualidade e alças ergonômicas. Excelente custo-benefício.',
 'aaaa0007-0000-4000-8000-000000000000',
 149.90, 199.90, 10, 40, 4.8, 123, false, true, false, true,
 ARRAY['3 tamanhos em 1 kit','Antiaderente em todas','Alças ergonômicas','Distribuição uniforme de calor','Excelente custo-benefício'],
 '{"Peças": "3 assadeiras (pequena + média + grande)", "Material": "Alumínio com antiaderente", "Temperatura máx": "260°C", "Garantia": "2 anos"}'::jsonb
),

('bbbb0056-0000-4000-8000-000000000000',
 'Forma para Lasanha Nexlar Antiaderente 40x30cm',
 'forma-lasanha-antiaderente-40x30',
 'NX-ASS-005',
 'Forma para lasanha 40x30cm antiaderente. Alta o suficiente para lasanha bem recheada.',
 'A Forma para Lasanha Nexlar 40x30cm é alta o suficiente para preparar uma lasanha bem recheada com 3-4 camadas. O antiaderente facilita o corte e o serviço sem grudar.',
 'aaaa0007-0000-4000-8000-000000000000',
 89.90, 114.90, 10, 45, 4.6, 56, false, false, false, true,
 ARRAY['Alta para lasanha recheada','Antiaderente','Alças de inox','Fácil de cortar e servir','Vai ao forno'],
 '{"Dimensões": "40x30x7cm", "Material": "Alumínio com antiaderente", "Temperatura máx": "250°C", "Garantia": "2 anos"}'::jsonb
),

('bbbb0057-0000-4000-8000-000000000000',
 'Forma para Pão Nexlar Antiaderente',
 'forma-pao-antiaderente',
 'NX-ASS-006',
 'Forma para pão de forma antiaderente. Pão caseiro perfeito sem grudar.',
 'A Forma para Pão Nexlar Antiaderente é ideal para preparar pão caseiro. O antiaderente garante que o pão saia da forma inteiro e com uma crosta perfeita por fora e macia por dentro.',
 'aaaa0007-0000-4000-8000-000000000000',
 49.90, 64.90, 10, 65, 4.5, 45, false, false, false, true,
 ARRAY['Antiaderente premium','Pão sai perfeito','Fácil de limpar','Distribuição uniforme de calor','Vai ao forno'],
 '{"Dimensões": "25x10x8cm", "Material": "Alumínio com antiaderente", "Temperatura máx": "250°C", "Garantia": "2 anos"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- ORGANIZAÇÃO (6 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0058-0000-4000-8000-000000000000',
 'Porta-temperos Nexlar Inox 6 Peças com Suporte',
 'porta-temperos-inox-6pc-com-suporte',
 'NX-ORG-001',
 'Set de 6 potes para temperos em inox com suporte giratório de bancada. Design elegante.',
 'O Porta-temperos Nexlar Inox 6 Peças é a solução elegante para organizar sal, pimenta e outros temperos na bancada. Os 6 potes em inox com tampas e etiquetas incluídas ficam bonitos em qualquer cozinha. Suporte giratório facilita o acesso.',
 'aaaa0008-0000-4000-8000-000000000000',
 89.90, 119.90, 10, 45, 4.7, 67, false, false, false, true,
 ARRAY['6 potes com tampas','Suporte giratório de bancada','Etiquetas incluídas','Aço inox escovado','Capacidade 120ml cada'],
 '{"Peças": "6 potes + suporte giratório", "Material": "Aço inox escovado", "Capacidade cada pote": "120ml", "Garantia": "3 anos"}'::jsonb
),

('bbbb0059-0000-4000-8000-000000000000',
 'Cesto Organizador Nexlar com Tampa 5L',
 'cesto-organizador-com-tampa-5l',
 'NX-ORG-002',
 'Cesto organizador 5L com tampa hermética transparente. Para dispensa, geladeira e armários.',
 'O Cesto Organizador Nexlar 5L é versátil e funcional. Com tampa hermética que preserva os alimentos, é ideal para organizar a dispensa, geladeira e armários. Empilhável para otimizar o espaço. Plástico transparente para visualizar o conteúdo.',
 'aaaa0008-0000-4000-8000-000000000000',
 49.90, 64.90, 10, 80, 4.5, 45, false, false, false, true,
 ARRAY['Tampa hermética','Empilhável','Transparente para visualizar conteúdo','BPA free','Versátil'],
 '{"Capacidade": "5L", "Material": "Plástico BPA free", "Empilhável": "Sim", "Garantia": "1 ano"}'::jsonb
),

('bbbb0060-0000-4000-8000-000000000000',
 'Porta-rolos de Papel Toalha Nexlar Inox',
 'porta-rolos-papel-toalha-inox',
 'NX-ORG-003',
 'Porta-rolos em aço inox escovado. Para bancada ou parede. Design minimalista.',
 'O Porta-rolos de Papel Toalha Nexlar em Inox Escovado é o detalhe de design que transforma a bancada da cozinha. Versão de bancada com base estável. Suporte de parede incluso na caixa.',
 'aaaa0008-0000-4000-8000-000000000000',
 59.90, 79.90, 10, 60, 4.6, 34, false, false, false, true,
 ARRAY['Aço inox escovado','Funciona em bancada ou parede','Design minimalista','Suporte de parede incluso','Fácil de trocar o rolo'],
 '{"Material": "Aço inox escovado", "Fixação": "Bancada ou parede", "Garantia": "3 anos"}'::jsonb
),

('bbbb0061-0000-4000-8000-000000000000',
 'Organizador de Gaveta Nexlar Bambu 3 Peças',
 'organizador-gaveta-bambu-3pc',
 'NX-ORG-004',
 'Kit 3 divisórias de bambu para gaveta. Organiza talheres e utensílios com estilo.',
 'O Organizador de Gaveta Nexlar em Bambu é a solução sustentável para organizar gavetas de talheres e utensílios. Kit com 3 divisórias que encaixam em gavetas padrão. O bambu certificado é naturalmente antimicrobiano.',
 'aaaa0008-0000-4000-8000-000000000000',
 59.90, 79.90, 10, 50, 4.5, 34, false, false, false, true,
 ARRAY['Bambu certificado sustentável','3 divisórias incluídas','Antimicrobiano','Encaixa em gavetas padrão','Fácil de limpar'],
 '{"Peças": "3 divisórias", "Material": "Bambu certificado", "Dimensões": "Ajustáveis", "Garantia": "1 ano"}'::jsonb
),

('bbbb0062-0000-4000-8000-000000000000',
 'Potes Herméticos Nexlar Clear 10 Peças',
 'potes-hermeticos-clear-10pc',
 'NX-ORG-005',
 'Set de 10 potes herméticos em plástico crystal transparente. Organize mantimentos com estilo.',
 'O Set de Potes Herméticos Nexlar Clear reúne 10 tamanhos variados em plástico crystal transparente. Com tampas herméticas que preservam os alimentos por mais tempo, são ideais para farinha, grãos, açúcar, cereais e muito mais.',
 'aaaa0008-0000-4000-8000-000000000000',
 199.90, 259.90, 10, 35, 4.8, 89, false, true, true, true,
 ARRAY['10 tamanhos variados','Tampa hermética','Plástico crystal transparente','BPA free','Empilháveis'],
 '{"Peças": "10 potes em tamanhos variados (200ml a 2L)", "Material": "Plástico BPA free crystal", "Empilhável": "Sim", "Garantia": "2 anos"}'::jsonb
),

('bbbb0063-0000-4000-8000-000000000000',
 'Escorredor de Louças Nexlar Dobrável Inox',
 'escorredor-loucas-dobravel-inox',
 'NX-ORG-006',
 'Escorredor de louças dobrável em inox. Dobra em segundos para guardar quando não usa.',
 'O Escorredor de Louças Nexlar Dobrável é a solução inteligente para quem tem pouco espaço. Quando não usado, dobra completamente e pode ser guardado em qualquer gaveta. Em inox resistente e fácil de limpar. Bandeja coletora inclusa.',
 'aaaa0008-0000-4000-8000-000000000000',
 99.90, 129.90, 10, 40, 4.6, 56, false, false, false, true,
 ARRAY['Dobrável para guardar','Aço inox resistente','Ocupa pouco espaço','Bandeja coletora inclusa','Fácil de limpar'],
 '{"Material": "Aço inox", "Dobrável": "Sim", "Dimensões expandido": "45x33cm", "Incluso": "Bandeja coletora", "Garantia": "2 anos"}'::jsonb
),

-- ────────────────────────────────────────────────────────────
-- CHURRASCO (4 produtos)
-- ────────────────────────────────────────────────────────────
('bbbb0064-0000-4000-8000-000000000000',
 'Kit Churrasco Nexlar Fire 5 Peças',
 'kit-churrasco-fire-5pc',
 'NX-CHR-001',
 'Kit churrasco 5 peças em aço inox com cabos de madeira. Vem em maleta de transporte.',
 'O Kit Churrasco Nexlar Fire 5 Peças reúne as ferramentas essenciais para o churrasco perfeito. Todos os acessórios em aço inox resistente com cabos de madeira ergonômicos. Vem em maleta de transporte prática.',
 'aaaa0009-0000-4000-8000-000000000000',
 279.90, 359.90, 10, 30, 4.8, 89, true, true, false, true,
 ARRAY['5 peças essenciais','Aço inox + cabo de madeira','Maleta de transporte inclusa','Cabos ergonômicos resistentes ao calor','Fácil de limpar'],
 '{"Peças": "5 (garfo + espátula + pinça + faca + escova de limpeza)", "Material": "Inox + madeira", "Incluso": "Maleta de transporte", "Garantia": "3 anos"}'::jsonb
),

('bbbb0065-0000-4000-8000-000000000000',
 'Grelha Nexlar Fire Inox 60cm',
 'grelha-fire-inox-60cm',
 'NX-CHR-002',
 'Grelha argentina em aço inox 60cm com pés reguláveis. Resistente para uso direto em churrasqueira.',
 'A Grelha Nexlar Fire 60cm em Aço Inox é construída para suportar o calor intenso do churrasco. Com 60cm de comprimento e pés reguláveis para ajustar a altura em relação à brasa, é ideal para grandes quantidades.',
 'aaaa0009-0000-4000-8000-000000000000',
 349.90, 449.90, 10, 20, 4.7, 56, true, false, false, true,
 ARRAY['60cm de comprimento','Aço inox resistente','Pés reguláveis','Suporta calor intenso','Fácil de limpar'],
 '{"Dimensões": "60x40cm", "Material": "Aço inox", "Pés": "Reguláveis", "Garantia": "5 anos"}'::jsonb
),

('bbbb0066-0000-4000-8000-000000000000',
 'Churrasqueira Portátil Nexlar Fire Compact',
 'churrasqueira-portatil-fire-compact',
 'NX-CHR-003',
 'Churrasqueira portátil a carvão em inox. Leve, compacta e pronta para qualquer aventura.',
 'A Churrasqueira Portátil Nexlar Fire Compact é perfeita para praias, camping, piqueniques e churrascos improvisados. Leve e fácil de montar, em aço inox com maleta de transporte inclusa.',
 'aaaa0009-0000-4000-8000-000000000000',
 429.90, 549.90, 10, 15, 4.8, 67, true, true, false, true,
 ARRAY['Portátil e leve','Fácil de montar e desmontar','Aço inox resistente','Maleta de transporte inclusa','Ideal para outdoor'],
 '{"Material": "Aço inox", "Combustível": "Carvão", "Peso": "3.2kg", "Incluso": "Maleta + grelha", "Garantia": "2 anos"}'::jsonb
),

('bbbb0067-0000-4000-8000-000000000000',
 'Espeto Nexlar Fire Inox com Cabo de Madeira',
 'espeto-fire-inox-com-cabo-madeira',
 'NX-CHR-004',
 'Espeto em aço inox 60cm com cabo de madeira ergonômico. Para carnes, legumes e frutos do mar.',
 'O Espeto Nexlar Fire em Aço Inox é o acessório indispensável para o churrasco. Com ponta dupla afiada que prende a carne com firmeza e cabo de madeira que isola o calor das mãos.',
 'aaaa0009-0000-4000-8000-000000000000',
 49.90, 64.90, 10, 80, 4.5, 34, false, false, false, true,
 ARRAY['Aço inox resistente','Ponta dupla afiada','Cabo de madeira isolante','60cm de comprimento','Higienizável'],
 '{"Comprimento": "60cm", "Material": "Inox + madeira", "Uso": "Carnes, legumes, frutos do mar", "Garantia": "2 anos"}'::jsonb
);


-- ============================================================
-- 5. IMAGENS DOS PRODUTOS
--    Cada produto recebe imagem correspondente ao seu tipo.
-- ============================================================
INSERT INTO public.product_images (product_id, url, alt, position) VALUES

-- PANELAS
-- Jogo 5 peças Ceramic Pro (colorido, antiaderente)
('bbbb0001-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556910103-1c02745aae4d?auto=format&fit=crop&w=1000&q=80','Jogo de Panelas Nexlar Ceramic Pro 5 Peças',0),
('bbbb0001-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=1000&q=80','Jogo de Panelas Nexlar Ceramic Pro — detalhe',1),

-- Jogo 7 peças Inox
('bbbb0002-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=1000&q=80','Jogo de Panelas Nexlar Inox Premium 7 Peças',0),
('bbbb0002-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=1000&q=80','Jogo Inox Premium — vista superior',1),

-- Jogo empilhável
('bbbb0003-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=1000&q=80','Jogo de Panelas Empilháveis Nexlar Slim',0),
('bbbb0003-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556910103-1c02745aae4d?auto=format&fit=crop&w=1000&q=80','Slim — cabo removível',1),

-- Panela 24cm
('bbbb0004-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?auto=format&fit=crop&w=1000&q=80','Panela Antiaderente Nexlar Ceramic Pro 24cm',0),
('bbbb0004-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1526256262350-7da7584cf5eb?auto=format&fit=crop&w=1000&q=80','Panela 24cm — com tampa',1),

-- Panela 20cm
('bbbb0005-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1526256262350-7da7584cf5eb?auto=format&fit=crop&w=1000&q=80','Panela Antiaderente Nexlar Ceramic Pro 20cm',0),
('bbbb0005-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?auto=format&fit=crop&w=1000&q=80','Panela 20cm — vista lateral',1),

-- Frigideira 26cm
('bbbb0006-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1534361960057-19f4434a4d4e?auto=format&fit=crop&w=1000&q=80','Frigideira Antiaderente Nexlar Ceramic Pro 26cm',0),
('bbbb0006-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1571167366136-b57e5ee84b27?auto=format&fit=crop&w=1000&q=80','Frigideira 26cm — em uso',1),

-- Frigideira 24cm
('bbbb0007-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1571167366136-b57e5ee84b27?auto=format&fit=crop&w=1000&q=80','Frigideira Antiaderente Nexlar Ceramic Pro 24cm',0),
('bbbb0007-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1534361960057-19f4434a4d4e?auto=format&fit=crop&w=1000&q=80','Frigideira 24cm — detalhe',1),

-- Frigideira ferro fundido
('bbbb0008-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1562967916-eb82221dfb92?auto=format&fit=crop&w=1000&q=80','Frigideira de Ferro Fundido Nexlar Cast 28cm',0),
('bbbb0008-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?auto=format&fit=crop&w=1000&q=80','Ferro fundido — em uso no fogão',1),

-- Caçarola 22cm
('bbbb0009-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1526256262350-7da7584cf5eb?auto=format&fit=crop&w=1000&q=80','Caçarola Nexlar Ceramic Pro 22cm com Tampa',0),
('bbbb0009-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?auto=format&fit=crop&w=1000&q=80','Caçarola 22cm — detalhe tampa de vidro',1),

-- Wok 32cm
('bbbb0010-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1512058564366-18510be2db19?auto=format&fit=crop&w=1000&q=80','Wok Nexlar Antiaderente 32cm',0),
('bbbb0010-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1586190848861-99aa4a171e90?auto=format&fit=crop&w=1000&q=80','Wok — stir-fry em ação',1),

-- Omeleteira
('bbbb0011-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1000&q=80','Omeleteira Nexlar Ceramic Pro 20cm',0),
('bbbb0011-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1534361960057-19f4434a4d4e?auto=format&fit=crop&w=1000&q=80','Omeleteira — preparo de omelete',1),

-- Chaleira inox
('bbbb0012-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1510774463633-28c33ef2c16d?auto=format&fit=crop&w=1000&q=80','Chaleira Inox Nexlar 1.5L',0),
('bbbb0012-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=1000&q=80','Chaleira inox — detalhe bico',1),

-- Chaleira elétrica
('bbbb0013-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1551021794-7cff9bbb1e73?auto=format&fit=crop&w=1000&q=80','Chaleira Elétrica Nexlar Premium 1.7L',0),
('bbbb0013-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1510774463633-28c33ef2c16d?auto=format&fit=crop&w=1000&q=80','Chaleira elétrica — base sem fio',1),

-- Espagueteira
('bbbb0014-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1551218808-94e220e084d2?auto=format&fit=crop&w=1000&q=80','Panela para Espaguete Nexlar Inox 5L',0),
('bbbb0014-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=1000&q=80','Espagueteira — cesto escorredor',1),

-- Grill
('bbbb0015-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?auto=format&fit=crop&w=1000&q=80','Grill Antiaderente Nexlar 28x22cm',0),
('bbbb0015-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1562967916-eb82221dfb92?auto=format&fit=crop&w=1000&q=80','Grill — ranhuras de grelha',1),

-- PANELAS DE PRESSÃO
('bbbb0016-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1595587637401-83ff822bd63b?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Nexlar Inox 4.5L',0),
('bbbb0016-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=1000&q=80','Pressão 4.5L — detalhe válvula',1),

('bbbb0017-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Nexlar Inox 6L',0),
('bbbb0017-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1595587637401-83ff822bd63b?auto=format&fit=crop&w=1000&q=80','Pressão 6L — sistemas de segurança',1),

('bbbb0018-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556910103-1c02745aae4d?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Antiaderente Nexlar Ceramic Pro 4.2L',0),
('bbbb0018-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1595587637401-83ff822bd63b?auto=format&fit=crop&w=1000&q=80','Ceramic Pro pressão — revestimento cerâmico',1),

('bbbb0019-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Nexlar Inox 7L',0),
('bbbb0019-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585515320310-259814833e62?auto=format&fit=crop&w=1000&q=80','Pressão 7L — grande capacidade',1),

('bbbb0020-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1595587637401-83ff822bd63b?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Nexlar VAPT 4.5L',0),
('bbbb0020-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=1000&q=80','VAPT — fechamento interno',1),

('bbbb0021-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Nexlar Inox 3L',0),
('bbbb0021-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1595587637401-83ff822bd63b?auto=format&fit=crop&w=1000&q=80','Pressão 3L — compacta',1),

-- ELETROPORTÁTEIS
('bbbb0022-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909212-d5b604d0c90d?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Elétrica Nexlar Digital 5L',0),
('bbbb0022-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=1000&q=80','Panela elétrica — display digital',1),

('bbbb0023-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=1000&q=80','Cooktop de Indução Nexlar 1 Boca 2200W',0),
('bbbb0023-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909212-d5b604d0c90d?auto=format&fit=crop&w=1000&q=80','Cooktop 1 boca — painel de controle',1),

('bbbb0024-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=1000&q=80','Cooktop de Indução Nexlar 2 Bocas 4200W',0),
('bbbb0024-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?auto=format&fit=crop&w=1000&q=80','Cooktop 2 bocas — controle independente',1),

('bbbb0025-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909212-d5b604d0c90d?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Elétrica Nexlar Pro 6L',0),
('bbbb0025-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=1000&q=80','Pro 6L — tela touchscreen',1),

('bbbb0026-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909212-d5b604d0c90d?auto=format&fit=crop&w=1000&q=80','Panela de Pressão Elétrica Nexlar Basic 3L',0),
('bbbb0026-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?auto=format&fit=crop&w=1000&q=80','Basic 3L — compacta',1),

-- LIXEIRAS
('bbbb0027-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Lixeira com Pedal Nexlar Inox 25L',0),
('bbbb0027-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Lixeira inox 25L — pedal silencioso',1),

('bbbb0028-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Lixeira com Pedal Nexlar Slim 12L Branca',0),
('bbbb0028-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Slim 12L — design compacto',1),

('bbbb0029-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Lixeira Basculante Nexlar 8L Branca',0),
('bbbb0029-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Basculante 8L — tampa automática',1),

('bbbb0030-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Lixeira Basculante Nexlar 15L Preta',0),
('bbbb0030-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Basculante 15L — cor preta',1),

('bbbb0031-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Lixeira com Sensor Nexlar Inox 10L',0),
('bbbb0031-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Sensor inox — abertura automática',1),

('bbbb0032-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Lixeira Reciclável Nexlar 2 Compartimentos 50L',0),
('bbbb0032-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Reciclável 50L — dois compartimentos',1),

('bbbb0033-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Lixeira com Pedal Nexlar Inox 40L',0),
('bbbb0033-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Inox 40L — grande capacidade',1),

('bbbb0034-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1613545325278-f24b0cae1224?auto=format&fit=crop&w=1000&q=80','Lixeira para Banheiro Nexlar com Pedal 5L',0),
('bbbb0034-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1585914924626-15adac1e6402?auto=format&fit=crop&w=1000&q=80','Banheiro 5L — slim',1),

-- UTENSÍLIOS DE COZINHA
('bbbb0035-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=1000&q=80','Kit Utensílios Silicone Nexlar 6 Peças Preto',0),
('bbbb0035-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909211-36987daf7b4d?auto=format&fit=crop&w=1000&q=80','Kit silicone 6 peças — detalhe',1),

('bbbb0036-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909211-36987daf7b4d?auto=format&fit=crop&w=1000&q=80','Kit Utensílios Silicone Nexlar 8 Peças Bege',0),
('bbbb0036-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=1000&q=80','Kit bege 8 peças — suporte de bambu',1),

('bbbb0037-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909211-36987daf7b4d?auto=format&fit=crop&w=1000&q=80','Kit Utensílios Inox Nexlar 5 Peças',0),
('bbbb0037-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=1000&q=80','Kit inox 5 peças — detalhes',1),

('bbbb0038-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1594834749064-e2a3e1b7dfa7?auto=format&fit=crop&w=1000&q=80','Escorredor de Macarrão Nexlar Inox 28cm',0),
('bbbb0038-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1551218808-94e220e084d2?auto=format&fit=crop&w=1000&q=80','Escorredor — em uso',1),

('bbbb0039-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556688517-7c27a4756dd0?auto=format&fit=crop&w=1000&q=80','Tábua de Corte Nexlar Bambu 40x25cm',0),
('bbbb0039-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1575318634028-6a0cfcb60c59?auto=format&fit=crop&w=1000&q=80','Tábua bambu — em uso',1),

('bbbb0040-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1575318634028-6a0cfcb60c59?auto=format&fit=crop&w=1000&q=80','Tábua de Corte Nexlar Bambu Grande 50x30cm',0),
('bbbb0040-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556688517-7c27a4756dd0?auto=format&fit=crop&w=1000&q=80','Tábua grande — espaço de trabalho',1),

('bbbb0041-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909211-36987daf7b4d?auto=format&fit=crop&w=1000&q=80','Concha Inox Nexlar 30cm',0),
('bbbb0041-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=1000&q=80','Concha — detalhe cabo',1),

('bbbb0042-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=1000&q=80','Espátula Silicone Nexlar Premium',0),
('bbbb0042-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909211-36987daf7b4d?auto=format&fit=crop&w=1000&q=80','Espátula — detalhe silicone',1),

('bbbb0043-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1594834749064-e2a3e1b7dfa7?auto=format&fit=crop&w=1000&q=80','Peneira Inox Nexlar 22cm',0),
('bbbb0043-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1551218808-94e220e084d2?auto=format&fit=crop&w=1000&q=80','Peneira — malha fina',1),

('bbbb0044-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909211-36987daf7b4d?auto=format&fit=crop&w=1000&q=80','Escorredor de Louças Nexlar Inox com Bandeja',0),
('bbbb0044-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=1000&q=80','Escorredor louças — bandeja coletora',1),

-- MESA & TALHERES
('bbbb0045-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1573821663912-569905455b1c?auto=format&fit=crop&w=1000&q=80','Faqueiro Nexlar Inox 24 Peças',0),
('bbbb0045-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1579781354160-d9e12e4e2a8a?auto=format&fit=crop&w=1000&q=80','Faqueiro 24 peças — caixa presentável',1),

('bbbb0046-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1579781354160-d9e12e4e2a8a?auto=format&fit=crop&w=1000&q=80','Faqueiro Nexlar Premium Inox 42 Peças',0),
('bbbb0046-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1573821663912-569905455b1c?auto=format&fit=crop&w=1000&q=80','Premium 42 peças — peças de serviço',1),

('bbbb0047-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1547592166-23ac45744acd?auto=format&fit=crop&w=1000&q=80','Faqueiro Nexlar Inox 16 Peças',0),
('bbbb0047-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1573821663912-569905455b1c?auto=format&fit=crop&w=1000&q=80','Faqueiro 16 peças — detalhe',1),

('bbbb0048-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?auto=format&fit=crop&w=1000&q=80','Bandeja Retangular Inox Nexlar 36cm',0),
('bbbb0048-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1608835291093-394b0c943a75?auto=format&fit=crop&w=1000&q=80','Bandeja 36cm — servindo',1),

('bbbb0049-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1608835291093-394b0c943a75?auto=format&fit=crop&w=1000&q=80','Bandeja Oval Inox Nexlar 30cm',0),
('bbbb0049-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?auto=format&fit=crop&w=1000&q=80','Bandeja oval — detalhe',1),

('bbbb0050-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1614178453871-7f9dc2048b42?auto=format&fit=crop&w=1000&q=80','Conjunto de Bowls Inox Nexlar 4 Peças',0),
('bbbb0050-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1573821663912-569905455b1c?auto=format&fit=crop&w=1000&q=80','Bowls — empilhados',1),

('bbbb0051-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?auto=format&fit=crop&w=1000&q=80','Porta-guardanapos Inox Nexlar',0),
('bbbb0051-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1573821663912-569905455b1c?auto=format&fit=crop&w=1000&q=80','Porta-guardanapos — mesa posta',1),

-- ASSADEIRAS & FORMAS
('bbbb0052-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=1000&q=80','Assadeira Antiaderente Nexlar 40x28cm',0),
('bbbb0052-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1614148644219-5d36f6f011fc?auto=format&fit=crop&w=1000&q=80','Assadeira 40x28cm — assando carne',1),

('bbbb0053-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1614148644219-5d36f6f011fc?auto=format&fit=crop&w=1000&q=80','Assadeira Antiaderente Nexlar 35x24cm',0),
('bbbb0053-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=1000&q=80','Assadeira 35x24cm — tamanho doméstico',1),

('bbbb0054-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555944956-30e4b9b8df5a?auto=format&fit=crop&w=1000&q=80','Forma de Bolo Redonda Nexlar 25cm',0),
('bbbb0054-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=1000&q=80','Forma bolo — bordas removíveis',1),

('bbbb0055-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=1000&q=80','Kit Assadeiras Nexlar 3 Peças',0),
('bbbb0055-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1614148644219-5d36f6f011fc?auto=format&fit=crop&w=1000&q=80','Kit 3 peças — tamanhos variados',1),

('bbbb0056-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1584697964155-b5f65a95ccd7?auto=format&fit=crop&w=1000&q=80','Forma para Lasanha Nexlar Antiaderente 40x30cm',0),
('bbbb0056-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=1000&q=80','Forma lasanha — profundidade alta',1),

('bbbb0057-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1484980859492-3f2d1e49f7eb?auto=format&fit=crop&w=1000&q=80','Forma para Pão Nexlar Antiaderente',0),
('bbbb0057-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555944956-30e4b9b8df5a?auto=format&fit=crop&w=1000&q=80','Forma pão — resultado perfeito',1),

-- ORGANIZAÇÃO
('bbbb0058-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=1000&q=80','Porta-temperos Nexlar Inox 6 Peças com Suporte',0),
('bbbb0058-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1493606278519-11aa9f86e40a?auto=format&fit=crop&w=1000&q=80','Porta-temperos — organizado na bancada',1),

('bbbb0059-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1493606278519-11aa9f86e40a?auto=format&fit=crop&w=1000&q=80','Cesto Organizador Nexlar com Tampa 5L',0),
('bbbb0059-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1584622781564-1d987f7333c1?auto=format&fit=crop&w=1000&q=80','Cesto 5L — empilhável',1),

('bbbb0060-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=1000&q=80','Porta-rolos de Papel Toalha Nexlar Inox',0),
('bbbb0060-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1493606278519-11aa9f86e40a?auto=format&fit=crop&w=1000&q=80','Porta-rolos — bancada organizada',1),

('bbbb0061-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1584622781564-1d987f7333c1?auto=format&fit=crop&w=1000&q=80','Organizador de Gaveta Nexlar Bambu 3 Peças',0),
('bbbb0061-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1493606278519-11aa9f86e40a?auto=format&fit=crop&w=1000&q=80','Organizador gaveta — divisórias',1),

('bbbb0062-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1493606278519-11aa9f86e40a?auto=format&fit=crop&w=1000&q=80','Potes Herméticos Nexlar Clear 10 Peças',0),
('bbbb0062-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=1000&q=80','Potes herméticos — pantry organizado',1),

('bbbb0063-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1556909211-36987daf7b4d?auto=format&fit=crop&w=1000&q=80','Escorredor de Louças Nexlar Dobrável Inox',0),
('bbbb0063-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1565114616849-60c2f5ef9df7?auto=format&fit=crop&w=1000&q=80','Escorredor dobrável — compacto',1),

-- CHURRASCO
('bbbb0064-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555939594-58d7cb561ad1?auto=format&fit=crop&w=1000&q=80','Kit Churrasco Nexlar Fire 5 Peças',0),
('bbbb0064-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?auto=format&fit=crop&w=1000&q=80','Kit churrasco — ferramentas inox',1),

('bbbb0065-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?auto=format&fit=crop&w=1000&q=80','Grelha Nexlar Fire Inox 60cm',0),
('bbbb0065-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555939594-58d7cb561ad1?auto=format&fit=crop&w=1000&q=80','Grelha 60cm — pés reguláveis',1),

('bbbb0066-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555939594-58d7cb561ad1?auto=format&fit=crop&w=1000&q=80','Churrasqueira Portátil Nexlar Fire Compact',0),
('bbbb0066-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?auto=format&fit=crop&w=1000&q=80','Churrasqueira portátil — outdoor',1),

('bbbb0067-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?auto=format&fit=crop&w=1000&q=80','Espeto Nexlar Fire Inox com Cabo de Madeira',0),
('bbbb0067-0000-4000-8000-000000000000','https://images.unsplash.com/photo-1555939594-58d7cb561ad1?auto=format&fit=crop&w=1000&q=80','Espeto — ponta dupla afiada',1);
