import type { Banner, Category, Product } from "./types";

export const CATEGORIES: Category[] = [
  {
    "id": "cat-panelas",
    "name": "Panelas",
    "slug": "panelas",
    "description": "Jogos de panelas antiaderentes, cerâmica e inox, frigideiras, caçarolas, woks e chaleiras.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/286250/1 - 7135_200.png?v=639234553709200000",
    "position": 1
  },
  {
    "id": "cat-pressao",
    "name": "Panelas de Pressão",
    "slug": "panelas-de-pressao",
    "description": "Panelas de pressão com fechamento externo, interno e linha cerâmica antiaderente.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/285300/8001_100--1280x1280_1.png?v=639198186592800000",
    "position": 2
  },
  {
    "id": "cat-eletro",
    "name": "Eletroportáteis",
    "slug": "eletroportateis",
    "description": "Panelas de pressão elétricas digitais, fritadeiras e cooktops de indução portáteis.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/287081/5,4L - Pressure Vanilla.png?v=639239403720670000",
    "position": 3
  },
  {
    "id": "cat-lixeiras",
    "name": "Lixeiras",
    "slug": "lixeiras",
    "description": "Lixeiras com pedal em inox, basculantes, com sensor de movimento e para coleta seletiva.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/287727/Lixeira 5 L - Matte Inox.png?v=639251525655300000",
    "position": 4
  },
  {
    "id": "cat-utensilios",
    "name": "Utensílios de Cozinha",
    "slug": "utensilios-de-cozinha",
    "description": "Kits de silicone alimentício, aço inox 18/10, tábuas de corte em bambu e escorredores.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/286136/porta_condimentos_duplo_em_bambu_coza_brisa_site_Brinox_1.webp?v=639234444909900000",
    "position": 5
  },
  {
    "id": "cat-mesa",
    "name": "Mesa & Talheres",
    "slug": "mesa-e-talheres",
    "description": "Faqueiros completos em inox, bandejas de servir, bowls e porta-guardanapos.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/285731/organizador-de-geladeira-coza-dry-3-2-litros-com-2-cestos_1.jpg?v=639227476100100000",
    "position": 6
  },
  {
    "id": "cat-assadeiras",
    "name": "Assadeiras & Formas",
    "slug": "assadeiras-e-formas",
    "description": "Assadeiras antiaderentes, formas de bolo redondas, para lasanha e para pão.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/287550/Gemini_Generated_Image_m6tbdkm6tbdkm6tb.png?v=639246381108670000",
    "position": 7
  },
  {
    "id": "cat-organizacao",
    "name": "Organização",
    "slug": "organizacao",
    "description": "Porta-temperos giratórios, potes herméticos em acrílico crystal e organizadores de pia.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/283773/escorredor-16-pecas-cabo-plastico-dispenser-preto_1.jpg?v=639114391702430000",
    "position": 8
  },
  {
    "id": "cat-churrasco",
    "name": "Churrasco",
    "slug": "churrasco",
    "description": "Kits de churrasco com maleta, grelhas argentinas em inox e churrasqueiras portáteis.",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/273628/kit-churrasco-brinox-2-pecas-faca-chaira-aco-inoxidavel-cabo-branco-linha-precision.jpg?v=638513885972530000",
    "position": 9
  }
];

export const BANNERS: Banner[] = [
  {
    "id": "banner-1",
    "title": "Antiaderente cerâmico que dura anos",
    "subtitle": "Linha Ceramic Life Pro com fundo triplo, revestimento cerâmico livre de PFOA e compatibilidade total com indução.",
    "eyebrow": "LINHA CERAMIC LIFE",
    "cta_label": "Ver panelas",
    "cta_url": "/categoria/panelas",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/286250/1 - 7135_200.png?v=639234553709200000",
    "position": 1,
    "active": true
  },
  {
    "id": "banner-2",
    "title": "Pressão com segurança máxima",
    "subtitle": "Panelas de pressão Nexlar com 5 sistemas de segurança certificados, aço inox e linha cerâmica antiaderente.",
    "eyebrow": "PANELAS DE PRESSÃO",
    "cta_label": "Ver panelas de pressão",
    "cta_url": "/categoria/panelas-de-pressao",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/285300/8001_100--1280x1280_1.png?v=639198186592800000",
    "position": 2,
    "active": true
  },
  {
    "id": "banner-3",
    "title": "Lixeiras em Aço Inox com Pedal",
    "subtitle": "Linha Spin e Matte com acabamento escovado anti-marcas, tampa soft-close e máxima higiene para sua casa.",
    "eyebrow": "LIXEIRAS & HIGIENE",
    "cta_label": "Ver lixeiras",
    "cta_url": "/categoria/lixeiras",
    "image_url": "https://brinox.vteximg.com.br/arquivos/ids/287727/Lixeira 5 L - Matte Inox.png?v=639251525655300000",
    "position": 3,
    "active": true
  }
];

export const PRODUCTS: Product[] = [
  {
    "id": "prod-994242269",
    "name": "Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa",
    "slug": "jogo-de-panelas-nexlar-10-pecas-ceramic-life-floria-rosa",
    "sku": "NX-7135200",
    "short_description": "Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa: Delicadeza, Praticidade e Alta Performance na Sua Cozinha\r\n\r\nLeve personalidade, c...",
    "description": "Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa: Delicadeza, Praticidade e Alta Performance na Sua Cozinha\r\n\r\nLeve personalidade, charme e eficiência para sua rotina com o Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa. Ideal para quem deseja unir beleza, resistência e praticidade em um só conjunto, este jogo transforma qualquer cozinha com o toque suave da cor rosa e a combinação de qualidade e tecnologia NEXLAR.\r\n\r\nDiferenciais Que Fazem a Diferença\r\n\r\n\r\nEstrutura em alumínio: Aquecimento rápido e distribuição uniforme do calor, garantindo cozimento homogêneo e economia de tempo e energia.\r\nRevestimento cerâmico Pro Ceramic: Livre de PFOA, proporciona preparo saudável, com menos óleo, além de liberar facilmente os alimentos e facilitar a limpeza.\r\nAcabamento exclusivo: Cor externa rosa e interior rosa com pintas brancas e pretas, agregando delicadeza e um visual moderno à sua cozinha.\r\nSegurança e conforto: Cabos e poméis em baquelite preto, com isolamento térmico para manuseio tranquilo mesmo durante o preparo dos alimentos.\r\nPraticidade no acompanhamento: Tampas de vidro temperado com saída para vapor, permitindo visualizar o cozimento sem perder o calor e garantir receitas sempre no ponto.\r\nUtensílios ideais para o dia a dia: Acompanha colher para arroz, concha terrina e espátula perfurada em nylon preto, que não danificam o antiaderente e suportam altas temperaturas.\r\nCompatibilidade versátil: Perfeito para fogões a gás, elétricos e vitrocerâmicos.\r\n\r\n\r\nCaracterísticas Técnicas\r\n\r\n\r\nEstrutura: Alumínio\r\nRevestimento: Cerâmico Pro Ceramic (sem PFOA)\r\nCor externa: Rosa\r\nCor interna: Rosa com pintas brancas e pretas\r\nCabos e poméis: Baquelite preto, ergonômicos e seguros\r\nTampas: Vidro temperado com saída de vapor\r\nUtensílios: Nylon, resistentes ao calor\r\nCompatibilidade: Fogões a gás, elétricos e vitrocerâmicos\r\n\r\n\r\nComposição\r\n\r\n\r\n1 Panela Ø16 x 7 cm – 1,3 L\r\n1 Panela Ø18 x 7 cm – 1,8 L\r\n1 Caçarola Ø18 x 7 cm – 1,8 L\r\n1 Caçarola Ø20 x 7,5 cm – 2,3 L\r\n1 Fervedor Ø12 x 9,5 cm – 1,1 L\r\n1 Frigideira Ø18 x 3 cm – 0,6 L\r\n1 Frigideira Ø20 x 3 cm – 0,9 L\r\n1 Colher para arroz em nylon preto\r\n1 Concha terrina em nylon preto\r\n1 Espátula perfurada em nylon preto\r\n\r\n\r\nRenove Seu Espaço e Suas Receitas com Funcionalidade e Elegância!\r\n\r\n \r\nGaranta já o Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa e prepare suas receitas favoritas com mais estilo, segurança e performance. Traga modernidade, delicadeza e praticidade para sua cozinha e encante-se com cada detalhe dessa coleção exclusiva!",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 399.99,
    "compare_at_price": 999.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 111,
    "free_shipping": true,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:32.175Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7135200",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242269-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286250/1 - 7135_200.png?v=639234553709200000",
        "alt": "Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa",
        "position": 0
      },
      {
        "id": "img-994242269-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286251/2- 7135_200.png?v=639234553709200000",
        "alt": "Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa",
        "position": 1
      },
      {
        "id": "img-994242269-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286252/3- 7135_200.png?v=639234553709330000",
        "alt": "Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa",
        "position": 2
      },
      {
        "id": "img-994242269-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286253/4 - 7135_200.png?v=639234553709330000",
        "alt": "Jogo de Panelas NEXLAR 10 Peças Ceramic Life Floria Rosa",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242258",
    "name": "Jogo de Panelas com Indução NEXLAR Ceramic Life Nox 5 Peças Cinza",
    "slug": "jogo-de-panelas-com-inducao-nexlar-ceramic-life-nox-5-pecas-cinza",
    "sku": "NX-4800200",
    "short_description": "Jogo de Panelas com Indução NEXLAR Ceramic Life Nox 5 Peças CinzaDescriçãoTecnologia, versatilidade e sofisticação para elevar sua experiênc...",
    "description": "Jogo de Panelas com Indução NEXLAR Ceramic Life Nox 5 Peças CinzaDescriçãoTecnologia, versatilidade e sofisticação para elevar sua experiência na cozinha. O Jogo de Panelas NEXLAR Ceramic Life Nox 5 Peças na cor Cinza foi desenvolvido para oferecer alto desempenho térmico, inclusive em fogões por indução, garantindo praticidade e eficiência no preparo das suas receitas.Detalhes que fazem a diferençaCom estrutura em alumínio, proporciona aquecimento rápido e distribuição uniforme do calor, assegurando cozimento homogêneo. O revestimento cerâmico antiaderente Pro Ceramic é livre de PFOA, permitindo cozinhar com menos óleo e facilitando a limpeza.Conta com fundo de indução, tornando o conjunto compatível com fogões por indução, além de fogões a gás, elétricos e vitrocerâmicos. Seu acabamento moderno na cor cinza agrega elegância e combina com diferentes estilos de cozinha.As tampas e cabos foram desenvolvidos para oferecer praticidade e segurança no manuseio, tornando o uso diário mais confortável.Características Técnicas• Linha: Ceramic Life Nox• Quantidade de peças: 5• Material: Estrutura em alumínio• Revestimento interno: Cerâmico Pro Ceramic (livre de PFOA)• Fundo: Compatível com indução• Cor: Cinza• Compatível com fogões: indução, gás, elétrico e vitrocerâmicoComposição:Caçarola com Tampa Ø 24 x 10,8 cm - 4,7 L  Caçarola com Tampa Ø 20 x 9,5 cm - 2,8 L  Panela com Tampa Ø 18 x 8 cm - 2 L  Fervedor Ø 14 x 12,5 - 1,75 L  Frigideira Ø 24 x 5 cm - 1,9 LLeve mais tecnologia, eficiência e sofisticação para sua cozinha com o Jogo de Panelas NEXLAR Ceramic Life Nox 5 Peças Cinza.",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 599.99,
    "compare_at_price": 999.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 42,
    "free_shipping": true,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:32.176Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4800200",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242258-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284634/A--Nox---1280x1280-1.png?v=639161016676830000",
        "alt": "Jogo de Panelas com Indução NEXLAR Ceramic Life Nox 5 Peças Cinza",
        "position": 0
      },
      {
        "id": "img-994242258-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284635/A--Nox---1280x1280-2.png?v=639161016677470000",
        "alt": "Jogo de Panelas com Indução NEXLAR Ceramic Life Nox 5 Peças Cinza",
        "position": 1
      },
      {
        "id": "img-994242258-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284636/A--Nox---1280x1280-3.png?v=639161016677470000",
        "alt": "Jogo de Panelas com Indução NEXLAR Ceramic Life Nox 5 Peças Cinza",
        "position": 2
      },
      {
        "id": "img-994242258-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284637/A--Nox---1280x1280-4.png?v=639161016677470000",
        "alt": "Jogo de Panelas com Indução NEXLAR Ceramic Life Nox 5 Peças Cinza",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242260",
    "name": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 6 Peças",
    "slug": "jogo-de-panelas-nexlar-city-em-aco-inox-e-fundo-triplo-6-pecas",
    "sku": "NX-4828111",
    "short_description": "Jogo de Panelas NEXLAR City em Aço Inox: fundo triplo para um cozimento uniformeO Jogo de Panelas NEXLAR City reúne aço inoxidável de alta r...",
    "description": "Jogo de Panelas NEXLAR City em Aço Inox: fundo triplo para um cozimento uniformeO Jogo de Panelas NEXLAR City reúne aço inoxidável de alta resistência e a tecnologia de fundo triplo em um conjunto de 6 peças pensado para quem cozinha todos os dias. A base em três camadas — aço inox, alumínio e aço inox — distribui o calor de forma homogênea, acelera o cozimento e permite manter o fogo baixo, economizando energia. Por ser fabricado em aço inox, o conjunto não libera resíduos nas receitas, pode ir ao forno para gratinar ou finalizar pratos e ainda inclui uma peça Cozi Vapore para cozimento a vapor. O acabamento preserva o brilho por muito mais tempo e agrega sofisticação à cozinha e à mesa.Destaques do Jogo de Panelas NEXLAR CityMais saudável: por ser fabricado em aço inoxidável, o conjunto não libera resíduos nas receitas.Fácil de usar: prático para todas as receitas, funciona em qualquer tipo de fogão — gás, elétrico, vitrocerâmico e indução — e conta com tampa de aço inox com saída de vapor e encaixe perfeito.Mais durável: o aço inox NEXLAR é uma matéria-prima nobre e resistente, que preserva a beleza do conjunto por muito mais tempo.Economiza tempo e energia: o fundo triplo (aço inox + alumínio + aço inox) distribui o calor uniformemente e acelera o cozimento; como dispensa fogo alto, consome menos energia. Toda em aço inox, também vai ao forno até 260 °C.Fácil de limpar: para deixar as peças brilhando, bastam água, detergente e uma esponja macia. Também pode ir à máquina de lavar.Perguntas frequentes sobre o Jogo de Panelas NEXLAR CityO Jogo de Panelas NEXLAR City pode ser usado em cooktop de indução?Sim. Graças ao fundo triplo, o conjunto funciona em qualquer tipo de fogão: gás, elétrico, vitrocerâmico e indução.O que é o fundo triplo e qual a vantagem?O fundo triplo é uma base formada por três camadas — aço inox, alumínio e aço inox. Essa construção distribui o calor de maneira uniforme, acelera o cozimento e permite manter o fogo baixo, o que economiza energia.As alças esquentam durante o cozimento?Sim. Por serem de aço inox, as alças aquecem durante o uso. Recomenda-se manuseá-las com luvas ou pegador.As panelas de inox grudam os alimentos?O aço inoxidável não possui revestimento antiaderente. Para evitar que os alimentos grudem, use calor brando e aqueça a panela antes de adicionar o óleo ou a manteiga.As peças podem ir ao forno?Sim. Por ser toda em aço inox, a panela pode ir ao forno para gratinar ou finalizar pratos, na temperatura máxima de 260 °C (pode haver leve mudança na coloração).Posso lavar na máquina de lavar louça?Sim. As peças podem ser lavadas na máquina. Para preservar o brilho, recomenda-se enxaguar com água quente e secar logo após a lavagem.Quais peças acompanham o jogo de 6 peças?O conjunto é formado por 6 peças em aço inox: panela com tampa de 1,5 L (Ø16 cm), panela com tampa de 2 L (Ø18 cm), caçarola com tampa de 2,9 L (Ø20 cm), Cozi Vapore de 2,9 L (Ø20 cm) para cozimento a vapor, frigideira de 1,3 L (Ø20 cm) e fervedor/leiteira de 1,75 Litros (Ø14 cm).Cuidados e modo de usoAntes do primeiro usoRemova eventuais etiquetas e lave as peças com água quente e detergente.A capacidade máxima recomendada para cozimento é de 3/4 da capacidade total da peça.Durante o preparoUse uma fonte de calor brando: o fundo triplo distribui o calor de forma uniforme e dispensa o fogo alto, economizando energia.No fogão a gás, a chama não deve ultrapassar a base da peça. Na chapa elétrica, o diâmetro da chapa deve ser igual ou inferior ao da peça.Dissolva o sal em água fervendo ou junto com os alimentos, mexendo os ingredientes no início do cozimento.As alças de aço inox aquecem durante o cozimento; utilize luvas no manuseio.Não aqueça alimentos empilhando uma peça sobre outra de mesmo diâmetro: o procedimento cria vácuo, impede a retirada e é perigoso.Se a tampa travar pelo efeito do vácuo durante o resfriamento, basta puxá-la ou aquecê-la novamente até neutralizar o efeito.Nunca deixe a peça vazia sobre a fonte de calor e apoie peças quentes apenas em superfícies resistentes ao calor.No forno, respeite a temperatura máxima de 260 °C (pode haver leve mudança na coloração).Limpeza e conservaçãoLave com água, detergente e esponja macia. Se preferir, use a máquina de lavar.Após a lavagem, enxágue com água quente e seque imediatamente: o cloro e as substâncias presentes na água podem manchar o aço inox.Alimentos com amido, como massas e arroz, podem deixar manchas na parte interna. Remova-as com um pano umedecido em suco de limão ou vinagre, ou utilize a Pasta para Polir e Remover Manchas NEXLAR, disponível nos principais pontos de venda.Evite deixar alimentos parados na peça por muito tempo; o sal também pode provocar manchas.Especificações técnicasComposição do conjunto (6 peças)Panela com tampa — Ø16 x 7,6 cm — 1,5 LPanela com tampa — Ø18 x 8 cm — 2 LCaçarola com tampa — Ø20 x 9,5 cm — 2,9 LCozi Vapore (cozimento a vapor) — Ø20 x 9,5 cm — 2,9 LFrigideira — Ø20 x 4,6 cm — 1,3 LFervedor/LeiteiraMarcaNEXLARLinhaCityMaterialAço inoxidávelBaseFundo triplo (aço inox + alumínio + aço inox)CompatibilidadeGás, elétrico, vitrocerâmico e induçãoTampaAço inox, com saída de vapor e encaixe perfeitoAlçasAço inox (aquecem durante o uso — utilizar luvas)Uso no fornoSim, até 260 °CCapacidade de cozimentoAté 3/4 da capacidade total de cada peçaLava-louçasSimGarantia90 dias contra defeitos de fabricação ou víciosCom o Jogo de Panelas NEXLAR City, o preparo das receitas do dia a dia fica mais prático, saudável e eficiente, porque, para a NEXLAR, especial é estar presente.",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 799,
    "compare_at_price": 799.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 43,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:32.177Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4828111",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242260-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287311/4828_111-1280x1280_1.png?v=639240363608530000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 6 Peças",
        "position": 0
      },
      {
        "id": "img-994242260-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287312/4828_111-1280x1280_2.png?v=639240363608530000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 6 Peças",
        "position": 1
      },
      {
        "id": "img-994242260-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287313/4828_111-1280x1280_3.png?v=639240363608700000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 6 Peças",
        "position": 2
      },
      {
        "id": "img-994242260-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287314/4828_111-1280x1280_4.png?v=639240363608700000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 6 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242187",
    "name": "Jogo de Panelas NEXLAR Primea Antiaderente Ceramic Life 5 Peças Cappuccino",
    "slug": "jogo-de-panelas-nexlar-primea-antiaderente-ceramic-life-5-pecas-cappuccino",
    "sku": "NX-7261100",
    "short_description": "Jogo de Panelas NEXLAR Primea Antiaderente Ceramic Life 5 Peças Cappuccino — proteção antibacteriana para uma cozinha mais saudávelO Jogo de...",
    "description": "Jogo de Panelas NEXLAR Primea Antiaderente Ceramic Life 5 Peças Cappuccino — proteção antibacteriana para uma cozinha mais saudávelO Jogo de Panelas NEXLAR Primea traz a tecnologia que faz toda a diferença na sua rotina: revestimento antiaderente Pro Ceramic com aditivo antibacteriano, desenvolvido para reduzir ativamente a proliferação de bactérias durante o preparo dos alimentos. Mais segurança alimentar, mais higiene e a tranquilidade de saber que cada refeição é feita em superfícies que trabalham a favor da sua saúde. Tudo isso em um conjunto bonito, leve e sofisticado em tom Cappuccino — pensado para quem leva a sério tanto o sabor quanto a saúde da família.O Grande Diferencial é o Aditivo AntibacterianoA proliferação de bactérias é um dos maiores riscos invisíveis na cozinha. O revestimento Pro Ceramic da linha Primea conta com aditivo antibacteriano integrado à própria superfície de cocção — não é uma camada que se desgasta com o tempo, mas uma proteção que atua continuamente, reduzindo a presença de microrganismos durante todo o ciclo de uso da panela. Combinado à formulação livre de PFOA, o resultado é uma superfície ao mesmo tempo segura, antiaderente e ativa na proteção da família.Por que escolher o Jogo Primea Ceramic Life NEXLARAlém da proteção antibacteriana, o revestimento Pro Ceramic é altamente antiaderente: alimentos não grudam, é possível cozinhar com menos óleo e a limpeza se torna rápida e simples. Produzidas em alumínio, as peças são leves, fáceis de manusear e ideais para o preparo das receitas do dia a dia. Os cabos e poméis com acabamento soft-touch amadeirado oferecem ergonomia e charme. As tampas flat em vidro temperado com borda metálica e saída para vapor permitem acompanhar o preparo sem perder umidade nem sabor.Diferenciais do Jogo Primea Ceramic Life 5 Peças NEXLARAditivo antibacteriano integrado ao revestimento: proteção contínua contra a proliferação de bactérias.Livre de PFOA: cozinha mais saudável e segura para sua família.Revestimento antiaderente Pro Ceramic: alimentos não grudam e limpeza facilitada.Estrutura em alumínio: leveza e praticidade no manuseio.Cabos e poméis com acabamento soft-touch amadeirado: charme e ergonomia.Tampas flat em vidro temperado: visual moderno e controle visual do preparo.Borda metálica nas tampas e saída para vapor: durabilidade e funcionalidade.Acabamento externo Cappuccino e interno Vanilla pontilhado: design acolhedor e sofisticado.Composição do jogo1 Caçarola com tampa Ø 20 x 9,5 cm1 Panela com tampa Ø 16 x 8 cm1 Panela com tampa Ø 18 x 9 cm1 Fervedor Ø 12 x 12 cm1 Frigideira Ø 20 x 3,8 cmFicha técnicaProduto: Jogo de PanelasLinha: Primea Ceramic Life NEXLARCor externa: CappuccinoCor interna: Vanilla com pontinhas CappuccinoMaterial: AlumínioRevestimento: Antiaderente cerâmico Pro Ceramic com aditivo antibacteriano (livre de PFOA)Cabos: Baquelite com revestimento soft-touch amadeiradoTampas: Flat em vidro temperado com borda metálica e saída para vaporCura do revestimento (antes do primeiro uso)Antes de utilizar, realize a cura para potencializar a vida útil do revestimento antibacteriano:Unte a parte interna com óleo ou qualquer outro tipo de gordura.Leve o produto ao fogo baixo até aquecer o conteúdo e deixe esfriar.Descarte o conteúdo e repita a lavagem e secagem para eliminar qualquer resíduo.Como cuidar do seu Jogo Primea NEXLARApós o uso, evite choques térmicos (não jogue água fria na panela quente).Lave à mão, com água morna, esponja macia e sabão neutro ou detergente.Se for necessário esfregar, utilize apenas materiais não abrasivos.Use utensílios de silicone, madeira ou nylon — nunca utensílios metálicos.Seque bem antes de empilhar para preservar o acabamento.Cozinha mais saudável com proteção antibacteriana: Jogo de Panelas NEXLAR Primea Ceramic Life 5 Peças Cappuccino.",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 449.99,
    "compare_at_price": 599.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 201,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:32.177Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7261100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242187-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284712/7261-100_Primea-1280x1280_1.png?v=639189406770930000",
        "alt": "Jogo de Panelas NEXLAR Primea Antiaderente Ceramic Life 5 Peças Cappuccino",
        "position": 0
      },
      {
        "id": "img-994242187-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284713/7261-100_Primea-1280x1280_2.png?v=639189406771400000",
        "alt": "Jogo de Panelas NEXLAR Primea Antiaderente Ceramic Life 5 Peças Cappuccino",
        "position": 1
      },
      {
        "id": "img-994242187-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284714/7261-100_Primea-1280x1280_3.png?v=639189406771400000",
        "alt": "Jogo de Panelas NEXLAR Primea Antiaderente Ceramic Life 5 Peças Cappuccino",
        "position": 2
      },
      {
        "id": "img-994242187-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284715/7261-100_Primea-1280x1280_4.png?v=639189406771400000",
        "alt": "Jogo de Panelas NEXLAR Primea Antiaderente Ceramic Life 5 Peças Cappuccino",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242259",
    "name": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 5 Peças",
    "slug": "jogo-de-panelas-nexlar-city-em-aco-inox-e-fundo-triplo-5-pecas",
    "sku": "NX-4828110",
    "short_description": "Jogo de Panelas NEXLAR City em Aço Inox: fundo triplo para um cozimento uniformeO Jogo de Panelas NEXLAR City reúne aço inoxidável de alta r...",
    "description": "Jogo de Panelas NEXLAR City em Aço Inox: fundo triplo para um cozimento uniformeO Jogo de Panelas NEXLAR City reúne aço inoxidável de alta resistência e a tecnologia de fundo triplo em um conjunto de 5 peças pensado para quem cozinha todos os dias. A base em três camadas — aço inox, alumínio e aço inox — distribui o calor de forma homogênea, acelera o cozimento e permite manter o fogo baixo, economizando energia. Por ser fabricado em aço inox, o conjunto não libera resíduos nas receitas, pode ir ao forno para gratinar ou finalizar pratos e ainda inclui uma peça Cozi Vapore para cozimento a vapor. O acabamento preserva o brilho por muito mais tempo e agrega sofisticação à cozinha e à mesa.Destaques do Jogo de Panelas NEXLAR CityMais saudável: por ser fabricado em aço inoxidável, o conjunto não libera resíduos nas receitas.Fácil de usar: prático para todas as receitas, funciona em qualquer tipo de fogão — gás, elétrico, vitrocerâmico e indução — e conta com tampa de aço inox com saída de vapor e encaixe perfeito.Mais durável: o aço inox NEXLAR é uma matéria-prima nobre e resistente, que preserva a beleza do conjunto por muito mais tempo.Economiza tempo e energia: o fundo triplo (aço inox + alumínio + aço inox) distribui o calor uniformemente e acelera o cozimento; como dispensa fogo alto, consome menos energia. Toda em aço inox, também vai ao forno até 260 °C.Fácil de limpar: para deixar as peças brilhando, bastam água, detergente e uma esponja macia. Também pode ir à máquina de lavar.Perguntas frequentes sobre o Jogo de Panelas NEXLAR CityO Jogo de Panelas NEXLAR City pode ser usado em cooktop de indução?Sim. Graças ao fundo triplo, o conjunto funciona em qualquer tipo de fogão: gás, elétrico, vitrocerâmico e indução.O que é o fundo triplo e qual a vantagem?O fundo triplo é uma base formada por três camadas — aço inox, alumínio e aço inox. Essa construção distribui o calor de maneira uniforme, acelera o cozimento e permite manter o fogo baixo, o que economiza energia.As alças esquentam durante o cozimento?Sim. Por serem de aço inox, as alças aquecem durante o uso. Recomenda-se manuseá-las com luvas ou pegador.As panelas de inox grudam os alimentos?O aço inoxidável não possui revestimento antiaderente. Para evitar que os alimentos grudem, use calor brando e aqueça a panela antes de adicionar o óleo ou a manteiga.As peças podem ir ao forno?Sim. Por ser toda em aço inox, a panela pode ir ao forno para gratinar ou finalizar pratos, na temperatura máxima de 260 °C (pode haver leve mudança na coloração).Posso lavar na máquina de lavar louça?Sim. As peças podem ser lavadas na máquina. Para preservar o brilho, recomenda-se enxaguar com água quente e secar logo após a lavagem.Quais peças acompanham o jogo de 5 peças?O conjunto é formado por 5 peças em aço inox: panela com tampa de 1,5 L (Ø16 cm), panela com tampa de 2 L (Ø18 cm), caçarola com tampa de 2,9 L (Ø20 cm), Cozi Vapore de 2,9 L (Ø20 cm) para cozimento a vapor e frigideira de 1,3 L (Ø20 cm).Cuidados e modo de usoAntes do primeiro usoRemova eventuais etiquetas e lave as peças com água quente e detergente.A capacidade máxima recomendada para cozimento é de 3/4 da capacidade total da peça.Durante o preparoUse uma fonte de calor brando: o fundo triplo distribui o calor de forma uniforme e dispensa o fogo alto, economizando energia.No fogão a gás, a chama não deve ultrapassar a base da peça. Na chapa elétrica, o diâmetro da chapa deve ser igual ou inferior ao da peça.Dissolva o sal em água fervendo ou junto com os alimentos, mexendo os ingredientes no início do cozimento.As alças de aço inox aquecem durante o cozimento; utilize luvas no manuseio.Não aqueça alimentos empilhando uma peça sobre outra de mesmo diâmetro: o procedimento cria vácuo, impede a retirada e é perigoso.Se a tampa travar pelo efeito do vácuo durante o resfriamento, basta puxá-la ou aquecê-la novamente até neutralizar o efeito.Nunca deixe a peça vazia sobre a fonte de calor e apoie peças quentes apenas em superfícies resistentes ao calor.No forno, respeite a temperatura máxima de 260 °C (pode haver leve mudança na coloração).Limpeza e conservaçãoLave com água, detergente e esponja macia. Se preferir, use a máquina de lavar.Após a lavagem, enxágue com água quente e seque imediatamente: o cloro e as substâncias presentes na água podem manchar o aço inox.Alimentos com amido, como massas e arroz, podem deixar manchas na parte interna. Remova-as com um pano umedecido em suco de limão ou vinagre, ou utilize a Pasta para Polir e Remover Manchas NEXLAR, disponível nos principais pontos de venda.Evite deixar alimentos parados na peça por muito tempo; o sal também pode provocar manchas.Especificações técnicasComposição do conjunto (5 peças)Panela com tampa — Ø16 x 7,6 cm — 1,5 LPanela com tampa — Ø18 x 8 cm — 2 LCaçarola com tampa — Ø20 x 9,5 cm — 2,9 LCozi Vapore (cozimento a vapor) — Ø20 x 9,5 cm — 2,9 LFrigideira — Ø20 x 4,6 cm — 1,3 LMarcaNEXLARLinhaCityMaterialAço inoxidávelBaseFundo triplo (aço inox + alumínio + aço inox)CompatibilidadeGás, elétrico, vitrocerâmico e induçãoTampaAço inox, com saída de vapor e encaixe perfeitoAlçasAço inox (aquecem durante o uso — utilizar luvas)Uso no fornoSim, até 260 °CCapacidade de cozimentoAté 3/4 da capacidade total de cada peçaLava-louçasSimGarantia90 dias contra defeitos de fabricação ou víciosCom o Jogo de Panelas NEXLAR City, o preparo das receitas do dia a dia fica mais prático, saudável e eficiente, porque, para a NEXLAR, especial é estar presente.",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 449,
    "compare_at_price": 599.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 63,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:32.177Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4828110",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242259-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287322/4828_110-1280x1280_1.png?v=639240363972100000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 5 Peças",
        "position": 0
      },
      {
        "id": "img-994242259-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287323/4828_110-1280x1280_2.png?v=639240363972270000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 5 Peças",
        "position": 1
      },
      {
        "id": "img-994242259-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287324/4828_110-1280x1280_3.png?v=639240363972270000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 5 Peças",
        "position": 2
      },
      {
        "id": "img-994242259-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287325/4828_110-1280x1280_4.png?v=639240363972270000",
        "alt": "Jogo de Panelas NEXLAR City em Aço Inox e Fundo Triplo 5 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242249",
    "name": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life Naturalle 5 Peças Champagne",
    "slug": "jogo-de-panelas-nexlar-antiaderente-ceramic-life-naturalle-5-pecas-champagn",
    "sku": "NX-7262100",
    "short_description": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life Naturalle 5 Peças Champagne – Leveza, Estilo e Resistência para o Dia a Dia\nFuncionalidade...",
    "description": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life Naturalle 5 Peças Champagne – Leveza, Estilo e Resistência para o Dia a Dia\nFuncionalidade com charme natural! O Jogo de Panelas Ceramic Life Naturalle da NEXLAR é a escolha ideal para quem busca praticidade, beleza e qualidade no preparo das refeições diárias. Com acabamento sofisticado na cor Champagne, esse conjunto se destaca pelo visual delicado e elegante, ideal para compor uma cozinha acolhedora e eficiente.\nCom revestimento antiaderente cerâmico Pro-Ceramic, livre de PFOA, o jogo oferece um cozimento mais saudável, evita que os alimentos grudem e facilita a limpeza. A estrutura em alumínio garante distribuição de calor uniforme, trazendo mais agilidade e controle no preparo.\nAs tampas de vidro temperado possuem saída de vapor, permitindo o monitoramento do cozimento sem perder calor ou sabor. Os cabos e alças em baquelite oferecem resistência ao calor e manuseio seguro, mesmo durante o uso intenso.\nIdeal para o dia a dia, o conjunto é ultra resistente a altas temperaturas e compatível com fogões a gás, elétricos e vitrocerâmicos. Não é compatível com fogões de indução.\nDestaques que fazem a diferença:\n\n\nRevestimento Pro-Ceramic: cozimento mais saudável e fácil de limpar\n\n\nLivre de PFOA: mais segurança para sua saúde e o meio ambiente\n\n\nAlumínio com aquecimento uniforme: mais eficiência no preparo\n\n\nTampas de vidro temperado com saída de vapor: praticidade no uso\n\n\nCabos e alças em baquelite: resistentes ao calor e seguros no manuseio\n\n\nAlta resistência térmica: ideal para o uso diário\n\n\nCompatível com fogões a gás, elétricos e vitrocerâmicos\n\n\nNão compatível com fogão de indução\n\n\nComposição do jogo:• 01 Caçarola com tampa Ø 20 x 9 cm – 2,5L• 01 Panela com tampa Ø 18 x 8 cm – 1,75L• 01 Panela com tampa Ø 16 x 7 cm – 1,2L• 01 Frigideira Ø 20 x 4 cm – 0,8L• 01 Fervedor Ø 12 x 11,5 cm – 1,2L\nMaterial: Alumínio com revestimento cerâmico antiaderenteCor: ChampagneTampas: Vidro temperado com saída de vaporCabos e alças: Baquelite (isolante térmico)Compatibilidade: Fogão a gás, elétrico e vitrocerâmicoRestrição: Não vai ao forno e não é compatível com fogão de indução\nPara quem valoriza o equilíbrio entre leveza, praticidade e design natural, o Jogo de Panelas Ceramic Life Naturalle Champagne é a escolha ideal.\n \nGaranta já o seu e traga mais charme e funcionalidade para sua cozinha!",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 319.99,
    "compare_at_price": 449.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 122,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:32.177Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7262100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242249-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284576/01 - 1280x1280.png?v=639149570323870000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life Naturalle 5 Peças Champagne",
        "position": 0
      },
      {
        "id": "img-994242249-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284577/02 - 1280x1280.png?v=639149570323870000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life Naturalle 5 Peças Champagne",
        "position": 1
      },
      {
        "id": "img-994242249-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284578/03 - 1280x1280.png?v=639149570324000000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life Naturalle 5 Peças Champagne",
        "position": 2
      },
      {
        "id": "img-994242249-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284579/04 - 1280x1280.png?v=639149570324000000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life Naturalle 5 Peças Champagne",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-4791105",
    "name": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla",
    "slug": "jogo-de-panelas-nexlar-antiaderente-ceramic-life-8-pecas-smart-plus-vanilla",
    "sku": "NX-4791105",
    "short_description": "O Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla combina qualidade, design moderno e tecnologia de ponta. Produ...",
    "description": "O Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla combina qualidade, design moderno e tecnologia de ponta. Produzido na charmosa cor Vanilla, este conjunto é perfeito para transformar sua cozinha em um ambiente sofisticado e funcional. Com revestimento antiaderente cerâmico, é ideal para uso em fogões a gás, elétricos e vitrocerâmicos, garantindo versatilidade no preparo das suas receitas.Funcionalidade e Estilo em um Só ProdutoCom o Jogo de Panelas com cerâmica NEXLAR, cozinhar se torna uma experiência prazerosa e prática. Suas tampas de vidro temperado permitem acompanhar o preparo dos alimentos, enquanto a tecnologia Mineral Resist, presente no revestimento antiaderente cerâmico, oferece resistência a altas temperaturas, reduzindo o uso de óleo e facilitando a limpeza. A espessura de 2 mm assegura durabilidade e aquecimento uniforme, otimizando o tempo na cozinha.O Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla é composto por:01 Panela cerâmica com Tampa – Diâmetro: 16 cm | Altura: 8 cm | Capacidade: 1,25 Litros01 Panela Ceramic Life com Tampa - Diâmetro: 18 cm | Altura: 9 cm | Capacidade: 1,55 Litros;01 Caçarola cerâmica NEXLAR com Tampa – Diâmetro: 20 cm | Altura: 9,5 cm | Capacidade: 2,55 Litros01 Caçarola cerâmica NEXLAR com Tampa – Diâmetro: 24 | Altura: 11,5 cm | Capacidade: 4,55 Litros01 Frigideira cerâmica NEXLAR – Diâmetro: 14 | Altura: 2,5 cm | Capacidade: 0,2 Litros01 Frigideira cerâmica NEXLAR – Diâmetro: 20 | Altura: 3,5 cm | Capacidade: 0,6 Litros01 Grill cerâmica NEXLAR – Diâmetro: 24 | Altura: 3 cm | Capacidade: 1,35 Litros01 Fervedor NEXLAR – Diâmetro: 11 | Altura: 12,5 cm | Capacidade: 1 LitrosAntes de utilizar realize a cura do revestimento: Unte a parte interna com óleo ou qualquer outro tipo de gorduraLeve o produto ao fogo baixo até aquecer o conteúdo e deixe esfriarDescarte o conteúdo e repita a lavagem e secagem para eliminar qualquer resíduoApós o uso, evite choques térmicos, lave-o à mão, com água morna e esponja macia com sabão neutro ou detergenteSe for necessário esfregar, use materiais não abrasivos.Atenção:  Jamais leve suas panelas ao micro-ondas, lava-louças ou forno.Tipos de Fogões: Pode ser utilizado nos fogões: à gás, vitrocerâmico e elétrico.Não utilize em fogão de indução.Panelas Eco-Friendly com Certificação de QualidadeA linha Ceramic Life da NEXLAR é desenvolvida com foco em sustentabilidade, utilizando materiais que não agridem o meio ambiente. Além disso, o Jogo de Panelas NEXLAR Smart Plus Vanilla possui certificação compulsória OCP 0003, com classificação de antiaderência A (ótima) conforme a Portaria Inmetro 499/2021, garantindo segurança e eficiência no uso diário.Compre Online e Renove sua CozinhaAdquira agora o Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla no site e aproveite condições especiais de pagamento. Transforme sua rotina na cozinha com um conjunto de panelas que une elegância, tecnologia e praticidade!",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 599.99,
    "compare_at_price": 1099.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 203,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:32.177Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4791105",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-4791105-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/276492/jogo-de-panelas-brinox-antiaderente-8-pecas-cor-vanilla.jpg?v=638919087523570000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla",
        "position": 0
      },
      {
        "id": "img-4791105-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/276493/jogo-de-panelas-8-pecas-antiaderente-smart-plus-vanilla.jpg?v=638730593729370000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla",
        "position": 1
      },
      {
        "id": "img-4791105-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/276495/jogo-de-panelas-antiaderente-brinox-ceramic-life-8-pecas-smart-plus-vanilla.jpg?v=638730593729500000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla",
        "position": 2
      },
      {
        "id": "img-4791105-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/276496/jogo-de-panelas-brinox-linha-smart-plus-cor-vanilla.jpg?v=638730593729500000",
        "alt": "Jogo de Panelas NEXLAR Antiaderente Ceramic Life 8 Peças Smart Plus Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242263",
    "name": "Jogo de Panelas com Indução NEXLAR Ceramic Life Smart Plus 10 Peças Areia",
    "slug": "jogo-de-panelas-com-inducao-nexlar-ceramic-life-smart-plus-10-pecas-areia",
    "sku": "NX-4774406",
    "short_description": "Jogo de Panelas NEXLAR Ceramic Life Smart Plus Indução 10 Peças Areia — qualidade e sofisticação para a sua cozinhaO Jogo de Panelas NEXLAR...",
    "description": "Jogo de Panelas NEXLAR Ceramic Life Smart Plus Indução 10 Peças Areia — qualidade e sofisticação para a sua cozinhaO Jogo de Panelas NEXLAR Ceramic Life Smart Plus na elegante cor Areia é a combinação perfeita entre tecnologia, design moderno e alta funcionalidade. Desenvolvido para transformar sua experiência culinária, este conjunto completo oferece desempenho superior com revestimento cerâmico antiaderente Ceramic Life, fundo de indução para distribuição uniforme do calor e acabamento sofisticado que valoriza qualquer cozinha. Compatível com fogões a gás, elétricos, vitrocerâmicos e por indução — versatilidade total para o dia a dia.Por que escolher o Conjunto Ceramic Life Smart Plus NEXLARA tecnologia Ceramic Life proporciona uma cozinha mais saudável: o revestimento antiaderente permite cozinhar com menos óleo, evita que os alimentos grudem e facilita drasticamente a limpeza. O fundo de indução distribui o calor de forma uniforme, eliminando pontos quentes e garantindo cozimento perfeito. Os cabos com revestimento Soft-Touch oferecem toque confortável, seguro e ergonômico. As tampas em vidro temperado com saída de vapor permitem controlar o preparo sem precisar levantá-las, preservando umidade e sabor. E o design empilhável otimiza o espaço nos seus armários.Diferenciais do Jogo Ceramic Life Smart Plus NEXLARRevestimento cerâmico antiaderente Ceramic Life: cozinha mais saudável e fácil de limpar.Fundo de indução: distribuição uniforme do calor.Compatível com todos os tipos de fogão: gás, elétrico, vitrocerâmico e indução.Cabos Soft-Touch: conforto e segurança no manuseio.Tampas em vidro temperado com saída de vapor: controle visual do preparo.Design empilhável: organização inteligente dos armários.Cor Areia: acabamento elegante e atemporal.Conjunto exclusivo do site NEXLAR: vem com 3 utensílios em silicone Urban (concha, escumadeira e espátula), resistentes até 200 °C e laváveis em lava-louças.Composição do jogo1 Panela com tampa Ø 16 cm — 1,4 L1 Panela com tampa Ø 18 cm — 2 L1 Caçarola com tampa Ø 20 cm — 2,5 L1 Caçarola com tampa Ø 22 cm — 3,5 L1 Frigideira Ø 18 cm — 550 ml1 Frigideira Ø 22 cm — 1,1 L1 Grill 24 x 24 cm — 1,8 L1 Concha de silicone Urban1 Escumadeira de silicone Urban1 Espátula de silicone UrbanFicha técnicaProduto: Jogo de PanelasLinha: Ceramic Life Smart PlusCor: AreiaMaterial: Alumínio com revestimento cerâmico antiaderente Ceramic LifeCabos: revestimento Soft-TouchTampas: vidro temperado com saída de vaporFundo: induçãoCompatibilidade: fogões a gás, elétrico, vitrocerâmico e induçãoUtensílios inclusos: 3 peças em silicone Urban (resistentes até 200 °C, podem ir à lava-louças)Cura do revestimento (antes do primeiro uso)Antes de utilizar, realize a cura do revestimento para potencializar a vida útil das panelas:Unte a parte interna com óleo ou qualquer outro tipo de gordura.Leve o produto ao fogo baixo até aquecer o conteúdo e deixe esfriar.Descarte o conteúdo e repita a lavagem e secagem para eliminar qualquer resíduo.Como cuidar do seu Jogo de Panelas NEXLARApós o uso, evite choques térmicos (não jogue água fria na panela quente).Lave à mão, com água morna, esponja macia e sabão neutro ou detergente.Se for necessário esfregar, utilize apenas materiais não abrasivos.Use utensílios de silicone, madeira ou nylon — nunca utensílios metálicos que possam riscar a superfície.Seque bem antes de empilhar para preservar o acabamento.Para quem é indicado?O Jogo de Panelas Ceramic Life Smart Plus NEXLAR é a escolha certa para quem está montando ou renovando a cozinha, valoriza praticidade no dia a dia, busca uma alimentação mais saudável e quer um conjunto sofisticado e durável. Indispensável para apartamentos com fogão por indução, casas com fogão a gás, casais que cozinham com frequência, famílias que valorizam refeições preparadas em casa e amantes de gastronomia que apreciam ferramentas de qualidade. Também é uma excelente opção de presente de casamento, chá de cozinha, dia das mães e datas especiais.Cozinha sofisticada, saudável e prática: Jogo de Panelas NEXLAR Ceramic Life Smart Plus 10 Peças Areia.",
    "category_id": "cat-panelas",
    "categories": {
      "name": "Panelas",
      "slug": "panelas"
    },
    "price": 699.99,
    "compare_at_price": 999.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 144,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:32.178Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4774406",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242263-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/283748/4774_406.png?v=639110781793000000",
        "alt": "Jogo de Panelas com Indução NEXLAR Ceramic Life Smart Plus 10 Peças Areia",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-994242277",
    "name": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V",
    "slug": "panela-de-pressao-eletrica-nexlar-ceramic-life-6-litros-220v",
    "sku": "NX-8001100",
    "short_description": "A Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V foi feita para simplificar a rotina de quem cozinha todos os dias. Com 1000 W...",
    "description": "A Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V foi feita para simplificar a rotina de quem cozinha todos os dias. Com 1000 W de potência, 12 funções pré-programadas e painel digital, ela prepara os pratos da família com poucos toques: você escolhe a função, define o tempo e a pressão e deixa o resto com a panela. Do feijão e dos legumes às sopas, carnes e receitas especiais, ela acompanha o dia a dia da cozinha — porque, para a NEXLAR, especial é estar presente.Por que escolher a Panela de Pressão Elétrica Ceramic LifeCapacidade de 6 litros para a família: espaço de sobra para receitas mais volumosas e para preparar refeições do começo ao fim.12 funções pré-programadas: arroz, carnes, feijão, vapor, vegetais, mandioca, sopas, cozimento lento, iogurte, refogados, assados e bolos, tudo selecionável no painel digital.Modo Manual com pressão baixa, média ou alta: quando a receita pede ajuste fino, você assume o controle sem abrir mão da praticidade.Grade para dois preparos ao mesmo tempo: o alimento do fundo cozinha sob pressão enquanto o da grade recebe apenas o vapor — ideal para adiantar o almoço em um único ciclo.Menos vapor do que a panela tradicional: o preparo acontece de forma mais fechada, com bem menos vapor na cozinha e mais tranquilidade para quem cozinha.4 dispositivos de segurança: somados à trava da tampa, à vedação e à liberação de pressão pelo botão da alça, formam um sistema completo de proteção.Revestimento interno Ceramic Life antiaderente: os alimentos não grudam, a limpeza fica mais fácil e você cozinha com menos óleo, para refeições mais saudáveis.Acompanha o que você precisa: grade para vapor, coletor de água (corta-pingos), colher e copo medidor já vêm na caixa.Ficha técnica resumidaCategoria: panela de pressão elétricaLinha: Ceramic LifeCapacidade: 6 litrosPotência: 1000 WPressão de trabalho: 70 kPaTensão: 220V (indicada para tomadas de 220V)Modelo: P621CHFunções pré-programadas: 12 (Arroz, Carnes, Feijão, Vapor, Vegetais, Mandioca, Sopas, Cozimento Lento, Iogurte, Refogar, Assar e Bolos)Modo Manual: pressão baixa, média ou altaDispositivos de segurança: 4Liberação de pressão: pelo botão da alçaRevestimento interno: cerâmico antiaderente Ceramic LifePainel: digital, com funções pré-programadasCabo: removívelGarantia: 1 anoComposição: 1 panela de pressão elétrica, 1 grade para cozimento a vapor, 1 coletor de água (corta-pingos), 1 colher e 1 copo medidorComo aproveitar todas as funçõesColoque os ingredientes, feche a tampa alinhando as setinhas e escolha a função no painel. A panela aquece, atinge a pressão e só depois inicia a contagem do tempo — por isso o ciclo completo leva alguns minutos além do que aparece no visor.Vale começar pela função Refogar para dourar alho, cebola ou carne direto na cuba: o sabor ganha profundidade e você economiza uma panela. Para receitas mais delicadas, o modo Manual permite reduzir a pressão. E funções como Iogurte e Cozimento Lento ampliam o cardápio muito além do arroz e do feijão do dia a dia.Cuidados e primeiro usoRetire todas as proteções da panela e dos acessórios antes do primeiro preparo.Cura do revestimento: espalhe uma fina camada de óleo na cuba com um papel, lave e execute um ciclo curto somente com água. O procedimento conserva o antiaderente e prolonga a vida útil.Cabo removível: encaixe o cabo atrás da panela e só depois ligue na tomada. Ele sai facilmente na hora de guardar.Durante o cozimento: não encoste na panela nem manuseie a válvula diretamente. Libere a pressão pelo botão da alça, com as mãos afastadas da saída de vapor.Limpeza: após esfriar, lave a cuba e os acessórios com esponja macia e detergente neutro. Evite abrasivos, que comprometem o revestimento cerâmico.Coletor de água: esvazie o corta-pingos com regularidade.Vedação: mantenha o anel e a tampa limpos, sem resíduos de alimento, para garantir o fechamento correto.Perguntas frequentesA Panela de Pressão Elétrica Ceramic Life 6 Litros 220V pode ser ligada em qualquer tomada?Esta versão é 220V e deve ser ligada em tomadas de 220V. Antes da compra, confira a tensão da tomada onde você pretende usá-la.O que vem na caixa?A panela de pressão elétrica, 1 grade para cozimento a vapor, 1 coletor de água (corta-pingos), 1 colher e 1 copo medidor.Quais são as 12 funções pré-programadas?São elas: Arroz, Carnes, Feijão, Vapor, Vegetais, Mandioca, Sopas, Cozimento Lento, Iogurte, Refogar, Assar e Bolos. Há ainda o modo Manual, com pressão baixa, média ou alta.Precisa fazer a cura da panela antes do primeiro uso?Sim, recomendamos. Retire as proteções, espalhe uma fina camada de óleo na cuba com um papel e faça um ciclo curto com água antes do primeiro preparo. Isso conserva o revestimento e aumenta a durabilidade.Dá para cozinhar dois alimentos ao mesmo tempo?Sim. Usando a grade para cozimento a vapor, um alimento cozinha no fundo e o outro fica na grade, recebendo apenas o vapor — prático para preparar proteína e legumes de uma vez.A panela de pressão elétrica solta muito vapor?Ela libera bem menos vapor do que a panela de pressão tradicional. Mesmo assim, evite encostar na panela durante o preparo e mantenha as mãos afastadas ao liberar a pressão pelo botão da alça.Por que o tempo só começa a contar depois de alguns minutos?Porque a panela precisa aquecer e atingir a pressão de trabalho antes de iniciar o preparo. A contagem no visor considera apenas o tempo de cozimento sob pressão.A panela de pressão elétrica é segura?Ela conta com 4 dispositivos de segurança, trava e vedação na tampa, e a pressão é liberada pelo botão da alça, sem necessidade de mexer diretamente na válvula.Qual é a garantia do produto?Os eletroportáteis NEXLAR têm 1 ano de garantia. Guarde a nota fiscal e siga as orientações de uso e limpeza do manual para manter a cobertura.O revestimento antiaderente facilita a limpeza?Sim. O revestimento interno Ceramic Life é antiaderente: os alimentos não grudam, a limpeza fica mais simples e dá para cozinhar com menos óleo. O cabo removível também facilita a hora de guardar.Com 1000 W, 12 funções, modo Manual, 4 dispositivos de segurança e revestimento antiaderente, a Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V é uma aliada para inovar e simplificar o preparo das suas receitas favoritas.",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 499.99,
    "compare_at_price": 624.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 170,
    "free_shipping": true,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:33.109Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "8001100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242277-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285300/8001_100--1280x1280_1.png?v=639198186592800000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V",
        "position": 0
      },
      {
        "id": "img-994242277-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285301/8001_100--1280x1280_2.png?v=639198186593270000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V",
        "position": 1
      },
      {
        "id": "img-994242277-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285302/8001_100--1280x1280_3.png?v=639198186593270000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V",
        "position": 2
      },
      {
        "id": "img-994242277-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285303/8001_100--1280x1280_4.png?v=639198186593270000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 220V",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242276",
    "name": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V",
    "slug": "panela-de-pressao-eletrica-nexlar-ceramic-life-6-litros-127v",
    "sku": "NX-8001101",
    "short_description": "A Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V foi pensada para quem quer preparar as refeições do dia a dia com mais rapide...",
    "description": "A Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V foi pensada para quem quer preparar as refeições do dia a dia com mais rapidez, segurança e sem complicação. Com 1000 W de potência e 12 funções pré-programadas, você programa o preparo no painel digital e a panela cuida do resto, sem precisar acompanhar o fogo. Do feijão de todo dia às carnes, sopas e ensopados, ela dá conta de uma cozinha completa para a família — porque, para a NEXLAR, especial é estar presente.Por que escolher a Panela de Pressão Elétrica Ceramic LifeCozimento rápido e uniforme: com 1000 W de potência e pressão de trabalho de 70 kPa, o calor sob pressão acelera o preparo e cozinha os alimentos por igual, do centro às bordas.12 funções pré-programadas: arroz, carnes, feijão, vapor, vegetais, mandioca, sopas, cozimento lento, iogurte, refogados, assados e bolos, selecionáveis direto no painel digital.Modo Manual com três níveis de pressão: além das funções automáticas, você escolhe pressão baixa, média ou alta e ajusta o preparo do seu jeito.Dois alimentos ao mesmo tempo: com a grade para cozimento a vapor que acompanha o produto, o grão de bico cozinha embaixo e os legumes recebem apenas o vapor em cima, no mesmo ciclo.Menos vapor na cozinha: diferente da panela de pressão tradicional, ela libera bem menos vapor durante o preparo, o que traz mais conforto e tranquilidade no dia a dia.Segurança reforçada: são 4 dispositivos de segurança, tampa com vedação e trava, e liberação de pressão pelo botão da alça, sem precisar mexer diretamente na válvula.Revestimento que cuida dos alimentos: o revestimento interno cerâmico antiaderente da linha Ceramic Life foi projetado para maior durabilidade e para facilitar a limpeza.Vem completa: acompanha grade para vapor, coletor de água (corta-pingos), colher e copo medidor — é só tirar da caixa e começar a cozinhar.Ficha técnica resumidaCategoria: panela de pressão elétricaLinha: Ceramic LifeCapacidade: 6 litrosPotência: 1000 WPressão de trabalho: 70 kPaTensão: 127V (indicada para tomadas de 127V)Modelo: P611CHFunções pré-programadas: 12 (Arroz, Carnes, Feijão, Vapor, Vegetais, Mandioca, Sopas, Cozimento Lento, Iogurte, Refogar, Assar e Bolos)Modo Manual: pressão baixa, média ou altaDispositivos de segurança: 4Tampa: com vedação e trava de segurançaLiberação de pressão: pelo botão da alçaPainel: digital, para ajuste de tempo e pressãoRevestimento interno: cerâmico antiaderente Ceramic LifeCabo: removívelGarantia: 1 anoComposição: 1 panela de pressão elétrica, 1 grade para cozimento a vapor, 1 coletor de água (corta-pingos), 1 colher e 1 copo medidorComo usar no dia a diaColoque os ingredientes, feche a tampa alinhando as setinhas de trava, escolha a função no painel e aperte Iniciar. A panela aquece, atinge a pressão e só então começa a contar o tempo — por isso o ciclo completo leva alguns minutos além do que aparece no visor.Para receitas com mais sabor, comece pela função Refogar e doure alho, cebola ou carne na própria cuba, sem sujar outra panela. Depois é só acrescentar o restante e selecionar a função do preparo. Nas funções Assar e Bolos, a pressão nem sempre é necessária.Cuidados e primeiro usoAntes do primeiro uso: retire todas as proteções da panela e dos acessórios.Faça a cura do revestimento: espalhe uma fina camada de óleo na cuba com um papel, lave e execute um ciclo curto apenas com água. Isso conserva o antiaderente e prolonga a vida útil.Cabo removível: conecte o cabo atrás da panela e só depois ligue na tomada.Durante o preparo: evite encostar na panela e não mexa diretamente na válvula. Libere a pressão pelo botão da alça, com as mãos afastadas da saída de vapor.Limpeza: após esfriar, lave a cuba e os acessórios com esponja macia e detergente neutro. Evite produtos abrasivos.Coletor de água: esvazie e higienize o corta-pingos periodicamente.Vedação: mantenha o anel e a tampa limpos e sem resíduos.Perguntas frequentesA Panela de Pressão Elétrica Ceramic Life 6 Litros 127V pode ser ligada em qualquer tomada?Esta versão é 127V e deve ser ligada em tomadas de 127V. Antes da compra, confira a tensão da tomada onde você pretende usá-la.O que acompanha a panela?Além da panela, acompanham 1 grade para cozimento a vapor, 1 coletor de água (corta-pingos), 1 colher e 1 copo medidor.Precisa fazer a cura antes do primeiro uso?Sim, recomendamos. Retire as proteções, espalhe uma fina camada de óleo na cuba com um papel e faça um ciclo curto com água. O preparo conserva o revestimento e aumenta a durabilidade.Dá para cozinhar dois alimentos ao mesmo tempo?Sim. Com a grade para cozimento a vapor, um alimento cozinha no fundo e o outro fica na grade, recebendo apenas o vapor — como grão de bico embaixo e legumes em cima.A panela solta muito vapor?Ela libera bem menos vapor do que a panela de pressão tradicional. Ainda assim, evite encostar na panela em funcionamento e mantenha as mãos afastadas ao liberar a pressão.Por que o tempo demora a começar a contar?A panela primeiro aquece e atinge a pressão de trabalho; só então o tempo programado começa a ser contado. É o comportamento normal do cozimento sob pressão elétrico.A panela de pressão elétrica é segura?Ela conta com 4 dispositivos de segurança, além de trava e vedação na tampa. A pressão é liberada pelo botão da alça, sem necessidade de mexer diretamente na válvula.Qual é a garantia do produto?Os eletroportáteis NEXLAR têm 1 ano de garantia. Guarde a nota fiscal e siga as orientações de uso e limpeza do manual para manter a cobertura.Como limpar o revestimento interno?Espere esfriar e lave a cuba com esponja macia e detergente neutro. O revestimento cerâmico antiaderente não deixa os alimentos grudarem, mas produtos abrasivos podem danificá-lo.Com 1000 W, 12 funções, modo Manual e 4 dispositivos de segurança, a Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V une tecnologia e praticidade para transformar o seu dia a dia na cozinha.",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 499.99,
    "compare_at_price": 624.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 112,
    "free_shipping": true,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.110Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "8001101",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242276-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285284/8001_101--1280x1280-1.png?v=639198186760870000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V",
        "position": 0
      },
      {
        "id": "img-994242276-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285285/8001_101--1280x1280-2.png?v=639198186760870000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V",
        "position": 1
      },
      {
        "id": "img-994242276-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285286/8001_101---1280x1280-3.png?v=639198186761170000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V",
        "position": 2
      },
      {
        "id": "img-994242276-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285287/8001_101---1280x1280-4.png?v=639198186761170000",
        "alt": "Panela de Pressão Elétrica NEXLAR Ceramic Life 6 Litros 127V",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242184",
    "name": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Preto",
    "slug": "panela-de-pressao-nexlar-vapt-antiaderente-ceramic-life-3-litros-preto",
    "sku": "NX-7259192",
    "short_description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Preta foi feita para quem quer mais agilidade na cozinha, com segurança e...",
    "description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Preta foi feita para quem quer mais agilidade na cozinha, com segurança e praticidade no dia a dia. Com capacidade de 3 L, ela é ideal para preparar feijão, carnes, legumes, sopas e receitas rápidas, entregando cozimento eficiente sem ocupar muito espaço — perfeita para rotinas menores e porções bem dimensionadas.O corpo em alumínio aquece de forma rápida e uniforme, ajudando a reduzir o tempo de cozimento e melhorar o desempenho no preparo. Por dentro, o revestimento cerâmico antiaderente Ceramic Life facilita o uso, evita que os alimentos grudem e torna a limpeza muito mais simples após o uso. Além disso, é PFOA free, trazendo mais tranquilidade para a rotina.Pensada para um manuseio seguro, a panela conta com cabos e alças em baquelite antitérmico, que não aquecem e oferecem pegada firme e confortável. E para cozinhar com mais confiança, a Panela de Pressão Vapt possui três dispositivos de segurança: trava do cabo, válvula de trabalho e válvula de segurança, contribuindo para um uso mais confiável no dia a dia. O acabamento preto completa o design com um visual moderno e versátil, fácil de combinar com diferentes estilos de cozinha.Se você quer uma panela de pressão compacta, eficiente e fácil de limpar para usar sempre, escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 3 L Preta e garanta a sua agora.Principais benefícios:3 litros: ideal para porções menores e rotina práticaAlumínio: aquecimento rápido e cozimento uniformeAntiaderente cerâmico: não gruda e limpa fácilPFOA free: mais segurança no preparo3 dispositivos de segurança: trava do cabo + válvula de trabalho + válvula de segurançaCabos e alças em baquelite antitérmico: não aquecem e oferecem manuseio seguroCor preta: visual moderno e versátilEspecificações:Produto: panela de pressãoLinha: Ceramic Life VaptCapacidade: 3 litrosMaterial: alumínioRevestimento interno: cerâmico antiaderenteCor: pretaCabos e alças: baquelite antitérmicoSegurança: trava do cabo, válvula de trabalho e válvula de segurançaCuidados de uso:Realize a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com esponja macia e sabão neutroEvite utensílios metálicos e produtos abrasivos para preservar o antiaderenteNão utilizar em micro-ondas, lava-louças ou fornoGanhe tempo e mais tranquilidade nas suas receitas: escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 3 L Preta e compre agora.",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 189.99,
    "compare_at_price": 279.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 61,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.110Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7259192",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242184-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287049/3L - Vapt Preta.png?v=639238892475400000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Preto",
        "position": 0
      },
      {
        "id": "img-994242184-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287050/panela-de-pressao-brinox-ceramic-life-vapt-3-litros-preto_1.jpg?v=639238892475530000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Preto",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-4952101",
    "name": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 4,2L Vanilla",
    "slug": "panela-de-pressao-inducao-nexlar-antiaderente-ceramic-life-pressure-4-2l-va",
    "sku": "NX-4952101",
    "short_description": "Panela de Pressão NEXLAR Ceramic Life Pressure 4,2 L: antiaderente cerâmico e fundo de induçãoA Panela de Pressão NEXLAR Ceramic Life Pressu...",
    "description": "Panela de Pressão NEXLAR Ceramic Life Pressure 4,2 L: antiaderente cerâmico e fundo de induçãoA Panela de Pressão NEXLAR Ceramic Life Pressure foi desenvolvida para agilizar o preparo das refeições do dia a dia. Com capacidade de 4,2 litros e estrutura em alumínio, distribui o calor de forma homogênea e cozinha carnes, grãos e legumes de maneira rápida e uniforme. O revestimento antiaderente cerâmico, com classificação A de antiaderência e livre de PFOA, permite uma cocção mais saudável, com menos óleo e limpeza fácil. Graças ao fundo de indução, é compatível com todos os tipos de fogões, na cor Vanilla.Destaques da Panela de Pressão NEXLAR Ceramic Life PressurePreparo mais rápido: o sistema de pressão, aliado à estrutura em alumínio, proporciona uma cocção ágil e homogênea.Antiaderente cerâmico classificação A: o revestimento facilita o preparo e a limpeza e exige menos óleo, para receitas mais saudáveis.Livre de PFOA: o revestimento cerâmico não libera toxinas e segue o padrão PFOA Free.Compatível com indução: o fundo de indução permite o uso em qualquer tipo de fogão — gás, elétrico, vitrocerâmico e indução.Cabos e alças que não esquentam: em baquelite com acabamento soft touch, garantem manuseio confortável e seguro.Quatro dispositivos de segurança: trava de segurança, válvula de trabalho, válvula de segurança e escape de segurança, com saída para o vapor na tampa.Certificação Inmetro: produto com certificação compulsória conforme a Portaria Inmetro 499/2021.Perguntas frequentes sobre a Panela de Pressão NEXLAR Ceramic Life PressureA Panela de Pressão Ceramic Life Pressure pode ser usada em cooktop de indução?Sim. A panela possui fundo de indução e é compatível com todos os tipos de fogões: gás, elétrico, vitrocerâmico e indução.O revestimento é seguro e livre de toxinas?Sim. O revestimento antiaderente é cerâmico, possui classificação A de antiaderência e segue o padrão PFOA Free, sem componentes prejudiciais à saúde.Precisa fazer a cura do revestimento antes do primeiro uso?Sim. Antes de usar, unte a parte interna com óleo ou outra gordura, leve ao fogo baixo até aquecer, deixe esfriar e descarte o conteúdo. Em seguida, lave e seque para eliminar resíduos.Os cabos e alças esquentam durante o uso?Não. Os cabos, alças e pegadores são de baquelite com acabamento soft touch, que não esquenta e proporciona um manuseio confortável.A panela pode ir ao forno, micro-ondas ou lava-louças?Não. A limpeza deve ser feita manualmente; a panela não deve ser utilizada em forno, micro-ondas nem lava-louças.Qual é a capacidade e as medidas da panela?A panela tem capacidade de 4,2 litros, 20 cm de diâmetro e 14,5 cm de altura.Cuidados e modo de usoCura do revestimento (antes do primeiro uso)Unte a parte interna com óleo ou qualquer outro tipo de gordura.Leve ao fogo baixo até aquecer o conteúdo e deixe esfriar.Descarte o conteúdo e repita a lavagem e a secagem para eliminar qualquer resíduo.Limpeza e conservaçãoLave sempre à mão, com água morna, esponja macia e sabão neutro ou detergente.Evite produtos abrasivos; se precisar esfregar, use apenas materiais não abrasivos.Evite choques térmicos.Não utilize a panela em forno, micro-ondas ou lava-louças.Para o uso sob pressão com segurança, siga as orientações do manual que acompanha o produto.Especificações técnicasMarcaNEXLARLinhaCeramic Life PressureProdutoPanela de pressãoMaterial do corpoAlumínioRevestimento internoAntiaderente cerâmico Ceramic Life (classificação A)TecnologiaPFOA FreeCapacidade4,2 litrosDiâmetro20 cmAltura14,5 cmCorVanillaCabos e alçasBaquelite antitérmico com acabamento soft touch (marrom)Dispositivos de segurançaTrava de segurança, válvula de trabalho, válvula de segurança e escape de segurançaCompatibilidadeGás, elétrico, vitrocerâmico e induçãoForno / micro-ondas / lava-louçasNão recomendadoCertificaçãoOCP 0003 – Registro 003497/2020 – Portaria Inmetro 499/2021Garantia1 ano contra defeitos de fabricaçãoConteúdo da embalagem01 Panela de Pressão NEXLAR Ceramic Life PressureCom a Panela de Pressão NEXLAR Ceramic Life Pressure, o preparo do dia a dia fica mais rápido, saudável e seguro, porque, para a NEXLAR, especial é estar presente.",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 249.99,
    "compare_at_price": 499.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 190,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.110Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4952101",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-4952101-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287009/4,2L - Pressure Vanilla.png?v=639238890451230000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 4,2L Vanilla",
        "position": 0
      },
      {
        "id": "img-4952101-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287010/panela-de-pressao-inducao-brinox-antiaderente-ceramic-life-pressure-4-2l-vanilla_1.jpg?v=639238890451600000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 4,2L Vanilla",
        "position": 1
      },
      {
        "id": "img-4952101-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287011/panela-de-pressao-inducao-brinox-antiaderente-ceramic-life-pressure-4-2l-vanilla_2.jpg?v=639238890451700000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 4,2L Vanilla",
        "position": 2
      },
      {
        "id": "img-4952101-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287012/panela-de-pressao-inducao-brinox-antiaderente-ceramic-life-pressure-4-2l-vanilla_3.jpg?v=639238890451730000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 4,2L Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242186",
    "name": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Preto",
    "slug": "panela-de-pressao-nexlar-vapt-antiaderente-ceramic-life-7-5-litros-preto",
    "sku": "NX-7259193",
    "short_description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Preta é perfeita para quem precisa de alta capacidade com praticidade e...",
    "description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Preta é perfeita para quem precisa de alta capacidade com praticidade e segurança no dia a dia. Ideal para receitas em maior volume, como feijão, carnes, caldos, sopas e ensopados, ela entrega cozimento rápido e uniforme, facilitando a rotina de famílias maiores ou de quem gosta de preparar e congelar porções.O corpo em alumínio aquece rápido e distribui o calor de forma uniforme, ajudando a reduzir o tempo de cozimento e melhorar o desempenho no preparo. Por dentro, o revestimento cerâmico antiaderente Ceramic Life evita que os alimentos grudem, permite cozinhar com menos óleo e deixa a limpeza muito mais simples depois do uso. Além disso, é PFOA free, trazendo mais tranquilidade para o preparo das refeições.Para manusear com conforto, os cabos e alças em baquelite antitérmico não aquecem durante o uso e oferecem pegada firme. E para cozinhar com mais confiança, o modelo conta com três dispositivos de segurança: trava do cabo, válvula de trabalho e válvula de segurança, contribuindo para um uso mais confiável no dia a dia. O acabamento preto completa o visual com elegância e versatilidade, combinando com diferentes estilos de cozinha.Compatível com fogões a gás, elétrico e vitrocerâmico, não é indicada para indução. Se você busca uma panela de pressão espaçosa, eficiente e fácil de limpar para grandes preparos, escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 7,5 L Preta e garanta a sua agora.Principais benefícios7,5 litros: alta capacidade para receitas em maior volumeAlumínio: aquecimento rápido e cozimento uniformeAntiaderente cerâmico Ceramic Life: não gruda e limpa fácilPFOA free: mais segurança no preparo3 dispositivos de segurança: trava do cabo + válvula de trabalho + válvula de segurançaCabos e alças em baquelite antitérmico: não aquecem e oferecem manuseio seguroCor preta: visual moderno e versátilCompatibilidade: gás, elétrico e vitrocerâmico (não compatível com indução)Especificações:Produto: panela de pressãoLinha: Ceramic Life VaptCapacidade: 7,5 litrosMaterial: alumínioRevestimento interno: cerâmico antiaderenteCor: pretaCabos e alças: baquelite antitérmicoSegurança: trava do cabo, válvula de trabalho e válvula de segurançaCompatibilidade: gás, elétrico e vitrocerâmicoCuidados de uso:Realize a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com esponja macia e sabão neutroEvite utensílios metálicos e produtos abrasivos para preservar o antiaderenteNão utilizar em micro-ondas, lava-louças ou fornoPara cozinhar em grande estilo, com mais capacidade e tranquilidade no dia a dia, escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 7,5 L Preta e compre agora.",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 299.99,
    "compare_at_price": 399.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 91,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.110Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7259193",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242186-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287135/7,5L - Vapt Preta.png?v=639239410845970000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Preto",
        "position": 0
      },
      {
        "id": "img-994242186-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287136/panela-de-pressao-brinox-ceramic-life-vapt-7-5-litros-preto_1.jpg?v=639239410845970000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Preto",
        "position": 1
      },
      {
        "id": "img-994242186-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287137/panela-de-pressao-brinox-ceramic-life-vapt-7-5-litros-preto_2.jpg?v=639239410846130000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Preto",
        "position": 2
      }
    ]
  },
  {
    "id": "prod-994242185",
    "name": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Preto",
    "slug": "panela-de-pressao-nexlar-vapt-antiaderente-ceramic-life-4-5-litros-preto",
    "sku": "NX-7259170",
    "short_description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Preta foi feita para quem quer cozinhar com mais agilidade no dia a dia...",
    "description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Preta foi feita para quem quer cozinhar com mais agilidade no dia a dia, sem abrir mão de segurança e praticidade. Com capacidade de 4,5 L, ela é ideal para preparar feijão, carnes, legumes, sopas e receitas completas para a família, entregando ótimo rendimento e desempenho na rotina.O corpo em alumínio aquece rápido e distribui o calor de forma uniforme, ajudando a reduzir o tempo de cozimento e melhorar o resultado das receitas. Por dentro, o revestimento cerâmico antiaderente Ceramic Life evita que os alimentos grudem, facilita o preparo com menos óleo e deixa a limpeza muito mais simples depois do uso. Além disso, é PFOA free, trazendo mais tranquilidade para o preparo das refeições.Para manusear com conforto e segurança, os cabos e alças em baquelite antitérmico não aquecem durante o uso e oferecem pegada firme. E para cozinhar com mais confiança, a Vapt conta com três dispositivos de segurança — trava no cabo, válvula de trabalho e válvula de segurança — contribuindo para um uso mais confiável no dia a dia. O acabamento preto completa o visual com elegância e versatilidade, combinando com diferentes estilos de cozinha.Se você procura uma panela de pressão espaçosa, eficiente e fácil de limpar para usar sempre, escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 4,5 L Preta e garanta a sua agora.Principais benefícios:4,5 litros: capacidade ideal para refeições completasAlumínio: aquecimento rápido e cozimento uniformeAntiaderente cerâmico: não gruda e limpa fácilPFOA free: mais segurança no preparo3 dispositivos de segurança: trava no cabo + válvula de trabalho + válvula de segurançaCabos e alças em baquelite antitérmico: não aquecem e oferecem manuseio seguroCor preta: visual moderno e versátilEspecificações:Produto: panela de pressãoLinha: Ceramic Life VaptCapacidade: 4,5 litrosMaterial: alumínioRevestimento interno: cerâmico antiaderenteCor: pretaCabos e alças: baquelite antitérmicoSegurança: trava no cabo, válvula de trabalho e válvula de segurançaCuidados de uso:Realize a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com esponja macia e sabão neutroEvite utensílios metálicos e produtos abrasivos para preservar o antiaderenteNão utilizar em micro-ondas, lava-louças ou fornoCozinhe com mais segurança e eficiência: escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 4,5 L Preta e compre agora.",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 209.99,
    "compare_at_price": 309.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 89,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.110Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7259170",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242185-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287058/4,5L - Vapt Preto.png?v=639238893461500000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Preto",
        "position": 0
      },
      {
        "id": "img-994242185-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287059/panela-de-pressao-brinox-ceramic-life-vapt-4-5-litros-preto_1.jpg?v=639238893461630000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Preto",
        "position": 1
      },
      {
        "id": "img-994242185-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287060/panela-de-pressao-brinox-ceramic-life-vapt-4-5-litros-preto_2.jpg?v=639238893461670000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Preto",
        "position": 2
      },
      {
        "id": "img-994242185-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287061/panela-de-pressao-brinox-ceramic-life-vapt-4-5-litros-preto_3.jpg?v=639238893461700000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Preto",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242188",
    "name": "Panela com Tampa NEXLAR Primea Ceramic Life Ø16cm 1,45 Litros Cappuccino",
    "slug": "panela-com-tampa-nexlar-primea-ceramic-life-16cm-1-45-litros-cappuccino",
    "sku": "NX-7261356",
    "short_description": "Panela com Tampa NEXLAR Primea Antiaderente Ceramic Life Ø 16 cm 1,45 Litros Cappuccino — proteção antibacteriana em formato compactoA Panel...",
    "description": "Panela com Tampa NEXLAR Primea Antiaderente Ceramic Life Ø 16 cm 1,45 Litros Cappuccino — proteção antibacteriana em formato compactoA Panela com Tampa NEXLAR Primea traz a tecnologia que faz toda a diferença na sua rotina: revestimento antiaderente Pro Ceramic com aditivo antibacteriano, desenvolvido para reduzir ativamente a proliferação de bactérias durante o preparo dos alimentos. Mais segurança alimentar, mais higiene e a tranquilidade de saber que cada refeição é feita em uma superfície que trabalha a favor da saúde da sua família. Tudo isso em uma panela compacta, bonita e funcional em tom Cappuccino — pensada para quem leva a sério tanto o sabor quanto a saúde.A diferença está no antibacterianoA proliferação de bactérias é um dos maiores riscos invisíveis na cozinha — especialmente em panelas que são usadas várias vezes ao dia para os mais diversos preparos. O revestimento Pro Ceramic da linha Primea conta com aditivo antibacteriano integrado à própria superfície de cocção — não é uma camada que se desgasta com o tempo, mas uma proteção que atua continuamente, reduzindo a presença de microrganismos durante todo o ciclo de uso da peça. Combinado à formulação livre de PFOA, o resultado é uma superfície ao mesmo tempo segura, antiaderente e ativa na proteção da família.Por que escolher a Panela Primea Ceramic Life NEXLAR 16 cmProduzida com estrutura em alumínio, a panela aquece rapidamente e distribui o calor de forma uniforme, favorecendo o cozimento homogêneo dos alimentos. O diâmetro compacto de 16 cm com 1,45 litros de capacidade é ideal para pequenas porções e preparos do dia a dia: aquecimento de molhos, preparo de acompanhamentos individuais, sopa para uma ou duas pessoas, papinhas e cozimentos rápidos. A tampa flat de vidro temperado com saída para vapor oferece mais controle durante o preparo e permite acompanhar a receita sem perder calor. O cabo com acabamento soft touch garante manuseio confortável, seguro e com menor aquecimento.Diferenciais da Panela Primea Ceramic Life NEXLAR 16 cmAditivo antibacteriano integrado ao revestimento: proteção contínua contra a proliferação de bactérias.Livre de PFOA: mais segurança no uso diário para sua família.Revestimento Pro Ceramic antiaderente: alimentos não grudam e limpeza facilitada.Diâmetro de 16 cm e capacidade de 1,45 litros: tamanho compacto, ideal para porções pequenas.Estrutura em alumínio: aquecimento rápido e distribuição uniforme do calor.Tampa flat de vidro temperado com saída para vapor: controle visual do preparo.Cabo soft touch: manuseio confortável e seguro.Cor Cappuccino: visual moderno, elegante e versátil.Compatível com fogões a gás, elétrico e vitrocerâmico.Receitas ideais com a Panela Primea 16 cmMolhos rápidos e reduções.Acompanhamentos individuais (legumes, purês).Sopas e cremes para uma ou duas pessoas.Cozimento de ovos e papinhas.Aquecimento de mingaus e leite.Preparo de doces leves, brigadeiros e caldas.Pequenas porções de arroz e feijão.Ficha técnicaProduto: Panela com tampaMarca: NEXLARLinha: Primea Ceramic LifeDiâmetro: Ø 16 cmCapacidade: 1,45 litrosEstrutura: AlumínioRevestimento interno: cerâmico antiaderente Pro Ceramic com aditivo antibacteriano (livre de PFOA)Tampa: Flat de vidro temperado com saída para vaporCabo: Soft touchCor: CappuccinoCompatibilidade: fogões a gás, elétrico e vitrocerâmicoCura do revestimento (antes do primeiro uso)Antes de utilizar, realize a cura para potencializar a vida útil do revestimento antibacteriano:Unte a parte interna com óleo ou qualquer outro tipo de gordura.Leve o produto ao fogo baixo até aquecer o conteúdo e deixe esfriar.Descarte o conteúdo e repita a lavagem e secagem para eliminar qualquer resíduo.Como cuidar da sua Panela Primea NEXLARUtilize utensílios de silicone, madeira ou nylon — nunca metálicos.Evite materiais abrasivos na limpeza.Lave à mão, com esponja macia e sabão neutro ou detergente.Evite choques térmicos (não jogue água fria na peça quente).Seque bem após a lavagem para ajudar na conservação da peça.Preparos compactos e saudáveis com proteção antibacteriana: Panela com Tampa NEXLAR Primea Ceramic Life 16 cm Cappuccino.",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 99.99,
    "compare_at_price": 119.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 89,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.110Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7261356",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242188-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284779/7261 100_Primea 1280x1280_1.png?v=639165230883300000",
        "alt": "Panela com Tampa NEXLAR Primea Ceramic Life Ø16cm 1,45 Litros Cappuccino",
        "position": 0
      },
      {
        "id": "img-994242188-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284780/7261 100_Primea 1280x1280_2.png?v=639165230883470000",
        "alt": "Panela com Tampa NEXLAR Primea Ceramic Life Ø16cm 1,45 Litros Cappuccino",
        "position": 1
      },
      {
        "id": "img-994242188-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284781/7261 100_Primea 1280x1280_4.png?v=639165230883470000",
        "alt": "Panela com Tampa NEXLAR Primea Ceramic Life Ø16cm 1,45 Litros Cappuccino",
        "position": 2
      },
      {
        "id": "img-994242188-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284782/7261 100_Primea 1280x1280_3.png?v=639165230883600000",
        "alt": "Panela com Tampa NEXLAR Primea Ceramic Life Ø16cm 1,45 Litros Cappuccino",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242251",
    "name": "Panela com Tampa NEXLAR Antiaderente Ceramic Life Naturalle Ø18cm 1,75 Litros Champagne",
    "slug": "panela-com-tampa-nexlar-antiaderente-ceramic-life-naturalle-18cm-1-75-litro",
    "sku": "NX-7262357",
    "short_description": "Panela com Tampa NEXLAR Antiaderente Ceramic Life Naturalle Ø18 x 8 cm 1,75L Champagne – Design Natural com Performance no Dia a Dia\nCom vis...",
    "description": "Panela com Tampa NEXLAR Antiaderente Ceramic Life Naturalle Ø18 x 8 cm 1,75L Champagne – Design Natural com Performance no Dia a Dia\nCom visual leve e acabamento sofisticado na cor Champagne, a Panela Ø18cm da linha Ceramic Life Naturalle da NEXLAR combina funcionalidade, resistência e beleza para tornar o preparo das suas refeições mais prático e prazeroso.\nCom 1,75 litro de capacidade, é ideal para porções médias de arroz, legumes, molhos ou caldos. Seu revestimento antiaderente cerâmico Pro-Ceramic, livre de PFOA, evita que os alimentos grudem, facilita a limpeza e permite cozinhar com menos óleo, contribuindo para uma alimentação mais saudável.\nA estrutura em alumínio proporciona aquecimento rápido e homogêneo, otimizando o tempo na cozinha. A tampa de vidro temperado com saída para vapor permite o acompanhamento do preparo sem perder temperatura. O cabo em baquelite tem toque confortável, é resistente ao calor e garante segurança no manuseio.\nDestaques que fazem a diferença:\n\n\nRevestimento Pro-Ceramic: antiaderente cerâmico, mais saudável e fácil de limpar\n\n\nLivre de PFOA: mais segurança para sua saúde e o meio ambiente\n\n\nEstrutura em alumínio: distribuição de calor rápida e uniforme\n\n\nTampa de vidro temperado com saída de vapor: controle e vedação eficiente\n\n\nCabo em baquelite: resistente ao calor, seguro e confortável no uso\n\n\nAlta resistência térmica para o uso diário\n\n\nCompatível com fogões a gás, elétrico e vitrocerâmico\n\n\nNão compatível com fogão de indução\n\n\nCaracterísticas técnicas:• Produto: Panela com Tampa• Linha: NEXLAR Ceramic Life Naturalle• Capacidade: 1,75 Litros• Dimensões: Ø 18 x 8 cm• Material: Alumínio com revestimento cerâmico antiaderente• Cor: Champagne• Cabo: Baquelite com isolamento térmico• Tampa: Vidro temperado com saída de vapor• Compatibilidade: Fogões a gás, elétricos e vitrocerâmicos• Restrição: Não vai ao forno e não é compatível com indução\nPerfeita para o uso diário, a Panela Ø18cm Ceramic Life Naturalle Champagne entrega a combinação ideal entre design, segurança e eficiência na cozinha.\n \nAdquira a sua agora e cozinhe com mais leveza, praticidade e estilo!",
    "category_id": "cat-pressao",
    "categories": {
      "name": "Panelas de Pressão",
      "slug": "panelas-de-pressao"
    },
    "price": 96.99,
    "compare_at_price": 121.24,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 104,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.110Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7262357",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242251-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284866/01 - 1280x1280.png?v=639165405962430000",
        "alt": "Panela com Tampa NEXLAR Antiaderente Ceramic Life Naturalle Ø18cm 1,75 Litros Champagne",
        "position": 0
      },
      {
        "id": "img-994242251-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284867/02 - 1280x1280.png?v=639165405962600000",
        "alt": "Panela com Tampa NEXLAR Antiaderente Ceramic Life Naturalle Ø18cm 1,75 Litros Champagne",
        "position": 1
      },
      {
        "id": "img-994242251-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284868/03 - 1280x1280.png?v=639165405962600000",
        "alt": "Panela com Tampa NEXLAR Antiaderente Ceramic Life Naturalle Ø18cm 1,75 Litros Champagne",
        "position": 2
      },
      {
        "id": "img-994242251-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284869/04 - 1280x1280.png?v=639165405962770000",
        "alt": "Panela com Tampa NEXLAR Antiaderente Ceramic Life Naturalle Ø18cm 1,75 Litros Champagne",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-4953103",
    "name": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Vanilla",
    "slug": "panela-de-pressao-inducao-nexlar-antiaderente-ceramic-life-pressure-5-4-lit",
    "sku": "NX-4953103",
    "short_description": "A Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Ø22cm Vanilla é a escolha ideal para quem quer cozinhar com...",
    "description": "A Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Ø22cm Vanilla é a escolha ideal para quem quer cozinhar com mais agilidade, segurança e um visual elegante na cozinha. Com capacidade de 5,4 L, ela atende muito bem refeições para a família e receitas maiores, preservando sabor e nutrientes graças ao cozimento por pressão e à estrutura em alumínio, que distribui o calor de forma uniforme e acelera a cocção.O revestimento cerâmico antiaderente Pro-Ceramic Premium facilita o preparo com menos óleo, evita que os alimentos grudem e torna a limpeza mais prática. Além disso, é livre de PFOA e metais pesados, trazendo mais tranquilidade para o uso diário. Para completar a versatilidade, a panela conta com fundo de indução, sendo compatível com todos os tipos de fogão: indução, gás, elétrico e vitrocerâmico.Segurança é prioridade: o modelo possui quatro dispositivos de segurança (trava de segurança, válvula de segurança, válvula de trabalho e escape de segurança), oferecendo um uso mais confiável sob pressão. O fechamento externo, as alças e o cabo em baquelite antitérmico com acabamento soft-touch garantem manuseio confortável e firme, com toque agradável no dia a dia. O acabamento na cor Vanilla, com detalhes em tom amadeirado, adiciona um toque contemporâneo e acolhedor à decoração.O produto possui certificação compulsória (OCP 0003), registro 003497/2020 e classificação de antiaderência A (ótima), conforme Portaria Inmetro 499/2021, além de garantia de 1 ano para defeitos de fabricação. Para manter o desempenho do antiaderente, faça a cura antes do primeiro uso, evite choques térmicos e lave sempre à mão com esponja macia e sabão neutro. Escolha a Panela de Pressão NEXLAR Ceramic Life Pressure 5,4 L Vanilla e garanta a sua agora.Principais benefícios:Capacidade de 5,4 L: ideal para receitas maiores e rotina da famíliaFundo de indução: compatível com todos os tipos de fogãoRevestimento Pro-Ceramic Premium: não gruda e limpa fácilLivre de PFOA e metais pesados: mais segurança no preparoAlumínio: aquecimento uniforme e preparo mais rápido4 dispositivos de segurança: mais tranquilidade no uso sob pressãoBaquelite antitérmico com soft-touch: manuseio confortável e seguroInmetro: classificação de antiaderência A (ótima)Garantia de 1 ano para defeitos de fabricaçãoEspecificações:Produto: Panela de Pressão Indução NEXLAR Ceramic Life PressureCapacidade: 5,4 litrosDiâmetro: 22 cmMaterial: alumínioRevestimento: cerâmico antiaderente Pro-Ceramic PremiumCor: VanillaCabos/alças: baquelite antitérmico com soft-touchCompatibilidade: indução, gás, elétrico e vitrocerâmicoCertificação: OCP 0003 (registro 003497/2020) | Inmetro antiaderência A (Portaria 499/2021)Instruções de uso e cuidados:Faça a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com água morna, esponja macia e sabão neutro/detergenteSe precisar esfregar, use materiais não abrasivosNão utilizar em micro-ondas, lava-louças ou fornoComplete agora sua cozinha com a Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Ø22cm Vanilla.",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 299.99,
    "compare_at_price": 539.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 97,
    "free_shipping": true,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4953103",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-4953103-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287081/5,4L - Pressure Vanilla.png?v=639239403720670000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Vanilla",
        "position": 0
      },
      {
        "id": "img-4953103-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287082/4953_103---1.jpg?v=639239403720800000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Vanilla",
        "position": 1
      },
      {
        "id": "img-4953103-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287083/4953_103---2.jpg?v=639239403720800000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Vanilla",
        "position": 2
      },
      {
        "id": "img-4953103-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287084/4953_103---3.jpg?v=639239403720800000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life Pressure 5,4 Litros Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-4953100",
    "name": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Preto",
    "slug": "panela-de-pressao-inducao-nexlar-pressure-antiaderente-ceramic-life-5-4-lit",
    "sku": "NX-4953100",
    "short_description": "A Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Preta é perfeita para quem quer mais eficiência e praticida...",
    "description": "A Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Preta é perfeita para quem quer mais eficiência e praticidade na rotina. Com capacidade de 5,4 L, ela atende muito bem preparos para a família, agilizando receitas como feijão, carnes, sopas, caldos e legumes. O sistema de pressão reduz o tempo de cozimento e, somado ao corpo e tampa em alumínio, garante aquecimento rápido e cocção uniforme, com resultados consistentes em menos tempo.O revestimento interno antiaderente Pro Ceramic, desenvolvido com mini partículas de cerâmica, ajuda a cozinhar com menos óleo, evita que os alimentos grudem e facilita a limpeza após o uso. Além disso, é uma tecnologia mais saudável e sustentável por ser PFOA free, oferecendo mais tranquilidade no dia a dia.A panela possui fundo de indução e é compatível com todos os tipos de fogão — indução, gás, elétrico e vitrocerâmico — trazendo versatilidade para diferentes cozinhas. No manuseio, o cabo e a alça em baquelite oferecem firmeza e segurança. Com acabamento preto, o visual é moderno e combina facilmente com diferentes estilos.O produto conta com certificação compulsória (OCP 0003), registro 003497/2020 e classificação de antiaderência A (ótima), conforme Portaria Inmetro 499/2021. Para manter o desempenho do antiaderente, realize a cura antes do primeiro uso, evite choques térmicos e lave sempre à mão com esponja macia e sabão neutro. Escolha a Panela de Pressão NEXLAR Pressure 5,4 L Preta e garanta a sua agora.Principais benefícios:Capacidade de 5,4 L: ideal para receitas maiores e rotina da famíliaFundo de indução: compatível com todos os tipos de fogãoCorpo e tampa em alumínio: aquecimento rápido e cocção uniformeAntiaderente Pro Ceramic: não gruda e limpa fácilCozinha com menos óleo: preparo mais levePFOA free: mais segurança e tranquilidade no usoCabo e alça em baquelite: manuseio firme e confortávelInmetro: classificação de antiaderência A (ótima)Especificações:Produto: Panela de Pressão Indução NEXLAR Pressure Ceramic LifeCapacidade: 5,4 litrosMaterial: alumínio (corpo e tampa)Revestimento interno: antiaderente Pro Ceramic (partículas de cerâmica)Cor: PretaCabos/alças: baqueliteCompatibilidade: indução, gás, elétrico e vitrocerâmicoCertificação: OCP 0003 (registro 003497/2020) | Inmetro antiaderência A (Portaria 499/2021)Instruções de uso e cuidados:Faça a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com água morna, esponja macia e sabão neutro/detergenteSe precisar esfregar, use materiais não abrasivosNão utilizar em micro-ondas, lava-louças ou fornoGaranta a sua Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 L Preta e cozinhe com mais praticidade, segurança e eficiência todos os dias.",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 259.99,
    "compare_at_price": 539.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 76,
    "free_shipping": true,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4953100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-4953100-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287089/5,4L - Pressure Preto.png?v=639239404115670000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Preto",
        "position": 0
      },
      {
        "id": "img-4953100-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287090/panela-de-pressao-revestimento-ceramico-fundo-de-inducao-linha-ceramic-life-pressure-brinox.jpg?v=639239404115670000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Preto",
        "position": 1
      },
      {
        "id": "img-4953100-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287091/panela-de-pressao-fundo-de-inducao-linha-pressure-cor-preto-brinox.jpg?v=639239404115800000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Preto",
        "position": 2
      },
      {
        "id": "img-4953100-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287092/panela-de-pressao-linha-ceramic-life-pressure-cor-preto-de-inducao-brinox.jpg?v=639239404115800000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Preto",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-4952105",
    "name": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 4,2 Litros Areia",
    "slug": "panela-de-pressao-inducao-nexlar-pressure-antiaderente-ceramic-life-4-2-lit",
    "sku": "NX-4952105",
    "short_description": "A Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 4,2 Litros Areia foi feita para quem quer ganhar tempo na cozinha sem...",
    "description": "A Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 4,2 Litros Areia foi feita para quem quer ganhar tempo na cozinha sem abrir mão de segurança e um acabamento elegante. Com capacidade de 4,2 L, ela é ideal para acelerar receitas do dia a dia, como feijão, carnes, sopas e caldos, aproveitando o cozimento por pressão e a eficiência térmica da estrutura em alumínio, que aquece rápido e distribui o calor de forma uniforme.O revestimento cerâmico antiaderente ajuda a cozinhar com menos óleo, evita que os alimentos grudem e facilita a limpeza depois do uso, tornando a rotina mais prática. E como tem fundo de indução, a panela é compatível com todos os tipos de fogão — indução, gás, elétrico e vitrocerâmico —, trazendo versatilidade para diferentes cozinhas.No uso, a segurança é prioridade: o modelo conta com três dispositivos de segurança para um funcionamento mais confiável durante a pressão, oferecendo mais tranquilidade em cada preparo. Para completar, o cabo e a alça foram pensados para um manuseio confortável, com revestimento soft-touch e toque macio, ajudando a segurar com firmeza e segurança.O design na cor Areia adiciona um visual moderno e sofisticado, combinando facilmente com diferentes estilos de decoração. Para manter o desempenho do revestimento, faça a cura antes do primeiro uso, evite choques térmicos e lave sempre à mão com esponja macia e sabão neutro. Leve mais eficiência e confiança para a sua rotina com a Panela de Pressão NEXLAR Ceramic Life Pressure 4,2 L Areia e garanta a sua agora.Principais benefícios:Capacidade de 4,2 L: ideal para receitas do dia a diaFundo de indução: compatível com todos os tipos de fogãoRevestimento cerâmico antiaderente: menos óleo e limpeza mais práticaEstrutura em alumínio: aquecimento rápido e calor uniformeTrês dispositivos de segurança: mais tranquilidade no uso sob pressãoCabo/alça com soft-touch: toque macio e manuseio confortávelCor Areia: visual moderno e fácil de combinarEspecificações:Produto: Panela de Pressão Indução NEXLAR Pressure Ceramic LifeCapacidade: 4,2 litrosMaterial: alumínioRevestimento: cerâmico antiaderenteCor: AreiaCompatibilidade: indução, gás, elétrico e vitrocerâmicoSegurança: 3 dispositivos de segurançaCabo/alça: com revestimento soft-touchInstruções de uso e cuidados:Realize a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com esponja macia e sabão neutroNão utilizar em micro-ondas, lava-louças ou fornoCom a Panela de Pressão NEXLAR Ceramic Life Pressure, você alia desempenho, saúde e sofisticação em cada preparo. Cozinhe com mais praticidade e confiança!",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 249.99,
    "compare_at_price": 499.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 46,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4952105",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-4952105-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287138/4,2L - Areia.png?v=639239464019800000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 4,2 Litros Areia",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-4953202",
    "name": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Borgonha",
    "slug": "panela-de-pressao-inducao-nexlar-pressure-antiaderente-ceramic-life-5-4-lit-4953202",
    "sku": "NX-4953202",
    "short_description": "A Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Borgonha é a combinação certa de eficiência e praticidade p...",
    "description": "A Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Borgonha é a combinação certa de eficiência e praticidade para a rotina. Com capacidade de 5,4 L, ela atende muito bem receitas para a família, agilizando o preparo de feijão, carnes, sopas, caldos e legumes. O sistema de pressão reduz o tempo de cozimento e, junto ao corpo e tampa em alumínio, garante aquecimento rápido e cocção uniforme, com resultados consistentes em menos tempo.O revestimento interno antiaderente Pro Ceramic, desenvolvido com mini partículas de cerâmica, ajuda a cozinhar com menos óleo, evita que os alimentos grudem e facilita a limpeza após o uso. Além disso, é uma tecnologia mais saudável e sustentável por ser PFOA free, trazendo mais tranquilidade no dia a dia.Com fundo de indução, a panela é compatível com todos os tipos de fogão — indução, gás, elétrico e vitrocerâmico — oferecendo versatilidade para diferentes cozinhas. No manuseio, o cabo e a alça em baquelite permitem uma pegada firme e segura. O acabamento em vermelho borgonha adiciona personalidade e sofisticação, deixando a cozinha ainda mais bonita.O produto conta com certificação compulsória (OCP 0003), registro 003497/2020 e classificação de antiaderência A (ótima), conforme Portaria Inmetro 499/2021. Para manter o desempenho do antiaderente, realize a cura antes do primeiro uso, evite choques térmicos e lave sempre à mão com esponja macia e sabão neutro. Escolha a Panela de Pressão NEXLAR Pressure 5,4 L Borgonha e garanta a sua agora.Principais benefícios:Capacidade de 5,4 L: ideal para receitas maiores e rotina da famíliaFundo de indução: compatível com todos os tipos de fogãoCorpo e tampa em alumínio: aquecimento rápido e cocção uniformeAntiaderente Pro Ceramic: não gruda e limpa fácilCozinha com menos óleo: preparo mais levePFOA free: mais segurança e tranquilidade no usoCabo e alça em baquelite: manuseio firme e confortávelInmetro: classificação de antiaderência A (ótima)Cor borgonha: visual marcante e sofisticadoEspecificações:Produto: Panela de Pressão Indução NEXLAR Pressure Ceramic LifeCapacidade: 5,4 litrosMaterial: alumínio (corpo e tampa)Revestimento interno: antiaderente Pro Ceramic (partículas de cerâmica)Cor: Vermelho BorgonhaCabos/alças: baqueliteCompatibilidade: indução, gás, elétrico e vitrocerâmicoMedidas: 24 cm de diâmetro x 24 cm de alturaCertificação: OCP 0003 (registro 003497/2020) | Inmetro antiaderência A (Portaria 499/2021)Instruções de uso e cuidados:Faça a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com água morna, esponja macia e sabão neutro/detergenteSe precisar esfregar, use materiais não abrasivosNão utilizar em micro-ondas, lava-louças ou fornoGaranta a sua Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 L Vermelho Borgonha e cozinhe com mais praticidade, segurança e um toque de cor na sua cozinha.",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 229.99,
    "compare_at_price": 499.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 87,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4953202",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-4953202-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287095/5.4L - Pressure Borgonha.png?v=639239404359400000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Borgonha",
        "position": 0
      },
      {
        "id": "img-4953202-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287096/4953_202---1.jpg?v=639239404359570000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Borgonha",
        "position": 1
      },
      {
        "id": "img-4953202-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287097/4953_202---2.jpg?v=639239404359570000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Borgonha",
        "position": 2
      },
      {
        "id": "img-4953202-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287098/4953_202---3.jpg?v=639239404359570000",
        "alt": "Panela de Pressão Indução NEXLAR Pressure Antiaderente Ceramic Life 5,4 Litros Borgonha",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-7239192",
    "name": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Ø20cm Vanilla",
    "slug": "panela-de-pressao-nexlar-vapt-antiaderente-ceramic-life-3-litros-20cm-vanil",
    "sku": "NX-7239192",
    "short_description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Ø20 cm Vanilla é a escolha ideal para quem quer mais praticidade no dia a...",
    "description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Ø20 cm Vanilla é a escolha ideal para quem quer mais praticidade no dia a dia, com segurança e um visual elegante na cozinha. Com capacidade de 3 L, ela é perfeita para preparos menores e receitas rápidas, como feijão em menor quantidade, carnes, caldos, sopas e legumes, otimizando o tempo graças ao sistema de pressão e à estrutura em alumínio de alta qualidade, que favorece cozimento rápido e uniforme.Um dos grandes diferenciais da linha Vapt é o fechamento interno, um recurso exclusivo na categoria, pensado para oferecer uma experiência de uso mais prática e eficiente. Para completar, o revestimento antiaderente Mineral Resist com seis camadas e partículas cerâmicas evita que os alimentos grudem, permite cozinhar com menos óleo e facilita muito a limpeza após o uso. Além disso, é PFOA free, livre de metais pesados e possui classificação A de antiaderência pelo Inmetro, reforçando desempenho e confiança na rotina.A segurança também é prioridade: a panela conta com três dispositivos de segurança — trava no cabo, válvula de segurança e válvula de trabalho — oferecendo mais tranquilidade durante o cozimento sob pressão. Os cabos e alças em baquelite antitérmico garantem manuseio firme e confortável, mesmo com a panela aquecida. O acabamento na cor Vanilla adiciona um toque contemporâneo e fácil de combinar, valorizando diferentes estilos de cozinha.Produzida no Brasil com energia 100% renovável e alto padrão de qualidade, a Panela de Pressão NEXLAR Vapt une desempenho e cuidado em cada detalhe. Para manter o antiaderente sempre eficiente, faça a cura antes do primeiro uso, evite choques térmicos e lave à mão com esponja macia e sabão neutro. Escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 3 L Vanilla e garanta a sua agora.Principais benefícios:Capacidade de 3 L: ideal para porções menores e receitas rápidasEstrutura em alumínio: aquecimento rápido e cozimento uniformeMineral Resist (6 camadas): não gruda e limpa fácilCozinha com menos óleo: preparo mais leve no dia a diaPFOA free e livre de metais pesados: mais segurança no usoFechamento interno: diferencial exclusivo na categoria3 dispositivos de segurança: trava no cabo + válvula de segurança + válvula de trabalhoCabos e alças em baquelite antitérmico: conforto e proteçãoProdução nacional com energia 100% renovávelCor Vanilla: visual moderno e eleganteEspecificações:Produto: Panela de Pressão NEXLAR Vapt Ceramic LifeCapacidade: 3 litrosDiâmetro: 20 cmMaterial: alumínioRevestimento: antiaderente Mineral Resist (partículas cerâmicas, 6 camadas)Cor: VanillaCabos/alças: baquelite antitérmicoSegurança: 3 dispositivos (trava no cabo, válvula de segurança e válvula de trabalho)Diferencial: fechamento internoInstruções de uso e cuidados:Realize a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com esponja macia e sabão neutroNão utilizar em micro-ondas, lava-louças ou fornoGaranta a sua Panela de Pressão NEXLAR Vapt 3 L Ø20 cm Vanilla e cozinhe com mais eficiência, segurança e praticidade todos os dias.",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 189.99,
    "compare_at_price": 279.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 106,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7239192",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-7239192-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287057/4---1280x1280-1.png?v=639238892771000000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Ø20cm Vanilla",
        "position": 0
      },
      {
        "id": "img-7239192-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287055/1280x1280---2026-01-14T095005.333.jpg?v=639238892770870000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Ø20cm Vanilla",
        "position": 1
      },
      {
        "id": "img-7239192-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287056/1280x1280---2026-01-14T095021.446.jpg?v=639238892770930000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Ø20cm Vanilla",
        "position": 2
      },
      {
        "id": "img-7239192-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287051/3L - Vapt Vanilla.png?v=639238892770230000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 3 Litros Ø20cm Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-7239193",
    "name": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Ø24cm Vanilla",
    "slug": "panela-de-pressao-nexlar-vapt-antiaderente-ceramic-life-7-5-litros-24cm-van",
    "sku": "NX-7239193",
    "short_description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Ø24 cm Vanilla é perfeita para quem precisa de mais capacidade na cozin...",
    "description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Ø24 cm Vanilla é perfeita para quem precisa de mais capacidade na cozinha sem abrir mão de segurança, praticidade e um visual sofisticado. Ideal para refeições em família e preparos maiores, ela agiliza receitas como feijão, carnes, caldos, sopas e legumes, aproveitando o sistema de pressão e a estrutura em alumínio de alta qualidade, que favorece o cozimento rápido e uniforme.Um dos grandes diferenciais da linha Vapt é o fechamento interno, um recurso exclusivo na categoria, pensado para oferecer uma experiência de uso mais prática e eficiente. Para completar, o revestimento antiaderente Mineral Resist com seis camadas e partículas cerâmicas evita que os alimentos grudem, permite cozinhar com menos óleo e facilita muito a limpeza após o uso. Além disso, é PFOA free, livre de metais pesados e possui classificação A de antiaderência pelo Inmetro, reforçando desempenho e confiança no dia a dia.A segurança é prioridade: a panela conta com três dispositivos de segurança — trava no cabo, válvula de segurança e válvula de trabalho — para oferecer mais tranquilidade durante o cozimento sob pressão. Os cabos e alças em baquelite antitérmico garantem manuseio firme e confortável, mesmo com a panela aquecida. O acabamento na cor Vanilla adiciona um toque contemporâneo e elegante, combinando com diferentes estilos de cozinha.Produzida no Brasil com energia 100% renovável e alto padrão de qualidade, a Panela de Pressão NEXLAR Vapt ainda conta com garantia de 1 ano para defeitos de fabricação. Se você quer uma panela de pressão espaçosa, fácil de limpar e feita para acompanhar a rotina, escolha a NEXLAR Ceramic Life Vapt 7,5 L Vanilla e garanta a sua agora.Principais benefícios:Capacidade de 7,5 L: ideal para receitas maiores e preparo em famíliaEstrutura em alumínio: aquecimento rápido e cozimento uniformeMineral Resist (6 camadas): não gruda e limpa fácilCozinha com menos óleo: preparo mais leve no dia a diaPFOA free e livre de metais pesados: mais segurança no usoFechamento interno: diferencial exclusivo na categoria3 dispositivos de segurança: trava no cabo + válvula de segurança + válvula de trabalhoCabos e alças em baquelite antitérmico: conforto e proteçãoProdução nacional com energia 100% renovávelGarantia de 1 ano: para defeitos de fabricaçãoCor Vanilla: visual moderno e eleganteEspecificações:Produto: Panela de Pressão NEXLAR Vapt Ceramic LifeCapacidade: 7,5 litrosDiâmetro: 24 cmMaterial: alumínioRevestimento: antiaderente Mineral Resist (partículas cerâmicas, 6 camadas)Cor: VanillaCabos/alças: baquelite antitérmicoSegurança: 3 dispositivos (trava no cabo, válvula de segurança e válvula de trabalho)Diferencial: fechamento internoGarantia: 1 anoCuidados de uso:Realize a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com esponja macia e sabão neutroNão utilizar em micro-ondas, lava-louças ou fornoGaranta a sua Panela de Pressão NEXLAR Vapt 7,5 L Ø24 cm Vanilla e cozinhe com mais eficiência, segurança e praticidade todos os dias.",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 299.99,
    "compare_at_price": 399.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 212,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7239193",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-7239193-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287123/1280x1280---2026-01-14T101259.608.jpg?v=639239410145430000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Ø24cm Vanilla",
        "position": 0
      },
      {
        "id": "img-7239193-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287124/1280x1280---2026-01-14T101314.703.jpg?v=639239410145430000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Ø24cm Vanilla",
        "position": 1
      },
      {
        "id": "img-7239193-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287126/1280x1280---2026-01-14T092742.186.jpg?v=639239410145600000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Ø24cm Vanilla",
        "position": 2
      },
      {
        "id": "img-7239193-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287127/1280x1280---2026-01-14T092814.236.jpg?v=639239410145600000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 7,5 Litros Ø24cm Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-7239170",
    "name": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Ø20cm Vanilla",
    "slug": "panela-de-pressao-nexlar-vapt-antiaderente-ceramic-life-4-5-litros-20cm-van",
    "sku": "NX-7239170",
    "short_description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Ø20 cm Vanilla foi criada para quem busca mais praticidade no dia a dia...",
    "description": "A Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Ø20 cm Vanilla foi criada para quem busca mais praticidade no dia a dia, com segurança e um visual elegante na cozinha. Com estrutura em alumínio de alta qualidade, ela promove cozimento rápido e uniforme, ideal para receitas como feijão, carnes, caldos, sopas e legumes, otimizando seu tempo sem abrir mão do resultado.Um dos grandes diferenciais da linha Vapt é o fechamento interno, um recurso exclusivo na categoria, que contribui para um uso mais prático e uma experiência ainda mais eficiente no preparo. Para completar, o revestimento antiaderente Mineral Resist com seis camadas e partículas cerâmicas evita que os alimentos grudem, permite cozinhar com menos óleo e facilita a limpeza após o uso. Além disso, é PFOA free, livre de metais pesados e conta com classificação A de antiaderência pelo Inmetro, reforçando a segurança e a alta performance.No uso, a tranquilidade vem em primeiro lugar. A panela conta com três dispositivos de segurança — trava no cabo, válvula de segurança e válvula de trabalho —, desenvolvidos para oferecer mais confiança durante o cozimento sob pressão. Os cabos e alças em baquelite antitérmico garantem manuseio firme e confortável, mesmo com a panela aquecida. O acabamento na cor Vanilla adiciona um toque contemporâneo e fácil de combinar, valorizando diferentes estilos de cozinha.Produzida no Brasil com energia 100% renovável e alto padrão de qualidade, a Panela de Pressão NEXLAR Vapt ainda conta com garantia de 1 ano para defeitos de fabricação. Para manter o desempenho do revestimento, faça a cura antes do primeiro uso, evite choques térmicos e lave sempre à mão com esponja macia e sabão neutro. Escolha a Panela de Pressão NEXLAR Ceramic Life Vapt 4,5 L Vanilla e garanta a sua agora.Principais benefícios:Capacidade de 4,5 L: ideal para a rotina e receitas especiaisEstrutura em alumínio: aquecimento rápido e cozimento uniformeMineral Resist (6 camadas): não gruda e limpa fácilCozinha com menos óleo: preparo mais leve no dia a diaPFOA free e livre de metais pesados: mais segurança no usoFechamento interno: diferencial exclusivo na categoria3 dispositivos de segurança: trava no cabo + válvula de segurança + válvula de trabalhoCabos e alças em baquelite antitérmico: conforto e proteçãoProdução nacional com energia 100% renovávelGarantia de 1 ano: para defeitos de fabricaçãoCor Vanilla: visual moderno e eleganteEspecificações:Produto: Panela de Pressão NEXLAR Vapt Ceramic LifeCapacidade: 4,5 litrosDiâmetro: 20 cmMaterial: alumínioRevestimento: antiaderente Mineral Resist (partículas cerâmicas, 6 camadas)Cor: VanillaCabos/alças: baquelite antitérmicoSegurança: 3 dispositivos (trava no cabo, válvula de segurança e válvula de trabalho)Diferencial: fechamento internoGarantia: 1 anoInstruções de uso e cuidados:Realize a cura do revestimento antes do primeiro usoEvite choques térmicos e lave à mão com esponja macia e sabão neutroNão utilizar em micro-ondas, lava-louças ou fornoGaranta a sua Panela de Pressão NEXLAR Vapt 4,5 L Ø20 cm Vanilla e cozinhe com mais eficiência, segurança e praticidade todos os dias.",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 209.99,
    "compare_at_price": 309.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 151,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "7239170",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-7239170-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287068/1280x1280---2026-01-14T100713.659.jpg?v=639238893713870000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Ø20cm Vanilla",
        "position": 0
      },
      {
        "id": "img-7239170-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287069/1280x1280---2026-01-14T100728.542.jpg?v=639238893713900000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Ø20cm Vanilla",
        "position": 1
      },
      {
        "id": "img-7239170-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287070/1280x1280---2026-01-14T100757.971.jpg?v=639238893713930000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Ø20cm Vanilla",
        "position": 2
      },
      {
        "id": "img-7239170-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287062/4,5L - Vapt Vanilla.png?v=639238893713370000",
        "alt": "Panela de Pressão NEXLAR Vapt Antiaderente Ceramic Life 4,5 Litros Ø20cm Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-4952205",
    "name": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life 4,2 L Marble Blend Cinza Claro",
    "slug": "panela-de-pressao-inducao-nexlar-antiaderente-ceramic-life-4-2-l-marble-ble",
    "sku": "NX-4952205",
    "short_description": "A Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life 4,2 L Marble Blend Cinza Claro combina agilidade no preparo e um visual contemp...",
    "description": "A Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life 4,2 L Marble Blend Cinza Claro combina agilidade no preparo e um visual contemporâneo. Com fundo de indução, pode ser usada em todos os tipos de fogão (gás, elétrico, vitrocerâmico e indução), facilitando receitas do dia a dia e preparos especiais.A estrutura em alumínio distribui o calor de forma homogênea, ajudando a cozinhar por igual e otimizando o tempo. O antiaderente Ceramic Life, com mini partículas de cerâmica e tecnologia Pro Ceramic, reduz a necessidade de óleo e torna a limpeza mais prática. Por fora, o acabamento cinza claro com efeito marmorizado (Marble Blend) traz elegância para a cozinha.Para um uso mais tranquilo, ela conta com quatro dispositivos de segurança: trava de segurança, válvula de segurança, válvula de trabalho e escape de segurança. O cabo e a alça em baquelite oferecem manuseio seguro. O produto possui certificação compulsória (OCP 0003, registro 003497/2020) e classificação de antiaderência A (ótima), conforme Portaria Inmetro 499/2021.Principais benefícios:4,2 L: capacidade ideal para a rotinaFundo de indução: compatível com todos os fogõesAntiaderente Ceramic Life com partículas de cerâmica: cozinha com menos óleo e limpa fácilAlumínio: aquecimento uniforme e preparo mais rápido4 dispositivos de segurança: mais confiança no usoCabo e alça em baquelite: conforto e segurançaCinza claro marmorizado: visual modernoEspecificações:Capacidade: 4,2 LMedidas: 20 cm de diâmetro x 23 cm de alturaMaterial: alumínioRevestimento: antiaderente Ceramic Life (tecnologia Pro Ceramic)Cor: Marble Blend cinza claro (efeito marmorizado)Certificação: OCP 0003 (registro 003497/2020) | Inmetro antiaderência A (Portaria 499/2021)Para preservar o desempenho do antiaderente, faça a cura antes do primeiro uso e evite choques térmicos; lave à mão com esponja macia e sabão neutro. Escolha a Panela de Pressão NEXLAR Ceramic Life Marble Blend 4,2 L e garanta a sua agora.Antes de utilizar realize a cura do revestimento: Unte a parte interna com óleo ou qualquer outro tipo de gorduraLeve o produto ao fogo baixo até aquecer o conteúdo e deixe esfriarDescarte o conteúdo e repita a lavagem e secagem para eliminar qualquer resíduoApós o uso, evite choques térmicos, lave-o à mão, com água morna e esponja macia com sabão neutro ou detergenteSe for necessário esfregar, use materiais não abrasivos.A Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life 4,2 L Marble Blend Cinza Claro é a melhor escolha em segurança, praticidade e um visual moderno para a sua cozinha — garanta a sua agora e simplifique suas receitas do dia a dia.",
    "category_id": "cat-eletro",
    "categories": {
      "name": "Eletroportáteis",
      "slug": "eletroportateis"
    },
    "price": 249.99,
    "compare_at_price": 499.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 65,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:33.913Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4952205",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-4952205-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287019/4,2L - Marble Blend.png?v=639238890838900000",
        "alt": "Panela de Pressão Indução NEXLAR Antiaderente Ceramic Life 4,2 L Marble Blend Cinza Claro",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-994242218",
    "name": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox",
    "slug": "lixeira-com-pedal-e-balde-nexlar-matte-5-litros-inox",
    "sku": "NX-3069100",
    "short_description": "A Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox é a escolha ideal para quem busca mais praticidade, higiene e um visual moderno para...",
    "description": "A Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox é a escolha ideal para quem busca mais praticidade, higiene e um visual moderno para diferentes ambientes da casa ou do trabalho. Com capacidade de 5 litros, ela é perfeita para cozinhas, banheiros, lavabos e escritórios, oferecendo uma solução funcional para o descarte de resíduos no dia a dia.Equipada com pedal resistente, a lixeira permite a abertura da tampa sem o uso das mãos, o que contribui para uma rotina mais higiênica e prática. A tampa com abertura de até 90° facilita o descarte e também torna a troca do saco de lixo mais simples, trazendo mais agilidade para o uso diário.Outro diferencial é o sistema de fechamento suave, que evita ruídos e impactos bruscos ao fechar a tampa, proporcionando mais conforto no ambiente. O balde interno removível facilita a retirada do lixo e a limpeza da peça, ajudando a manter a organização com mais eficiência. Com acabamento matte na cor inox, a Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox combina elegância e versatilidade, harmonizando com diferentes estilos de decoração.A Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox reúne funcionalidade, praticidade e um acabamento sofisticado para tornar a rotina mais simples e organizada. Principais benefícios:Capacidade de 5 litros: ideal para cozinhas, banheiros e escritóriosPedal resistente: abertura prática sem o uso das mãosMais higiene no descarte diárioTampa com abertura de até 90°: facilita o uso e a troca do saco de lixoFechamento suave: evita ruídos e impactos bruscosBalde interno removível: mais praticidade na limpeza e na retirada do lixoAcabamento matte na cor inox: visual moderno e versátilDesign funcional para diferentes ambientesEspecificações:Produto: lixeira com pedal e baldeMarca: NEXLARLinha: MatteCapacidade: 5 litrosFormato: retangularMaterial: aço carbonoCor: inoxAcabamento: matteAbertura da tampa: até 90°Sistema de fechamento suavePossui balde interno removívelCuidados de uso:Limpe com pano macio e sabão neutroEvite o uso de materiais abrasivos para ajudar na conservação do acabamentoSeque após a limpeza para manter a peça sempre bem cuidadaUtilize em ambientes internos para melhor conservaçãoLeve mais higiene e eficiência para o seu ambiente com a Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox e compre agora.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 189.99,
    "compare_at_price": 239.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 106,
    "free_shipping": false,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:35.678Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "3069100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242218-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287727/Lixeira 5 L - Matte Inox.png?v=639251525655300000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox",
        "position": 0
      },
      {
        "id": "img-994242218-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287733/ChatGPT-Image-11-de-mai.-de-2026-13_38_33.png?v=639251525655600000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox",
        "position": 1
      },
      {
        "id": "img-994242218-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287728/3069_100---1.jpg?v=639251525655430000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox",
        "position": 2
      },
      {
        "id": "img-994242218-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287729/3069_100---2.jpg?v=639251525655430000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Inox",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242220",
    "name": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco",
    "slug": "lixeira-com-pedal-e-balde-nexlar-matte-5-litros-branco",
    "sku": "NX-3069102",
    "short_description": "A Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco é ideal para quem busca mais praticidade, higiene e um visual clean para diferentes...",
    "description": "A Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco é ideal para quem busca mais praticidade, higiene e um visual clean para diferentes ambientes da casa ou do trabalho. Com capacidade de 5 litros, ela é uma solução funcional para cozinhas, banheiros, lavabos e escritórios, ajudando a manter o espaço mais organizado no dia a dia.O acionamento por pedal permite abrir a tampa sem o uso das mãos, trazendo mais comodidade e contribuindo para uma rotina mais higiênica no descarte dos resíduos. A tampa com abertura de até 90° facilita o uso diário e também torna a troca do saco de lixo mais simples, oferecendo mais praticidade na manutenção.Outro diferencial é o sistema de fechamento suave, que evita ruídos e impactos bruscos ao fechar a tampa, proporcionando mais conforto no ambiente. O balde interno removível facilita a retirada do lixo e deixa a limpeza mais prática e organizada, tornando o uso ainda mais funcional.Com acabamento matte na cor branca, a Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco combina facilmente com diferentes estilos de decoração. Seu visual discreto e sofisticado ajuda a compor ambientes mais leves e modernos, sem abrir mão da eficiência no uso diário. As dimensões de 28,2 x 14 x 28,7 cm também favorecem o aproveitamento do espaço, sendo uma ótima escolha para quem procura praticidade em áreas compactas.A Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco reúne funcionalidade, conforto e um acabamento elegante para deixar a rotina mais simples e organizada. Principais benefícios:Capacidade de 5 litros: ideal para cozinhas, banheiros e escritóriosPedal: abertura prática sem o uso das mãosMais higiene no descarte diárioTampa com abertura de até 90°: facilita o uso e a troca do saco de lixoFechamento suave: evita ruídos e impactos bruscosBalde interno removível: mais praticidade na limpeza e na retirada do lixoAcabamento matte na cor branca: visual clean, moderno e versátilDimensões compactas: melhor aproveitamento do espaçoEspecificações:Produto: lixeira com pedal e baldeMarca: NEXLARLinha: MatteCapacidade: 5 litrosFormato: retangularCor: brancoAcabamento: matteAbertura da tampa: até 90°Sistema de fechamento suavePossui balde interno removívelDimensões: 28,2 x 14 x 28,7 cmCuidados de uso:Limpe com pano macio, esponja suave e sabão neutroEvite o uso de materiais abrasivos para ajudar na conservação do acabamentoSeque após a limpeza para manter a peça sempre bem cuidadaUtilize em ambientes internos para melhor conservaçãoLeve mais higiene e praticidade para o seu ambiente com a Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco e compre agora.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 189.99,
    "compare_at_price": 249.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 40,
    "free_shipping": false,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:35.678Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "3069102",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242220-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287716/Lixeira 5 L - Matte Branco.png?v=639251525307000000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco",
        "position": 0
      },
      {
        "id": "img-994242220-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287722/ChatGPT-Image-11-de-mai.-de-2026-13_40_29.png?v=639251525307600000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco",
        "position": 1
      },
      {
        "id": "img-994242220-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287717/3069_102---1.jpg?v=639251525307300000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco",
        "position": 2
      },
      {
        "id": "img-994242220-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287718/3069_102---2.jpg?v=639251525307300000",
        "alt": "Lixeira com Pedal e Balde NEXLAR Matte 5 Litros Branco",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242329",
    "name": "Lixeira NEXLAR Borboleta com Pedal 12 Litros Preta com Alça Light Gray",
    "slug": "lixeira-nexlar-borboleta-com-pedal-12-litros-preta-com-alca-light-gray",
    "sku": "NX-106610008",
    "short_description": "A Borboleta 12 litros é a medida baixa da linha: 27 cm de altura, pedal para abrir sem as mãos e abertura dupla lateral — duas metades que a...",
    "description": "A Borboleta 12 litros é a medida baixa da linha: 27 cm de altura, pedal para abrir sem as mãos e abertura dupla lateral — duas metades que abrem como asas, daí o nome. A Lixeira NEXLAR Borboleta com Pedal 12 Litros Preta com Alça Light Gray é a preta de alça clara. Separar. Abrir. Borboleta.Meça a altura, não a larguraÉ onde a compra dá errado: as três medidas da Borboleta têm a mesma frente de 32 cm. Se o seu problema é um vão estreito, nenhuma delas resolve. Esta resolve outro problema — o vão de altura. Com 27 cm, ela entra onde as de 42,5 — a de 20 litros e a dividida de 10+10 — não entram: prateleira baixa, nicho, interior de armário. Confira a altura livre do lugar antes de decidir.Você alcança o fundo sem enfiar o braçoUma consequência de 27 cm que só aparece no uso: o fundo fica ao alcance da mão. Quando algo cai dentro por engano — uma chave, uma tampa, um documento — ou quando o saco rasga e é preciso limpar o interior, a diferença entre 27 e 42,5 cm é entre abaixar a mão e enfiar o braço inteiro.Numa peça baixa, o topo é o que se vêQuem está de pé olha a lixeira de cima. Na de 42,5 cm o que aparece é a frente; nesta, com 27 cm, a tampa é a superfície dominante — e a alça está nela. Por isso a alça light gray num corpo preto muda mais aqui do que na versão alta: ela é a linha clara que atravessa exatamente o plano que você olha. E é também, na prática, o que a mão acha sem procurar.Material e conservaçãoPolipropileno (PP), reciclável, com acabamento acetinado — que devolve menos marca que um preto brilhante. Hastes em aço galvanizado. Limpeza com pano úmido e sabão neutro, ou pano com álcool, e o passo que prolonga a peça: secar as hastes depois.EspecificaçõesMedidas: 32 x 22,2 x 27 cmCapacidade: 12 litrosCor: corpo preto, alça light grayMaterial: polipropileno (PP), reciclávelHastes: aço galvanizadoAcabamento: acetinadoAbertura: pedal, dupla lateralAro: um, para saco de 12 ou 15 litrosLimpeza: pano úmido com sabão neutro ou álcool; secar as hastesPerguntas frequentesQuanto de chão a Lixeira NEXLAR Borboleta 12 Litros ocupa?32 x 22,2 cm — a mesma base das outras medidas da Borboleta. A diferença desta é a altura: 27 cm.Cabe dentro de um armário ou embaixo de uma prateleira?Depende da altura livre do lugar: a peça tem 27 cm. Meça o vão vertical, porque a frente de 32 cm é igual em todas as medidas da linha.Dá para alcançar o fundo?Sim, com 27 cm o fundo fica ao alcance da mão — o que resolve quando algo cai dentro por engano ou quando o saco rasga.Mostra marca de dedo?Menos que um preto brilhante: o acabamento é acetinado, que devolve menos marca.Por que a alça é clara?Porque numa peça de 27 cm quem está de pé vê principalmente a tampa, e a alça está nela. A linha clara fica no plano que você olha — e é o que a mão acha sem procurar.Sobre a alça: ela foi feita para reposicionar a lixeira, não para carregar o saco cheio. Puxão brusco com a peça cheia pode estourar a alça — para esvaziar, tire o saco do aro.Antes de escolher, meça a altura do vão: a frente de 32 cm é igual em toda a linha. Com a Lixeira NEXLAR Borboleta com Pedal 12 Litros Preta com Alça Light Gray, o que muda são os 27 cm. Leve a sua.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 69.99,
    "compare_at_price": 89.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 101,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:35.678Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "106610008",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242329-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287603/borboleta.png?v=639250665599630000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 12 Litros Preta com Alça Light Gray",
        "position": 0
      },
      {
        "id": "img-994242329-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287602/10661_0008.jpg?v=639250665599330000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 12 Litros Preta com Alça Light Gray",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-994242320",
    "name": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Preta com Alça Light Gray",
    "slug": "lixeira-nexlar-borboleta-com-pedal-20-litros-preta-com-alca-light-gray",
    "sku": "NX-106620008",
    "short_description": "A Borboleta 20 litros é a lixeira de um compartimento só: pedal para abrir sem as mãos, abertura dupla lateral — duas metades que abrem como...",
    "description": "A Borboleta 20 litros é a lixeira de um compartimento só: pedal para abrir sem as mãos, abertura dupla lateral — duas metades que abrem como asas, daí o nome — e um aro para saco de 20 litros. A Lixeira NEXLAR Borboleta com Pedal 20 Litros Preta com Alça Light Gray é a preta de alça clara. Separar. Abrir. Borboleta.O que cabe quando não tem divisóriaSem divisão no meio, a base de 32 x 22,2 cm fica inteira — e é aí que a versão de compartimento único ganha da dividida. Caixa de pizza dobrada, garrafa deitada, embalagem grande: o que atravessa a peça de um lado ao outro só entra onde não há parede no meio. Numa lixeira dividida, o mesmo item fica em pé na borda.Boca larga é o que o lixo de cozinha pedeLixo de cozinha não é fino. É casca em punhado, embalagem amassada, pote com resto — coisa que se joga com a mão aberta. Uma boca de 32 cm sem obstrução no meio aceita o punhado inteiro; uma boca dividida pede que você escolha o lado antes de soltar. É por isso que o catálogo indica esta versão para ambientes de maior produção de lixo: não é só o volume, é a velocidade de jogar.A alça clara corta a coluna pretaA peça é vertical: 42,5 cm de altura sobre 22,2 de profundidade. Um corpo preto inteiro nessa proporção lê como uma coluna. A alça light gray atravessa o topo e quebra essa vertical — a peça passa a ler como um volume com tampa, não como um bloco. E tem a função óbvia: embaixo da pia, é o claro que a mão encontra.PP, hastes de aço e o cuidado que importaCorpo de polipropileno (PP), reciclável, acabamento acetinado, que devolve menos marca que um preto brilhante. As hastes são de aço galvanizado e pedem uma coisa só: secar depois de limpar.EspecificaçõesMedidas: 32 x 22,2 x 42,5 cmCapacidade: 20 litros, compartimento únicoCor: corpo preto, alça light grayMaterial: polipropileno (PP), reciclávelHastes: aço galvanizadoAcabamento: acetinadoAbertura: pedal, dupla lateralAro: um, para saco de 20 litrosLimpeza: pano úmido com sabão neutro ou álcool; secar as hastesPerguntas frequentesQuanto de chão a Lixeira NEXLAR Borboleta 20 Litros ocupa?A base é de 32 x 22,2 cm e a altura é de 42,5 cm — quase duas vezes mais alta que funda.20 litros em um compartimento ou 10+10 divididos?A carcaça e a capacidade são iguais. Um compartimento só aceita item que atravessa a peça de um lado ao outro; o dividido separa seco de úmido. Um ou outro, não os dois.Cabe caixa de pizza?Dobrada, sim: sem divisória no meio, a base de 32 x 22,2 cm fica inteira e aceita o que atravessa a peça. Numa lixeira dividida, o mesmo item fica em pé na borda.Mostra marca de dedo?Menos que um preto brilhante: o acabamento é acetinado, que devolve menos marca.Por que a alça é clara?Por duas razões. Ela quebra a vertical de 42,5 cm, então a peça não lê como uma coluna preta. E é o claro que a mão encontra embaixo da pia, sem precisar olhar.Sobre a alça: ela foi feita para reposicionar a lixeira, não para carregar o saco cheio. Puxão brusco com a peça cheia pode estourar a alça — para esvaziar, tire o saco do aro.Boca larga e base inteira: é o que uma lixeira de cozinha precisa quando o lixo vem em punhado. Com a Lixeira NEXLAR Borboleta com Pedal 20 Litros Preta com Alça Light Gray, nada fica em pé na borda. Leve a sua.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 119.99,
    "compare_at_price": 149.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 95,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:35.678Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "106620008",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242320-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287614/borboleta -3-.png?v=639250668792430000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Preta com Alça Light Gray",
        "position": 0
      },
      {
        "id": "img-994242320-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287613/10662_0008.jpg?v=639250668425630000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Preta com Alça Light Gray",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-994242326",
    "name": "Lixeira NEXLAR Borboleta com Pedal 12 Litros Cinza Chumbo com Alça Light Gray",
    "slug": "lixeira-nexlar-borboleta-com-pedal-12-litros-cinza-chumbo-com-alca-light-gr",
    "sku": "NX-106610536",
    "short_description": "A Borboleta 12 litros é a medida baixa da linha: 27 cm de altura, pedal para abrir sem as mãos e abertura dupla lateral — duas metades que a...",
    "description": "A Borboleta 12 litros é a medida baixa da linha: 27 cm de altura, pedal para abrir sem as mãos e abertura dupla lateral — duas metades que abrem como asas, daí o nome. A Lixeira NEXLAR Borboleta com Pedal 12 Litros Cinza Chumbo com Alça Light Gray é a escura de alça clara. Separar. Abrir. Borboleta.12 ou 20 litros? A escolha é verticalA comparação que decide surpreende: a base é idêntica nas duas. São 32 x 22,2 cm aqui e lá — a de 12 litros não economiza um centímetro de chão. O que ela economiza é altura: 27 cm contra 42,5, quinze e meio a menos. A pergunta certa não é quanto espaço você tem no piso, é quanto vão você tem acima.Sessenta por cento do volume na mesma pegadaDito sem rodeio: 12 litros são 60% do volume da versão de 20, na mesma área de chão. Se o lugar é aberto e a altura não é problema, a de 20 litros entrega mais pelo mesmo espaço de piso. Esta faz sentido quando existe um limite em cima — bancada, prateleira, tampo de armário — ou quando 12 litros correspondem ao que se produz ali.Duas de 12 lado a lado, se você quer separar e ficar baixoA Borboleta dividida existe só na altura de 42,5 cm. Quem precisa separar e ficar baixo tem uma saída: duas de 12 litros lado a lado — 64 cm de frente, 24 litros, 27 cm de altura. Custa o dobro de frente e entrega mais volume que uma de 10+10, com as duas partes independentes.Chumbo, PP e o cuidado das hastesO que sustenta a peça: polipropileno (PP) no corpo, reciclável, sob acabamento acetinado, e aço galvanizado nas hastes. Corpo cinza chumbo, alça light gray. O corpo aceita sabão neutro ou álcool; as hastes, secagem: água que fica é o que o galvanizado não segura.EspecificaçõesMedidas: 32 x 22,2 x 27 cmCapacidade: 12 litrosCor: corpo cinza chumbo, alça light grayMaterial: polipropileno (PP), reciclávelHastes: aço galvanizadoAcabamento: acetinadoAbertura: pedal, dupla lateralAro: um, para saco de 12 ou 15 litrosLimpeza: pano úmido com sabão neutro ou álcool; secar as hastesPerguntas frequentesQual a diferença entre a Borboleta de 12 e a de 20 litros?Só a altura. A base é idêntica, 32 x 22,2 cm nas duas: esta tem 27 cm e a de 20 litros tem 42,5 cm. A de 12 não economiza chão, economiza vão vertical.A de 12 litros ocupa menos espaço?Menos altura, não menos chão. São os mesmos 32 x 22,2 cm de base. Se o piso é o que falta, a de 20 litros entrega mais volume pela mesma área.Existe a versão dividida nesta altura?Não: a Borboleta com dois compartimentos é a de 10+10 litros, com 42,5 cm. Para separar e ficar baixo, dá para usar duas de 12 lado a lado — 64 cm de frente e 24 litros.Quais as medidas e a capacidade?Doze litros, numa base de 32 x 22,2 cm com 27 cm de altura.Como limpar?Sabão neutro ou álcool no corpo, e as hastes de aço galvanizado secas em seguida.Sobre a alça: ela foi feita para reposicionar a lixeira, não para carregar o saco cheio. Puxão brusco com a peça cheia pode estourar a alça — para esvaziar, tire o saco do aro.A pergunta não é quanto chão você tem: as duas ocupam o mesmo. É quanto vão há acima. Com a Lixeira NEXLAR Borboleta com Pedal 12 Litros Cinza Chumbo com Alça Light Gray, são 27 cm. Leve a sua.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 69.99,
    "compare_at_price": 89.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 119,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:35.679Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "106610536",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242326-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287611/borboleta.png?v=639250667220370000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 12 Litros Cinza Chumbo com Alça Light Gray",
        "position": 0
      },
      {
        "id": "img-994242326-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287612/borboleta -1-.png?v=639250667220370000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 12 Litros Cinza Chumbo com Alça Light Gray",
        "position": 1
      },
      {
        "id": "img-994242326-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287610/10661_0536.jpg?v=639250667220070000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 12 Litros Cinza Chumbo com Alça Light Gray",
        "position": 2
      }
    ]
  },
  {
    "id": "prod-994242323",
    "name": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Light Gray com Alça Cinza Chumbo",
    "slug": "lixeira-nexlar-borboleta-com-pedal-20-litros-light-gray-com-alca-cinza-chum",
    "sku": "NX-106620468",
    "short_description": "A Borboleta 20 litros é a lixeira de um compartimento só: pedal para abrir sem as mãos, abertura dupla lateral — duas metades que abrem como...",
    "description": "A Borboleta 20 litros é a lixeira de um compartimento só: pedal para abrir sem as mãos, abertura dupla lateral — duas metades que abrem como asas, daí o nome — e um aro para saco de 20 litros. A Lixeira NEXLAR Borboleta com Pedal 20 Litros Light Gray com Alça Cinza Chumbo é a clara de alça escura. Separar. Abrir. Borboleta.Vinte litros num saco enchem mais devagarParece a mesma conta e não é. Vinte litros divididos em dois enchem cada lado até o limite de 10, e o lado que lota primeiro define a hora da troca — o outro vai fora pela metade. Num compartimento único, os 20 litros são um só: o saco vai fora quando estiver realmente cheio.Uso intenso é onde o pedal apareceEm cozinha e lavanderia com maior produção de lixo, a tampa não abre duas vezes por dia — abre a cada preparo, a cada embalagem, a cada limpeza. Abrir com o pé deixa de ser conforto quando o gesto se repete dez, quinze vezes ao dia: o que numa lixeira de pouco uso é detalhe, aqui define se a tampa fica fechada. E com um compartimento só, abrir não vem com a pergunta de qual lado usar.Claro em ambiente claroCozinha e lavanderia costumam ser as áreas mais claras da casa — azulejo branco, bancada clara, armário claro. Uma lixeira escura nesse fundo abre um ponto pesado no chão; o corpo light gray fica na mesma faixa de tom e a peça deixa de ser um vazio visual. E a alça cinza chumbo resolve o outro lado: escura justamente onde a mão pega, que é o ponto onde a marca apareceria.O que o material pedePP no corpo, reciclável, acabamento acetinado, hastes de aço galvanizado. Limpeza: pano úmido com sabão neutro, ou pano com álcool. E as hastes secas depois — é o único ponto da peça onde a umidade constante de uma lixeira cobra o preço.EspecificaçõesMedidas: 32 x 22,2 x 42,5 cmCapacidade: 20 litros, compartimento únicoCor: corpo light gray, alça cinza chumboMaterial: polipropileno (PP), reciclávelHastes: aço galvanizadoAcabamento: acetinadoAbertura: pedal, dupla lateralAro: um, para saco de 20 litrosLimpeza: pano úmido com sabão neutro ou álcool; secar as hastesPerguntas frequentesQuais as medidas e a capacidade desta lixeira?Base de 32 x 22,2 cm, altura de 42,5 cm e 20 litros em um compartimento só.Um compartimento de 20 litros ou dois de 10?No dividido, o lado que lota primeiro define a troca e o outro vai fora pela metade. No único, o saco sai quando está cheio de verdade — menos trocas por semana.Serve para cozinha com muito lixo?É a indicação do catálogo. Vinte litros num saco só e abertura com o pé, que é o que importa quando a tampa abre a cada preparo.Corpo claro em lixeira funciona?Funciona bem em cozinha e lavanderia, que são as áreas mais claras da casa: a peça fica na mesma faixa de tom em vez de abrir um ponto escuro no chão.Por que a alça é escura?Porque é onde a mão pega. O cinza chumbo está justamente no ponto em que a marca apareceria.Sobre a alça: ela foi feita para reposicionar a lixeira, não para carregar o saco cheio. Puxão brusco com a peça cheia pode estourar a alça — para esvaziar, tire o saco do aro.Saco que vai fora cheio, não pela metade: é a conta do compartimento único. Com a Lixeira NEXLAR Borboleta com Pedal 20 Litros Light Gray com Alça Cinza Chumbo, são menos trocas na semana. Leve a sua.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 119.99,
    "compare_at_price": 149.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 47,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:35.679Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "106620468",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242323-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287616/106620468.png?v=639250669496800000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Light Gray com Alça Cinza Chumbo",
        "position": 0
      },
      {
        "id": "img-994242323-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287617/borboleta -3-.png?v=639250669496800000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Light Gray com Alça Cinza Chumbo",
        "position": 1
      },
      {
        "id": "img-994242323-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287618/borboleta -2-.png?v=639250669496970000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Light Gray com Alça Cinza Chumbo",
        "position": 2
      },
      {
        "id": "img-994242323-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287615/10662_0468 -1-.jpg?v=639250669496500000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Light Gray com Alça Cinza Chumbo",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242321",
    "name": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Cinza Chumbo com Alça Light Gray",
    "slug": "lixeira-nexlar-borboleta-com-pedal-20-litros-cinza-chumbo-com-alca-light-gr",
    "sku": "NX-106620536",
    "short_description": "A Borboleta 20 litros é a lixeira de um compartimento só: pedal para abrir sem as mãos, abertura dupla lateral — duas metades que abrem como...",
    "description": "A Borboleta 20 litros é a lixeira de um compartimento só: pedal para abrir sem as mãos, abertura dupla lateral — duas metades que abrem como asas, daí o nome — e um aro para saco de 20 litros. A Lixeira NEXLAR Borboleta com Pedal 20 Litros Cinza Chumbo com Alça Light Gray é a escura de alça clara. Separar. Abrir. Borboleta.20 litros ou 10+10: a única decisãoAs duas parecem iguais na foto, e quase são. Medida, pegada, altura, pedal, tampa, material e limpeza são idênticos nas duas versões — e a capacidade total também: 20 litros nas duas. A diferença é uma divisória. Esta tem um compartimento e um saco; a outra tem dois de 10 litros. Não é uma maior que a outra: é dividir ou não dividir.Quando dividir é peso mortoDividir só rende se os dois lados forem usados. Em escritório, recepção, quarto ou banheiro, a separação normalmente acontece em outro ponto — na cozinha, ou direto na coleta. Nesses lugares uma lixeira dividida entrega metade do volume útil por saco e o dobro de trocas, sem nenhum ganho.O chumbo e o que ele faz num cantoLixeira quase sempre fica no rodapé, num canto, à sombra de um móvel — e aí o tom escuro trabalha a favor: o cinza chumbo se apoia na sombra em vez de brigar com ela, e a peça deixa de ser um objeto avulso no chão. A alça light gray é o contraponto: ela marca a linha de abertura, que é a informação de que alguém precisa quando vai usar.Material, hastes e limpezaPolipropileno (PP) no corpo, reciclável, acabamento acetinado, hastes em aço galvanizado. Pano úmido com sabão neutro ou pano com álcool resolvem; o que prolonga a peça é secar as hastes, porque galvanizado segura corrosão do ar e não água parada.EspecificaçõesMedidas: 32 x 22,2 x 42,5 cmCapacidade: 20 litros, compartimento únicoCor: corpo cinza chumbo, alça light grayMaterial: polipropileno (PP), reciclávelHastes: aço galvanizadoAcabamento: acetinadoAbertura: pedal, dupla lateralAro: um, para saco de 20 litrosLimpeza: pano úmido com sabão neutro ou álcool; secar as hastesPerguntas frequentesQual a diferença entre a Borboleta 20 litros e a 10+10?Medida, pegada, altura, pedal, tampa, material e capacidade total são idênticos: 20 litros nas duas. A diferença é a divisória. Esta tem um compartimento e um saco.Quando não vale dividir a lixeira?Quando os dois lados não são usados. Em escritório, recepção, quarto ou banheiro a separação costuma acontecer em outro ponto — ali dividir dá metade do volume por saco e o dobro de trocas, sem ganho.Quais as medidas e a capacidade?32 x 22,2 cm de base, 42,5 cm de altura, 20 litros em um compartimento único.Cinza chumbo é boa cor para lixeira?Funciona bem no lugar onde a peça costuma ficar: rodapé, canto, sombra de móvel. O tom escuro se apoia na sombra em vez de brigar com ela.Como limpar?Pano úmido com sabão neutro ou pano com álcool. Seque as hastes de aço galvanizado depois.Sobre a alça: ela foi feita para reposicionar a lixeira, não para carregar o saco cheio. Puxão brusco com a peça cheia pode estourar a alça — para esvaziar, tire o saco do aro.Duas versões, uma decisão: dividir ou não. Se a separação já acontece em outro ponto da casa, a Lixeira NEXLAR Borboleta com Pedal 20 Litros Cinza Chumbo com Alça Light Gray é a que faz sentido. Leve a sua.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 119.99,
    "compare_at_price": 149.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 131,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:35.679Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "106620536",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242321-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287391/borboleta-lixeira-coza-20-cinza.png?v=639240519120770000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Cinza Chumbo com Alça Light Gray",
        "position": 0
      },
      {
        "id": "img-994242321-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287392/borboleta-lixeira-coza-20-cinza--2-.png?v=639240519183800000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Cinza Chumbo com Alça Light Gray",
        "position": 1
      },
      {
        "id": "img-994242321-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287393/borboleta-lixeira-coza-20-cinza--1-.png?v=639240519184270000",
        "alt": "Lixeira NEXLAR Borboleta com Pedal 20 Litros Cinza Chumbo com Alça Light Gray",
        "position": 2
      }
    ]
  },
  {
    "id": "prod-994242319",
    "name": "Lixeira Dupla NEXLAR Borboleta com Pedal 10+10 Litros Preta com Alça Light Gray",
    "slug": "lixeira-dupla-nexlar-borboleta-com-pedal-10-10-litros-preta-com-alca-light-",
    "sku": "NX-106630008",
    "short_description": "A Borboleta é a lixeira que resolve a separação sem pedir espaço: pedal para abrir sem as mãos, abertura dupla lateral e dois aros de 10 lit...",
    "description": "A Borboleta é a lixeira que resolve a separação sem pedir espaço: pedal para abrir sem as mãos, abertura dupla lateral e dois aros de 10 litros. A Lixeira Dupla NEXLAR Borboleta com Pedal 10+10 Litros Preta com Alça Light Gray é a preta de alça clara. Separar. Abrir. Borboleta.Vinte litros em 0,07 m² de chãoA conta que decide a compra numa cozinha apertada: a peça ocupa 32 x 22,2 cm, ou seja 0,071 m² — e entrega 20 litros divididos em dois. O truque não é largura, é altura: com 42,5 cm, ela é quase duas vezes mais alta que larga. Duas lixeiras separadas de 10 litros ocupariam duas pegadas; esta ocupa uma.O pedal existe para a mão que está ocupadaHigiene é a metade óbvia da história. A outra é mais prosaica: quem vai jogar lixo está com a mão cheia de lixo — casca, embalagem, pano molhado. Tampa que precisa de mão livre é tampa que fica aberta, e lixeira aberta é a que espalha cheiro. O pedal resolve com o pé, e é isso que mantém a tampa fechada na rotina.A alça clara é onde a mão procuraCorpo preto com alça light gray é o maior contraste neutro da linha, e ele tem função: a lixeira costuma ficar em lugar de pouca luz — embaixo da pia, atrás da porta, no canto da lavanderia. A alça clara marca onde pegar sem precisar olhar. Contraste que serve, não que enfeita.Acetinado: o que o preto brilhante não fazPreto brilhante mostra digital, e lixeira é peça de contato diário. O acabamento acetinado devolve menos marca, e é o motivo de a limpeza pedir só pano úmido com sabão neutro ou álcool — sem esfregar. As hastes de aço galvanizado pedem uma coisa a mais: secar depois.EspecificaçõesMedidas: 32 x 22,2 x 42,5 cmCapacidade: 10 + 10 litrosCor: corpo preto, alça light grayMaterial: polipropileno (PP), reciclávelHastes: aço galvanizadoAcabamento: acetinadoAbertura: pedal, dupla lateralAros: dois, para sacos de 10 litrosLimpeza: pano úmido com sabão neutro ou álcool; secar as hastesPerguntas frequentesQuanto de chão a Lixeira Dupla NEXLAR Borboleta ocupa?32 x 22,2 cm, cerca de 0,071 m², e 42,5 cm de altura. São 20 litros em uma pegada só, em vez de duas lixeiras de 10 lado a lado.Para que serve o pedal?Para abrir a tampa sem usar as mãos — e quem vai jogar lixo normalmente está com a mão ocupada. Tampa que exige mão livre acaba ficando aberta.Preta com alça light gray ou com alça verde matcha?A clara é o maior contraste neutro da linha e marca onde pegar em lugar de pouca luz. A verde matcha é o único acento de cor das cinco combinações.Mostra marca de dedo?Menos que um preto brilhante: o acabamento é acetinado, que devolve menos marca. Pano úmido com sabão neutro resolve.Cabe embaixo da pia ou ao lado da bancada?Confira o vão: são 42,5 cm de altura e 32 x 22,2 cm de base. Ao lado, encosta sem folga lateral; a frente é que precisa ficar livre, para o pé.Sobre a alça: ela foi feita para reposicionar a lixeira, não para carregar 20 litros de lixo. Puxão brusco com a peça cheia pode estourar a alça — para esvaziar, tire os sacos.Lixeira boa é a que ninguém precisa pensar em usar. Com a Lixeira Dupla NEXLAR Borboleta com Pedal 10+10 Litros Preta com Alça Light Gray, o pé abre e a mão acha a alça no escuro. Leve a sua.",
    "category_id": "cat-lixeiras",
    "categories": {
      "name": "Lixeiras",
      "slug": "lixeiras"
    },
    "price": 129.99,
    "compare_at_price": 162.49,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 199,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:35.679Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "106630008",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242319-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287411/borboleta-lixeira-coza-20-preto.png?v=639240525316770000",
        "alt": "Lixeira Dupla NEXLAR Borboleta com Pedal 10+10 Litros Preta com Alça Light Gray",
        "position": 0
      },
      {
        "id": "img-994242319-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287412/borboleta-lixeira-coza-20-preto -1-.png?v=639240525316900000",
        "alt": "Lixeira Dupla NEXLAR Borboleta com Pedal 10+10 Litros Preta com Alça Light Gray",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-994242079",
    "name": "Porta Condimentos Duplo Brisa Bambu NEXLAR",
    "slug": "porta-condimentos-duplo-brisa-bambu-nexlar",
    "sku": "NX-406573009",
    "short_description": "A linha Brisa é a da mesa posta em bambu. O Porta Condimentos Duplo em Bambu NEXLAR Brisa é o conjunto de servir da linha: dois potes com ta...",
    "description": "A linha Brisa é a da mesa posta em bambu. O Porta Condimentos Duplo em Bambu NEXLAR Brisa é o conjunto de servir da linha: dois potes com tampa e colher, sobre bandeja, prontos para ir do armário à mesa. Servir. Compor. Brisa.O que vem no conjunto2 potes de 330 ml em poliestireno transparente2 tampas de bambu, uma para cada pote2 colheres de bambu1 bandeja de bambu, 17,9 x 9,3 cmSão 660 ml em 17,9 x 9,3 cm de mesa. Açúcar e adoçante, sal e pimenta, café e chocolate em pó: a divisão em dois é o que faz sentido no café da manhã, onde quase nada vem sozinho.Encaixe exatoCada pote mede 8,5 cm de lado. Dois lado a lado dão 17 cm, e a bandeja tem 17,9 — 0,9 cm de folga: o bastante para tirar e pôr sem raspar, pouco o suficiente para nada dançar quando se carrega o conjunto. E a bandeja é a mesma Bandeja Pequena Brisa vendida sozinha na linha.Proteção antimofoBambu em mesa de café da manhã convive com açúcar úmido, colher molhada e pano de prato. O acabamento em verniz da linha Brisa dá proteção antimofo à bandeja, às tampas e às colheres, e realça o tom quente da fibra. O que ele não dispensa é o cuidado básico: nada de deixar de molho ou guardar úmido.Cada material no seu lugarOs potes são de poliestireno transparente — num condimento é isso que se quer: vê o nível de fora, sabe o que está acabando, não abre para conferir. O bambu fica onde a mão toca: bandeja, tampas e colheres.O presente da linhaDos onze itens da Brisa, este é o único em caixa litografada — os outros vêm com cinta ou tag. É o conjunto pensado para ser dado: amigo secreto, chá de casa nova, agradecimento de anfitrião. Chega embalado, sem passo intermediário.EspecificaçõesCapacidade: 330 ml cada pote, 660 ml no totalMedidas: 17,9 x 9,3 x 13 cmPotes: poliestireno transparenteBandeja, tampas e colheres: bambu com verniz e proteção antimofoBambu: renovável e reciclávelUso: micro-ondas, lava-louças e freezer nãoEmbalagem: caixa litografadaCódigo: 40657/3Como limparÀ mão, com esponja macia e sabão neutro: abrasivo risca a transparência.Secar na hora: o bambu não fica de molho nem é guardado úmido.Longe do sol direto e do fogão, que abrem a fibra.Perguntas frequentesO que vem no Porta Condimentos Duplo em Bambu NEXLAR Brisa?Dois potes de 330 ml, cada um com tampa e colher de bambu, mais uma bandeja. São 660 ml no conjunto, em 17,9 x 9,3 x 13 cm.Qual a capacidade de cada pote?330 ml cada um, 660 ml no conjunto.De que material é feito?Bandeja, tampas e colheres em bambu com verniz; potes em poliestireno transparente, que deixa ver o conteúdo. Os dois materiais são recicláveis.Vem em caixa de presente?Sim. É o único item da linha Brisa que vem em caixa litografada — os outros dez vêm com cinta ou tag.Qual a diferença entre este kit e o Pote com Colher Brisa vendido separado?O kit traz dois potes de 330 ml com colher e a bandeja, em caixa de presente. O Pote com Colher (40659/3) é uma unidade de 330 ml, 8,5 x 8,5 x 13 cm, sem bandeja.Vai à lava-louças, ao micro-ondas ou ao freezer?Não vai a nenhum dos três. Lave à mão com sabão neutro e esponja macia, e seque na hora: o bambu não deve ficar de molho nem ser guardado úmido.Mesa posta se faz nos detalhes. Com o Porta Condimentos Duplo em Bambu NEXLAR Brisa, o açúcar e o café saem do pacote e entram na composição. Leve o seu e comece a mesa Brisa.",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 69.99,
    "compare_at_price": 99.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 137,
    "free_shipping": false,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "406573009",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242079-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286136/porta_condimentos_duplo_em_bambu_coza_brisa_site_Brinox_1.webp?v=639234444909900000",
        "alt": "Porta Condimentos Duplo Brisa Bambu NEXLAR",
        "position": 0
      },
      {
        "id": "img-994242079-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286137/porta_condimentos_duplo_em_bambu_coza_brisa_site_Brinox_4.webp?v=639234444910200000",
        "alt": "Porta Condimentos Duplo Brisa Bambu NEXLAR",
        "position": 1
      },
      {
        "id": "img-994242079-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286138/porta_condimentos_duplo_em_bambu_coza_brisa_site_Brinox_3.webp?v=639234444910200000",
        "alt": "Porta Condimentos Duplo Brisa Bambu NEXLAR",
        "position": 2
      },
      {
        "id": "img-994242079-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286139/porta_condimentos_duplo_em_bambu_coza_brisa_site_Brinox_2.webp?v=639234444910200000",
        "alt": "Porta Condimentos Duplo Brisa Bambu NEXLAR",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-1611025",
    "name": "Travessa Oval Rasa 26 cm - Jornata 26 x 19 cm",
    "slug": "travessa-oval-rasa-26-cm-jornata-26-x-19-cm",
    "sku": "NX-1611025",
    "short_description": "Receitas especiais merecem ser servidas com elegância e um bom cozinheiro precisa de utensílios práticos, que facilitem a sua vida. A traves...",
    "description": "Receitas especiais merecem ser servidas com elegância e um bom cozinheiro precisa de utensílios práticos, que facilitem a sua vida. A travessa oval rasa da linha Jornata cumpre todas estas funções. Feito em aço inox, um material fácil de limpar e que não altera o sabor e o aroma dos alimentos. Seu desenho clássico e suas linhas curvas se adaptam a qualquer decoracão e evento e deixam a sua mesa muito mais bonita. Por ser rasa, a peça se torna ideal para servir pratos como arroz, batata, saladas e carnes. O produto está disponível em cinco tamanhos, o que lhe permite montar um kit completo para servir todas as suas delícias com estilo: 21x16cm, 26x19cm, 31x22cm, 36,5x26cm, e 41,5x29,5cm.",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 44.99,
    "compare_at_price": 56.24,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 83,
    "free_shipping": false,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1611025",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-1611025-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/252054/Travessa-Oval-Rasa-26-cm---Jornata-26-x-19-cm---Brinox.jpg?v=637002764152630000",
        "alt": "Travessa Oval Rasa 26 cm - Jornata 26 x 19 cm",
        "position": 0
      },
      {
        "id": "img-1611025-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/261520/1611.jpg?v=639173975695700000",
        "alt": "Travessa Oval Rasa 26 cm - Jornata 26 x 19 cm",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-2519114",
    "name": "Conjunto Facas NEXLAR Infinity 3 Peças",
    "slug": "conjunto-facas-nexlar-infinity-3-pecas",
    "sku": "NX-2519114",
    "short_description": "O Conjunto Facas NEXLAR Infinity 3 Peças é ideal para quem busca precisão, resistência e mais praticidade no preparo das receitas do dia a d...",
    "description": "O Conjunto Facas NEXLAR Infinity 3 Peças é ideal para quem busca precisão, resistência e mais praticidade no preparo das receitas do dia a dia. Com visual sofisticado e excelente balanço, o conjunto reúne peças essenciais para diferentes tipos de corte, trazendo mais eficiência para a rotina na cozinha.As facas possuem lâminas em aço inoxidável temperado, que oferecem maior durabilidade para o fio e desempenho consistente no uso diário. A espiga em aço inoxidável maciço com ABS injetado proporciona mais estabilidade no manuseio, favorecendo firmeza e segurança durante o corte. Já a proteção para os dedos e os rebites em aço inoxidável reforçam a resistência das peças e contribuem para uma experiência mais segura e confortável.O conjunto é composto por faca para legumes, faca para cozinha e faca do chef, reunindo opções versáteis para diferentes preparos, desde cortes menores e mais delicados até tarefas que exigem mais precisão e controle. Essa combinação faz do Conjunto Facas NEXLAR Infinity 3 Peças uma escolha funcional para quem procura qualidade e desempenho em cada detalhe.Com acabamento elegante e proposta premium, o Conjunto Facas NEXLAR Infinity 3 Peças é uma ótima opção para quem valoriza utensílios duráveis, bonitos e pensados para facilitar o preparo das refeições.Principais benefícios:Conjunto com 3 peças para diferentes tipos de corteLâminas em aço inoxidável temperado: mais durabilidade do fioExcelente balanço: mais precisão e controle no manuseioEspiga em aço inoxidável maciço com ABS injetado: mais estabilidadeProteção para os dedos: mais segurança durante o usoRebites em aço inoxidável: mais resistência e durabilidadeLinha premium NEXLAR: funcionalidade e sofisticação para a rotinaEspecificações:Produto: conjunto de facasMarca: NEXLARLinha: InfinityQuantidade de peças: 3Material da lâmina: aço inoxidável temperadoMaterial do cabo: ABS com rebites em aço inoxComposição: faca para legumes, faca para cozinha e faca do chefCuidados de uso:Lave e seque bem as peças após o usoEvite materiais abrasivos na limpezaArmazene em local seco e seguroManuseie com cuidado para preservar o fio e a segurança no usoLeve mais precisão, segurança e sofisticação para a sua cozinha com o Conjunto Facas NEXLAR Infinity 3 Peças e compre agora.",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 169.99,
    "compare_at_price": 199.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 73,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2519114",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2519114-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285419/Prancheta 1.png?v=639202467653400000",
        "alt": "Conjunto Facas NEXLAR Infinity 3 Peças",
        "position": 0
      },
      {
        "id": "img-2519114-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285420/Prancheta 2.png?v=639202467653400000",
        "alt": "Conjunto Facas NEXLAR Infinity 3 Peças",
        "position": 1
      },
      {
        "id": "img-2519114-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285421/Prancheta 3.png?v=639202467653400000",
        "alt": "Conjunto Facas NEXLAR Infinity 3 Peças",
        "position": 2
      },
      {
        "id": "img-2519114-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285418/Conjunto-Facas-3-pecas-Infinity---Brinox.jpg?v=639202467652900000",
        "alt": "Conjunto Facas NEXLAR Infinity 3 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-2107100",
    "name": "Conjunto de Tigelas NEXLAR Suprema 3 Peças Aço Inox",
    "slug": "conjunto-de-tigelas-nexlar-suprema-3-pecas-aco-inox",
    "sku": "NX-2107100",
    "short_description": "O Conjunto de Tigelas NEXLAR Suprema 3 Peças Aço Inox une praticidade, versatilidade e elegância para facilitar o preparo e o serviço de dif...",
    "description": "O Conjunto de Tigelas NEXLAR Suprema 3 Peças Aço Inox une praticidade, versatilidade e elegância para facilitar o preparo e o serviço de diferentes receitas. Com design moderno e acabamento sofisticado, as tigelas transitam com facilidade da cozinha à mesa, valorizando o dia a dia e ocasiões especiais.Produzidas em aço inox de alta qualidade, as tigelas são resistentes, duráveis e higiênicas. O material não possui porosidades, o que evita o acúmulo de resíduos, facilita a limpeza e não altera o sabor nem o aroma dos alimentos. Versáteis, são ideais para preparar, servir ou armazenar massas, saladas, sobremesas e diversos pratos.O conjunto conta com três tamanhos funcionais, que atendem diferentes necessidades na rotina da cozinha e na hora de servir, tornando-se também uma excelente opção para presentear.Principais benefíciosProduzidas em aço inox resistente e durávelNão possuem porosidades, facilitando a limpezaNão alteram sabor nem aroma dos alimentosDesign elegante para preparo e serviçoConjunto versátil para diversas receitasEspecificaçõesProduto: Conjunto de TigelasLinha: SupremaMaterial: Aço inoxQuantidade: 3 peçasComposição do conjunto:Tigela Ø18 cm – 1,3 LTigela Ø21,5 cm – 2,3 LTigela Ø25,5 cm – 4 LUso indicado: Preparo, serviço e armazenamento de alimentosMais versatilidade, resistência e sofisticação para sua rotina. Escolha o Conjunto de Tigelas NEXLAR Suprema e leve funcionalidade e elegância para a sua cozinha.",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 64.99,
    "compare_at_price": 69.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 156,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2107100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2107100-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284646/Conjunto_de_Tigelas_Brinox_Suprema_3_Pecas_Aco_Inox.jpg?v=639155904925630000",
        "alt": "Conjunto de Tigelas NEXLAR Suprema 3 Peças Aço Inox",
        "position": 0
      },
      {
        "id": "img-2107100-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284647/2107_100 - 1.jpg?v=639155904926100000",
        "alt": "Conjunto de Tigelas NEXLAR Suprema 3 Peças Aço Inox",
        "position": 1
      },
      {
        "id": "img-2107100-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284648/2107_100 - 2.jpg?v=639155904926270000",
        "alt": "Conjunto de Tigelas NEXLAR Suprema 3 Peças Aço Inox",
        "position": 2
      },
      {
        "id": "img-2107100-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284649/2107_100 - 3.jpg?v=639155904926270000",
        "alt": "Conjunto de Tigelas NEXLAR Suprema 3 Peças Aço Inox",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-2519115",
    "name": "Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças",
    "slug": "conjunto-de-facas-com-cepo-nexlar-infinity-6-pecas",
    "sku": "NX-2519115",
    "short_description": "O Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças é ideal para quem busca precisão, resistência e mais praticidade no preparo das receita...",
    "description": "O Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças é ideal para quem busca precisão, resistência e mais praticidade no preparo das receitas do dia a dia. Com visual sofisticado e excelente balanço, o conjunto reúne peças pensadas para diferentes tipos de corte, trazendo mais eficiência para a rotina na cozinha e ajudando a manter tudo sempre organizado.As facas possuem lâminas em aço inoxidável temperado, que oferecem maior durabilidade do fio e desempenho consistente no uso diário. A estrutura foi desenvolvida para proporcionar mais estabilidade no manuseio, com espiga em aço inoxidável maciço e ABS injetado, combinação que favorece firmeza e segurança durante o corte. Os rebites e a proteção para os dedos em aço inoxidável reforçam a resistência das peças e contribuem para um uso mais confortável e preciso.O conjunto acompanha faca do chef 8\", faca de cozinha 5\", faca para cozinha 8\", faca para legumes 3 1/2\", chaira 8\" e cepo de madeira, reunindo os itens essenciais para diferentes preparos. O cepo ajuda a manter as facas organizadas, protegidas e sempre ao alcance das mãos, além de complementar o conjunto com mais funcionalidade e um visual elegante para a bancada.Versátil e funcional, o Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças é uma ótima escolha para quem valoriza qualidade, estabilidade e desempenho em cada corte. Principais benefícios:Conjunto com 6 peças para diferentes tipos de preparoLâminas em aço inoxidável temperado: mais durabilidade do fioExcelente balanço: mais precisão e controle no corteEspiga em aço inoxidável maciço com ABS injetado: mais estabilidade no manuseioProteção para os dedos: mais segurança durante o usoRebites em aço inoxidável: resistência e durabilidadeCepo de madeira: mais organização e praticidade na cozinhaLinha premium NEXLAR para quem busca desempenho e sofisticaçãoEspecificações:Produto: conjunto de facas com cepoMarca: NEXLARLinha: InfinityQuantidade de peças: 6Material da lâmina: aço inoxidável temperadoMaterial do cabo: ABS com rebites em aço inoxAcompanha cepo de madeiraComposição do conjunto:1 faca do chef 8\"1 faca de cozinha 5\"1 faca para cozinha 8\"1 faca para legumes 3 1/2\"1 chaira 8\"1 cepo de madeiraCuidados de uso:Lave e seque bem as peças após o usoEvite materiais abrasivos na limpezaArmazene as facas no cepo para ajudar na conservaçãoManuseie com cuidado para preservar o fio e a segurança no usoUtilize a chaira para ajudar na manutenção do desempenho de corteLeve mais precisão e sofisticação para a sua cozinha com o Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças e compre agora.",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 389.99,
    "compare_at_price": 499.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 192,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2519115",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2519115-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285400/Prancheta 1.png?v=639201427109170000",
        "alt": "Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças",
        "position": 0
      },
      {
        "id": "img-2519115-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285401/Prancheta 2.png?v=639201427109370000",
        "alt": "Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças",
        "position": 1
      },
      {
        "id": "img-2519115-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285402/Prancheta 3.png?v=639201427109370000",
        "alt": "Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças",
        "position": 2
      },
      {
        "id": "img-2519115-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285403/conjunto-de-faca-com-cepo-2519115-2.png?v=639201427109530000",
        "alt": "Conjunto de Facas com Cepo NEXLAR Infinity 6 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242262",
    "name": "Jogo de Panelas de Indução NEXLAR Ceramic Life Smart Plus 8 Peças Areia",
    "slug": "jogo-de-panelas-de-inducao-nexlar-ceramic-life-smart-plus-8-pecas-areia",
    "sku": "NX-4774405",
    "short_description": "Jogo de Panelas NEXLAR Ceramic Life Smart Plus Indução 8 Peças Areia — qualidade e sofisticação para a sua cozinhaO Jogo de Panelas NEXLAR C...",
    "description": "Jogo de Panelas NEXLAR Ceramic Life Smart Plus Indução 8 Peças Areia — qualidade e sofisticação para a sua cozinhaO Jogo de Panelas NEXLAR Ceramic Life Smart Plus na elegante cor Areia é a combinação perfeita entre tecnologia, design moderno e alta funcionalidade. Desenvolvido para transformar sua experiência culinária, este conjunto completo oferece desempenho superior com revestimento cerâmico antiaderente Ceramic Life, fundo de indução para distribuição uniforme do calor e acabamento sofisticado que valoriza qualquer cozinha. Compatível com fogões a gás, elétricos, vitrocerâmicos e por indução — versatilidade total para o dia a dia.Por que escolher o Conjunto Ceramic Life Smart Plus NEXLARA tecnologia Ceramic Life proporciona uma cozinha mais saudável: o revestimento antiaderente permite cozinhar com menos óleo, evita que os alimentos grudem e facilita drasticamente a limpeza. O fundo de indução distribui o calor de forma uniforme, eliminando pontos quentes e garantindo cozimento perfeito. Os cabos com revestimento Soft-Touch oferecem toque confortável, seguro e ergonômico. As tampas em vidro temperado com saída de vapor permitem controlar o preparo sem precisar levantá-las, preservando umidade e sabor. E o design empilhável otimiza o espaço nos seus armários.Diferenciais do Jogo Ceramic Life Smart Plus NEXLAR 8 PeçasRevestimento cerâmico antiaderente Ceramic Life: cozinha mais saudável e fácil de limpar.Fundo de indução: distribuição uniforme do calor.Compatível com todos os tipos de fogão: gás, elétrico, vitrocerâmico e indução.Cabos Soft-Touch: conforto e segurança no manuseio.Tampas em vidro temperado com saída de vapor: controle visual do preparo.Design empilhável: organização inteligente dos armários.Cor Areia: acabamento elegante e atemporal.Conjunto exclusivo do site NEXLAR: vem com 3 utensílios em silicone Urban (concha, escumadeira e espátula), resistentes até 200 °C e laváveis em lava-louças.Composição do jogo1 Panela com tampa Ø 16 cm1 Panela com tampa Ø 18 cm1 Caçarola com tampa Ø 22 cm1 Frigideira Ø 22 cm1 Fervedor Ø 14 cm1 Concha de silicone Urban1 Escumadeira de silicone Urban1 Espátula de silicone UrbanFicha técnicaProduto: Jogo de PanelasLinha: Ceramic Life Smart PlusCor: AreiaMaterial: Alumínio com revestimento cerâmico antiaderente Ceramic LifeCabos: revestimento Soft-TouchTampas: vidro temperado com saída de vaporFundo: induçãoCompatibilidade: fogões a gás, elétrico, vitrocerâmico e induçãoUtensílios inclusos: 3 peças em silicone Urban (resistentes até 200 °C, podem ir à lava-louças)Cura do revestimento (antes do primeiro uso)Antes de utilizar, realize a cura do revestimento para potencializar a vida útil das panelas:Unte a parte interna com óleo ou qualquer outro tipo de gordura.Leve o produto ao fogo baixo até aquecer o conteúdo e deixe esfriar.Descarte o conteúdo e repita a lavagem e secagem para eliminar qualquer resíduo.Como cuidar do seu Jogo de Panelas NEXLARApós o uso, evite choques térmicos (não jogue água fria na panela quente).Lave à mão, com água morna, esponja macia e sabão neutro ou detergente.Se for necessário esfregar, utilize apenas materiais não abrasivos.Use utensílios de silicone, madeira ou nylon — nunca utensílios metálicos que possam riscar a superfície.Seque bem antes de empilhar para preservar o acabamento.Para quem é indicado?O Jogo Ceramic Life Smart Plus NEXLAR 8 Peças é a escolha certa para quem está montando ou renovando a cozinha, valoriza praticidade no dia a dia, busca uma alimentação mais saudável e quer um conjunto sofisticado e durável em formato essencial. Indispensável para apartamentos com fogão por indução, casas com fogão a gás, casais que cozinham com frequência e amantes de gastronomia que apreciam ferramentas de qualidade. Também é uma excelente opção de presente de casamento, chá de cozinha, dia das mães e datas especiais.Cozinha sofisticada, saudável e prática: Jogo de Panelas NEXLAR Ceramic Life Smart Plus 8 Peças Areia.",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 549.99,
    "compare_at_price": 999.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 91,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "4774405",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242262-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/283746/4774_405.png?v=639110781609200000",
        "alt": "Jogo de Panelas de Indução NEXLAR Ceramic Life Smart Plus 8 Peças Areia",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-2556308",
    "name": "Kit para Churrasco com Faca e Garfo Trinchante NEXLAR Cross Aço Inox 2 Peças",
    "slug": "kit-para-churrasco-com-faca-e-garfo-trinchante-nexlar-cross-aco-inox-2-peca",
    "sku": "NX-2556308",
    "short_description": "Durabilidade, eficiência e segurança definem o Kit para Churrasco com Faca e Garfo Trinchante NEXLAR Cross Aço Inox 2 Peças. Desenvolvido pa...",
    "description": "Durabilidade, eficiência e segurança definem o Kit para Churrasco com Faca e Garfo Trinchante NEXLAR Cross Aço Inox 2 Peças. Desenvolvido para facilitar o preparo e o momento de servir, o conjunto é ideal para quem aprecia cortes precisos e mais controle no manuseio das carnes.A faca para carne possui lâmina larga, forte e robusta em aço inox temperado com acabamento polido, garantindo excelente afiação e desempenho em cortes de todos os tipos de carnes. O garfo trinchante conta com dentes especialmente desenhados para estabilizar carnes assadas durante o corte, permitindo verificar o ponto de cozimento com mais segurança e mantendo as mãos afastadas de superfícies quentes.Os cabos em polipropileno na cor preta oferecem firmeza e conforto durante o uso, proporcionando leveza e controle em cada movimento. Prático e funcional, o kit é uma solução eficiente para churrascos e refeições especiais, além de poder ir à lava-louças, facilitando a rotina de limpeza.Principais benefíciosLâminas em aço inox temperado com excelente afiaçãoFaca robusta ideal para cortes de carnes de todos os tiposGarfo trinchante com dentes que estabilizam a carne no corteCabos ergonômicos em polipropileno para manuseio seguroPode ir à lava-louças, trazendo mais praticidade no dia a diaEspecificaçõesProduto: Kit para Churrasco com Faca e Garfo TrinchanteLinha: CrossMaterial das lâminas: Aço inox temperadoAcabamento: PolidoMaterial dos cabos: PolipropilenoCor: PretoComposição do conjunto:1 Faca para Carne 8” – 32,5 cm1 Garfo Trinchante – 29 cmMais controle, segurança e precisão para o preparo das carnes fazem toda a diferença. Escolha o Kit para Churrasco NEXLAR Cross e torne seus momentos à mesa ainda mais completos",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 29.99,
    "compare_at_price": 34.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 65,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2556308",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2556308-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285394/Prancheta 1.png?v=639198874567770000",
        "alt": "Kit para Churrasco com Faca e Garfo Trinchante NEXLAR Cross Aço Inox 2 Peças",
        "position": 0
      },
      {
        "id": "img-2556308-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285395/Prancheta 2.png?v=639198874567770000",
        "alt": "Kit para Churrasco com Faca e Garfo Trinchante NEXLAR Cross Aço Inox 2 Peças",
        "position": 1
      },
      {
        "id": "img-2556308-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285396/Prancheta 3.png?v=639198874567900000",
        "alt": "Kit para Churrasco com Faca e Garfo Trinchante NEXLAR Cross Aço Inox 2 Peças",
        "position": 2
      },
      {
        "id": "img-2556308-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285393/Kit_para_churrasco_com_faca_e_garfo_trincante_Brinox_Cross_Aco_Inox.jpg?v=639198874567300000",
        "alt": "Kit para Churrasco com Faca e Garfo Trinchante NEXLAR Cross Aço Inox 2 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-2519299",
    "name": "Kit Chef NEXLAR Infinity 12 Peças",
    "slug": "kit-chef-nexlar-infinity-12-pecas",
    "sku": "NX-2519299",
    "short_description": "O Kit Chef NEXLAR Infinity 12 Peças é a escolha completa para quem quer evoluir na cozinha com mais técnica, organização e segurança — seja...",
    "description": "O Kit Chef NEXLAR Infinity 12 Peças é a escolha completa para quem quer evoluir na cozinha com mais técnica, organização e segurança — seja você um apaixonado por gastronomia, estudante ou profissional. Desenvolvido para quem busca se destacar, o kit reúne utensílios essenciais para preparar receitas com mais precisão, além de incluir uma pasta de transporte que facilita levar tudo para aulas, eventos, trabalho ou até para cozinhar fora de casa.O conjunto combina itens para preparo, finalização e serviço: espátula e pincel de silicone, batedor profissional em aço inox, ralador zester, peneira em aço inox, descascador de legumes, abridor de latas profissional e a tríade de facas Infinity (Chef 8”, Cozinha 5” e Legumes 3 ½”), além da chaira 8” para manter o fio sempre alinhado. Para fechar com chave de ouro, a pasta foi pensada para proteger e organizar: tem acabamento interno aveludado, elásticos que mantêm os utensílios firmes, ponteiras para proteger as facas, alças superiores, alça de ombro e bolso frontal para guardar até sua dolmã e acessórios.Principais benefícios:Kit completo para cozinha e gastronomia: ideal para estudantes e profissionais12 peças essenciais: preparo, finalização, corte e manutenção das facasFacas Infinity incluídas: mais precisão para diferentes técnicas e ingredientesChaira 8”: ajuda a manter o fio alinhado e prolongar a vida útil das facasPasta de transporte: praticidade e segurança para levar os utensíliosOrganização inteligente: interior aveludado, elásticos e ponteiras protetorasConforto ao carregar: alças superiores + alça de ombro e bolso frontalEspecificações:Produto: Kit ChefLinha: InfinityMarca: NEXLARQuantidade: 12 peçasComposição do kit:1 Espátula de silicone1 Pincel de silicone1 Batedor profissional em aço inox1 Ralador zester1 Faca Chef Infinity 8”1 Faca para Cozinha Infinity 5”1 Faca para Legumes Infinity 3 1/2”1 Peneira em aço inox1 Descascador de legumes1 Abridor de latas profissional1 Chaira 8”1 Pasta para transporteMedidas da pasta (C x L x A): 38,3 x 32,3 x 10 cmDetalhes da pasta: 2 alças superiores, 1 alça de ombro, bolso frontal, interior aveludado, elásticos internos e ponteiras para proteger as facasGaranta já o Kit Chef NEXLAR Infinity 12 Peças e tenha um conjunto completo para cozinhar com mais precisão, organização e segurança.",
    "category_id": "cat-utensilios",
    "categories": {
      "name": "Utensílios de Cozinha",
      "slug": "utensilios-de-cozinha"
    },
    "price": 1336.83,
    "compare_at_price": 1695.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 175,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:36.454Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2519299",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2519299-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/281638/2519_299_8--1-.png?v=639014846979270000",
        "alt": "Kit Chef NEXLAR Infinity 12 Peças",
        "position": 0
      },
      {
        "id": "img-2519299-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/281639/2519_299--02-.png?v=639040083239230000",
        "alt": "Kit Chef NEXLAR Infinity 12 Peças",
        "position": 1
      },
      {
        "id": "img-2519299-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/281640/2519_299--07-.png?v=639040083239570000",
        "alt": "Kit Chef NEXLAR Infinity 12 Peças",
        "position": 2
      },
      {
        "id": "img-2519299-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/281641/2519_299--05-.png?v=639040083239570000",
        "alt": "Kit Chef NEXLAR Infinity 12 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242309",
    "name": "Faqueiro NEXLAR Itaparica 25 Peças Cinza Frio com Pote",
    "slug": "faqueiro-nexlar-itaparica-25-pecas-cinza-frio-com-pote",
    "sku": "NX-6100732",
    "short_description": "O Faqueiro Itaparica 25 Peças Cinza põe a mesa para 6 pessoas com talher completo em cada lugar, e ainda vem com o pote transparente que gua...",
    "description": "O Faqueiro Itaparica 25 Peças Cinza põe a mesa para 6 pessoas com talher completo em cada lugar, e ainda vem com o pote transparente que guarda tudo organizado na gaveta. Cabo em polipropileno cinza, cor neutra que combina com qualquer louça.O que vem no faqueiro Itaparica 25 peças6 colheres de mesa — 18,7 cm6 garfos de mesa — 18,8 cm6 facas de churrasco — 21 cm6 colheres de chá — 13,75 cm1 pote transparente para organizar as peçasSão 24 talheres mais o pote: seis lugares completos, com colher, garfo, faca e colher de chá para cada pessoa.Cinza: o neutro que resolve qualquer mesaO cinza é a cor que não briga com nada. Louça branca, colorida, estampada ou mesa de madeira: o talher acompanha em vez de disputar atenção. E a cor está no próprio polipropileno (PP), não em pintura por cima, então não descasca com o uso. O cabo é leve, não transmite calor e dá firmeza com a mão molhada.Facas em aço 420 temperadoAs seis facas do jogo são facas de churrasco de 21 cm, com lâmina em aço 420 temperado — a têmpera endurece o fio e faz o corte durar mais que em faca de talher comum. Colheres e garfos são em aço inox, resistente à oxidação e ao uso diário.Especificações técnicasMarca: NEXLARLinha: ItaparicaProduto: Faqueiro 25 peçasCor: CinzaComposição: 6 colheres de mesa, 6 garfos de mesa, 6 facas de churrasco, 6 colheres de chá e 1 poteAtende: 6 pessoasMaterial dos talheres: Aço inoxMaterial das facas: Aço 420 temperadoCabos: Polipropileno (PP)Pote: Plástico transparenteLava-louças: SimModo de usar e conservaçãoAntes do primeiro usoLave com água, detergente neutro e esponja macia, e seque bem.LavagemPode ir à lava-louças no ciclo normal. Evite a secagem em temperatura máxima e produtos à base de cloro, que agridem o pigmento do cabo.O que evitarPalha de aço nos cabos, apoio em panela quente ou borda de fogão, e longos períodos de molho.Perguntas frequentesQuais peças vêm no faqueiro Itaparica 25 peças?Vêm 6 colheres de mesa, 6 garfos de mesa, 6 facas de churrasco e 6 colheres de chá, mais o pote transparente organizador.Por que 25 peças se são 24 talheres?O pote organizador conta como peça: são 24 talheres mais o pote, totalizando 25 itens.Para quantas pessoas serve?Serve 6 lugares completos, com colher de mesa, garfo, faca e colher de chá para cada pessoa.O faqueiro tem faca de mesa?Não. As facas do jogo são facas de churrasco de 21 cm, indicadas para carne. A faca de mesa Itaparica é vendida separadamente.O cinza do cabo desbota?A cor está no próprio polipropileno, não em pintura de superfície, então não descasca. Evitar a secagem em temperatura máxima conserva o tom.Pode ir na lava-louças?Sim. Tanto o aço inox quanto os cabos em polipropileno são compatíveis com lava-louças.Faqueiro para seis, pote organizador e cor que combina com tudo. Garanta agora o seu Faqueiro Itaparica 25 Peças Cinza e resolva os talheres da casa em uma só compra!",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 99.99,
    "compare_at_price": 124.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 212,
    "free_shipping": false,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:37.649Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "6100732",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242309-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285731/organizador-de-geladeira-coza-dry-3-2-litros-com-2-cestos_1.jpg?v=639227476100100000",
        "alt": "Faqueiro NEXLAR Itaparica 25 Peças Cinza Frio com Pote",
        "position": 0
      },
      {
        "id": "img-994242309-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285732/organizador-de-geladeira-coza-dry-3-2-litros-com-2-cestos_2.jpg?v=639227476100270000",
        "alt": "Faqueiro NEXLAR Itaparica 25 Peças Cinza Frio com Pote",
        "position": 1
      },
      {
        "id": "img-994242309-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285733/organizador-de-geladeira-coza-dry-3-2-litros-com-2-cestos_3.jpg?v=639227476100400000",
        "alt": "Faqueiro NEXLAR Itaparica 25 Peças Cinza Frio com Pote",
        "position": 2
      },
      {
        "id": "img-994242309-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/285734/organizador-de-geladeira-coza-dry-3-2-litros-com-2-cestos_4.jpg?v=639227476100500000",
        "alt": "Faqueiro NEXLAR Itaparica 25 Peças Cinza Frio com Pote",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242241",
    "name": "Faqueiro NEXLAR Noble 48 Peças Aço Inoxidável",
    "slug": "faqueiro-nexlar-noble-48-pecas-aco-inoxidavel",
    "sku": "NX-5127143",
    "short_description": "O Faqueiro NEXLAR Noble 48 Peças em Aço Inoxidável foi criado para quem valoriza uma mesa bem posta, com acabamento impecável e durabilidade...",
    "description": "O Faqueiro NEXLAR Noble 48 Peças em Aço Inoxidável foi criado para quem valoriza uma mesa bem posta, com acabamento impecável e durabilidade para acompanhar o dia a dia e as ocasiões especiais. Excelência em cada detalhe para uma mesa impecável! Com design refinado, materiais nobres e polimento extra brilho, o Faqueiro NEXLAR Noble 48 Peças representa o mais alto padrão de qualidade e sofisticação para quem exige o melhor em cada refeição. Cada peça acrescenta sofisticação ao servir, elevando a experiência de refeições em família, jantares e recepções.Produzido em aço inoxidável 304, o conjunto une resistência e beleza por muito mais tempo. As facas são forjadas em aço inox 304 temperado, com espessura de 10 mm, oferecendo corte preciso e estrutura robusta para uso frequente. Já garfos e colheres têm 4,5 mm de espessura, proporcionando equilíbrio na mão, firmeza e ergonomia. Os garfos com dentes alongados ajudam no manuseio e no servir, enquanto as colheres com bojo robusto trazem conforto e funcionalidade em cada refeição.Com 48 peças, o faqueiro atende com praticidade diferentes momentos: refeições completas, sobremesas, chá e café, mantendo a harmonia da mesa do início ao fim. Se você procura um faqueiro premium para compor uma mesa elegante ou presentear com bom gosto, escolha o Faqueiro NEXLAR Noble 48 Peças e garanta o seu agora.Principais benefícios:Aço inox 304: resistência e durabilidade no uso diárioPolimento extra brilho: acabamento sofisticado para a mesaFacas forjadas e temperadas (10 mm): corte preciso e robustezGarfos e colheres (4,5 mm): equilíbrio, firmeza e ergonomiaGarfos com dentes alongados: mais eficiência ao servirColheres com bojo robusto: conforto e funcionalidadeConjunto completo com 48 peças: mesa, sobremesa, chá e caféEspecificações:Linha: NEXLAR NobleMaterial: aço inoxidável 304Acabamento: polimento extra brilhoFacas: aço 304 temperado, espessura 10 mmDemais talheres: espessura 4,5 mmComposição (48 peças):06 facas de mesa06 garfos de mesa06 colheres de mesa06 facas de sobremesa06 garfos de sobremesa06 colheres de sobremesa06 colheres de chá06 colheres de caféPara transformar sua mesa com elegância e desempenho em cada detalhe, escolha o Faqueiro NEXLAR Noble 48 Peças e compre agora.",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 869.99,
    "compare_at_price": 1087.49,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 193,
    "free_shipping": true,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:37.650Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5127143",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242241-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284951/5127 143 1280x1280_1.png?v=639172166322670000",
        "alt": "Faqueiro NEXLAR Noble 48 Peças Aço Inoxidável",
        "position": 0
      },
      {
        "id": "img-994242241-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284952/5127 143 1280x1280_2.png?v=639172166323130000",
        "alt": "Faqueiro NEXLAR Noble 48 Peças Aço Inoxidável",
        "position": 1
      },
      {
        "id": "img-994242241-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284953/5127 143 1280x1280_3.png?v=639172166323300000",
        "alt": "Faqueiro NEXLAR Noble 48 Peças Aço Inoxidável",
        "position": 2
      },
      {
        "id": "img-994242241-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284950/5127_143.jpg?v=639172166321230000",
        "alt": "Faqueiro NEXLAR Noble 48 Peças Aço Inoxidável",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242240",
    "name": "Faqueiro NEXLAR New Gourmet 48 Peças Aço Inoxidável",
    "slug": "faqueiro-nexlar-new-gourmet-48-pecas-aco-inoxidavel",
    "sku": "NX-5131143",
    "short_description": "O Faqueiro NEXLAR New Gourmet 48 Peças em Aço Inoxidável foi desenvolvido para quem busca um conjunto completo, com design premium e desempe...",
    "description": "O Faqueiro NEXLAR New Gourmet 48 Peças em Aço Inoxidável foi desenvolvido para quem busca um conjunto completo, com design premium e desempenho para o dia a dia e para ocasiões especiais. Com polimento extra brilho, as peças valorizam a mesa e trazem um acabamento sofisticado, ideal para servir com elegância em almoços, jantares e momentos de celebração.As facas são forjadas em aço 420 temperado, com 5 mm de espessura, oferecendo corte preciso, resistência e durabilidade para uso frequente. Já garfos e colheres, com 3 mm de espessura, entregam firmeza e ótimo equilíbrio nas mãos, proporcionando uma experiência confortável ao servir e degustar. Os garfos com dentes alongados ajudam na eficiência ao manusear alimentos, enquanto as colheres com bojo robusto trazem praticidade para diferentes preparos, de refeições completas a caldos e sobremesas.Com 48 peças, o faqueiro atende a mesa do início ao fim, com itens para refeição, sobremesa, chá e café, mantendo unidade visual e praticidade na rotina. Se você procura um faqueiro premium para compor uma mesa bonita ou presentear com bom gosto, escolha o Faqueiro NEXLAR New Gourmet 48 Peças e garanta o seu agora.Principais benefícios:Polimento extra brilho: acabamento elegante e sofisticadoFacas forjadas em aço 420 temperado (5 mm): corte preciso e alta resistênciaGarfos e colheres (3 mm): firmeza, conforto e equilíbrio no usoGarfos com dentes alongados: mais eficiência ao servirColheres com bojo robusto: praticidade no dia a diaConjunto completo com 48 peças: mesa, sobremesa, chá e caféServe 06 pessoasIdeal para uso diário e ocasiões especiaisEspecificações:Linha: NEXLAR New GourmetMaterial: aço inoxidávelAcabamento: polimento extra brilhoFacas: aço 420 temperado, 5 mm de espessuraGarfos e colheres: 3 mm de espessuraCategoria: faqueiro premiumComposição (48 peças):06 facas de mesa06 garfos de mesa06 colheres de mesa06 facas de sobremesa06 garfos de sobremesa06 colheres de sobremesa06 colheres de chá06 colheres de caféCuidados de uso:Lave antes do primeiro usoPode ser lavada em lava-louçasEvite materiais abrasivos para ajudar na conservação do brilhoSeque bem após a lavagem para manter a peça sempre bem cuidadaPara elevar sua mesa com brilho, performance e praticidade em cada detalhe, escolha o Faqueiro NEXLAR New Gourmet 48 Peças e compre agora.",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 299.99,
    "compare_at_price": 349.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 199,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:37.650Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5131143",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242240-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284937/5131 143 1280x1280_1.png?v=639172165662970000",
        "alt": "Faqueiro NEXLAR New Gourmet 48 Peças Aço Inoxidável",
        "position": 0
      },
      {
        "id": "img-994242240-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284938/5131 143 1280x1280_2.png?v=639172165662970000",
        "alt": "Faqueiro NEXLAR New Gourmet 48 Peças Aço Inoxidável",
        "position": 1
      },
      {
        "id": "img-994242240-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284939/5131 143 1280x1280_3.png?v=639172165663130000",
        "alt": "Faqueiro NEXLAR New Gourmet 48 Peças Aço Inoxidável",
        "position": 2
      },
      {
        "id": "img-994242240-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284936/5131_143.jpg?v=639172165662800000",
        "alt": "Faqueiro NEXLAR New Gourmet 48 Peças Aço Inoxidável",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242223",
    "name": "Faqueiro NEXLAR Bistro 48 Peças Aço Inoxidável",
    "slug": "faqueiro-nexlar-bistro-48-pecas-aco-inoxidavel",
    "sku": "NX-5121143",
    "short_description": "O Faqueiro NEXLAR Bistrô 48 Peças em Aço Inoxidável foi feito para quem quer uma mesa bem posta com acabamento premium e desempenho no uso d...",
    "description": "O Faqueiro NEXLAR Bistrô 48 Peças em Aço Inoxidável foi feito para quem quer uma mesa bem posta com acabamento premium e desempenho no uso diário ou em ocasiões especiais. Com polimento extra brilho, as peças valorizam a apresentação e trazem sofisticação para almoços, jantares e recepções, mantendo um visual elegante do início ao fim da refeição.Produzido em aço inoxidável de alta qualidade, o conjunto combina resistência, durabilidade e ergonomia. As facas são forjadas em aço 420 temperado, com espessura de 9 mm, oferecendo corte preciso e alta performance para diferentes alimentos. Os garfos têm dentes alongados e polimento entre os vãos, garantindo acabamento impecável e uma experiência mais confortável ao servir e comer. Já as colheres contam com bojo robusto, ideal para porções generosas, trazendo equilíbrio e praticidade no dia a dia.Com 48 peças, o faqueiro atende refeições completas e também momentos de sobremesa, chá e café, mantendo unidade e facilidade na hora de montar a mesa. Se você procura um conjunto confiável, bonito e com desempenho superior, escolha o Faqueiro NEXLAR Bistrô 48 Peças e garanta o seu agora.Principais benefícios:Aço inoxidável premium: resistência e durabilidade no uso diárioPolimento extra brilho: acabamento sofisticado para a mesaFacas forjadas em aço 420 temperado (9 mm): corte preciso e alto desempenhoTalheres com 2,5 mm: equilíbrio e conforto ao usarGarfos com dentes alongados e polimento entre os dentes: mais eficiência e acabamento impecávelColheres com bojo robusto: praticidade para diferentes preparosConjunto completo com 48 peças: mesa, sobremesa, chá e caféServe 06 pessoasEspecificações:Linha: NEXLAR BistrôMaterial: aço inoxidávelAcabamento: polimento extra brilhoFacas: aço 420 temperado, forjadas, espessura 9 mmDemais talheres: espessura 2,5 mmUso indicado: refeições diárias e ocasiões especiaisComposição (48 peças) - Serve 06 pessoas:06 facas de mesa – aço 420 forjado, 9 mm06 garfos de mesa – 2,5 mm06 colheres de mesa – 2,5 mm06 facas de sobremesa – 2,5 mm06 garfos de sobremesa – 2,5 mm06 colheres de sobremesa – 2,5 mm06 colheres de chá – 2,5 mm06 colheres de café – 2,5 mmPara levar mais sofisticação e desempenho para a sua mesa em todos os momentos, escolha o Faqueiro NEXLAR Bistrô 48 Peças e compre agora.",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 449.99,
    "compare_at_price": 469.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 158,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:37.650Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5121143",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242223-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284927/5121 143 1280x1280_1.png?v=639172164840430000",
        "alt": "Faqueiro NEXLAR Bistro 48 Peças Aço Inoxidável",
        "position": 0
      },
      {
        "id": "img-994242223-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284928/5121 143 1280x1280_2.png?v=639172164840430000",
        "alt": "Faqueiro NEXLAR Bistro 48 Peças Aço Inoxidável",
        "position": 1
      },
      {
        "id": "img-994242223-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284929/5121 143 1280x1280_3.png?v=639172164840600000",
        "alt": "Faqueiro NEXLAR Bistro 48 Peças Aço Inoxidável",
        "position": 2
      },
      {
        "id": "img-994242223-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284926/5121_143.jpg?v=639172164839800000",
        "alt": "Faqueiro NEXLAR Bistro 48 Peças Aço Inoxidável",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242032",
    "name": "Jogo de Faca de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
    "slug": "jogo-de-faca-de-mesa-nexlar-noble-aco-inox-304-12-pecas",
    "sku": "NX-5126103",
    "short_description": "O Jogo de Faca de Mesa Noble 12 Peças é a dúzia que fecha o faqueiro — ou repõe o que a casa perdeu com o tempo. Cada peça tem 24,3 cm, é fo...",
    "description": "O Jogo de Faca de Mesa Noble 12 Peças é a dúzia que fecha o faqueiro — ou repõe o que a casa perdeu com o tempo. Cada peça tem 24,3 cm, é forjada em aço inox 304 temperado e traz o cabo maciço de 10 mm que dá à linha Noble o peso de talher de restaurante. Doze facas iguais, no mesmo desenho e no mesmo polimento extra brilho.Para compor ou repor o seu faqueiro NobleA dúzia avulsa resolve dois problemas: montar o faqueiro peça por peça, na quantidade que a sua mesa pede, ou substituir as facas sem trocar o jogo inteiro. Como as peças Noble mantêm o mesmo desenho e acabamento, a reposição fica idêntica ao que já está na gaveta — sem aquela faca de tom diferente no jogo.Aço 304 forjado com cabo de 10 mmA faca é forjada em aço inox 304 temperado: o forjamento adensa o aço e a têmpera endurece o fio, o que mantém o corte por muito mais tempo. O corpo é monobloco — lâmina e cabo são a mesma peça de aço, sem rebite e sem plástico —, e o cabo de 10 mm apoia bem na mão e não escorrega ao cortar.O que vem no jogo de faca de mesa Noble12 facas de mesa Noble (caixa completa)24,3 cm de comprimento cada10 mm de espessura no caboPeça monobloco forjada em aço inox 304 temperadoEspecificações técnicasMarca: NEXLARLinha: NobleProduto: Faca de mesaQuantidade: 12 peças (caixa)Material: Aço inox 304 forjado e temperadoComprimento: 24,3 cm (243 mm)Espessura do cabo: 10 mmAcabamento: Polimento extra brilhoConstrução: Monobloco (peça única)Cor: Inox prateadoLava-louças: SimCódigo: 5126/103Modo de usar e conservaçãoAntes de levar à mesaUma lavagem com detergente neutro e esponja macia, e as peças estão prontas.LavagemPode ir à lava-louças. Lavando à mão, não deixe de molho e seque em seguida.Onde não cortarPrato de vidro, mármore e granito desgastam o fio. Prefira porcelana, madeira ou polipropileno.Perguntas frequentesQual a diferença entre a faca de mesa e a faca de churrasco Noble?As duas compartilham o aço 304 forjado, o cabo de 10 mm e praticamente o mesmo comprimento — 24,3 cm a de mesa e 24,1 cm a de churrasco. A diferença está na indicação de uso: a de mesa acompanha o faqueiro no dia a dia; a de churrasco é indicada para carnes assadas e grelhadas.A faca de mesa Noble corta carne?Sim. É forjada e temperada, o que dá ao fio desempenho bem acima da faca de mesa comum, tanto em carne quanto em legumes e frios.Quantas facas vêm no jogo?São 12 facas de mesa Noble, a caixa completa.Qual o tamanho da faca de mesa Noble?Cada peça tem 24,3 cm de comprimento e 10 mm de espessura no cabo.Serve para completar um faqueiro Noble que já tenho?Sim. É a mesma peça do faqueiro, com o mesmo desenho e acabamento, então a reposição fica idêntica.Pode ir na lava-louças?Sim. As peças são compatíveis com lava-louças.Faqueiro incompleto não põe mesa bonita. Garanta agora o seu Jogo de Faca de Mesa Noble 12 Peças e feche o jogo com a peça certa, no acabamento certo!",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 383.4,
    "compare_at_price": 479.25,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 94,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:37.650Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5126103",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242032-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279902/jogo-faca-de-mesa-noble-duzia-em-aco-inox-brinox_1.jpg?v=639232728144630000",
        "alt": "Jogo de Faca de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 0
      },
      {
        "id": "img-994242032-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279903/jogo-faca-de-mesa-noble-duzia-em-aco-inox-brinox_2.jpg?v=639232728144630000",
        "alt": "Jogo de Faca de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 1
      },
      {
        "id": "img-994242032-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279904/jogo-faca-de-mesa-noble-duzia-em-aco-inox-brinox_3.jpg?v=639232728144800000",
        "alt": "Jogo de Faca de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 2
      },
      {
        "id": "img-994242032-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279901/jogo-faca-de-mesa-noble-duzia-em-aco-inox-brinox_0.jpg?v=639232728144330000",
        "alt": "Jogo de Faca de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242034",
    "name": "Jogo de Faca de Sobremesa NEXLAR Noble Aço Inox 304 12 Peças",
    "slug": "jogo-de-faca-de-sobremesa-nexlar-noble-aco-inox-304-12-pecas",
    "sku": "NX-5126106",
    "short_description": "O Jogo de Faca de Sobremesa Noble 12 Peças é a faca leve da linha. Com 23,1 cm e 4,5 mm de espessura — bem menos robusta que as facas de mes...",
    "description": "O Jogo de Faca de Sobremesa Noble 12 Peças é a faca leve da linha. Com 23,1 cm e 4,5 mm de espessura — bem menos robusta que as facas de mesa e de churrasco Noble, de 10 mm —, ela foi feita para atravessar torta, bolo e fruta sem esmagar a fatia. São 12 peças em aço inox 304 com polimento extra brilho, a dúzia completa para servir sobremesa a todos.4,5 mm: leve de propósito, para corte limpoFaca de sobremesa não precisa de força, precisa de precisão. Por isso a Noble tem aqui 4,5 mm — a mesma espessura da colher e do garfo da linha, e menos da metade das facas de mesa e churrasco. O corpo é monobloco, de uma única lâmina de aço sem emendas, o que mantém a firmeza mesmo com o perfil delgado. O corte preserva a apresentação do prato.Fecha o trio de sobremesa NobleA linha Noble tem o serviço de sobremesa completo no mesmo desenho e acabamento: esta faca de 23,1 cm, o garfo de sobremesa de 19,5 cm e a colher de sobremesa de 19 cm. A dúzia avulsa monta o serviço na quantidade que a sua mesa pede, ou repõe a peça que faltou sem trocar o faqueiro.O que vem no jogo de faca de sobremesa Noble12 facas de sobremesa Noble (caixa completa)23,1 cm de comprimento cada4,5 mm de espessuraPeça monobloco em aço inox 304Especificações técnicasMarca: NEXLARLinha: NobleProduto: Faca de sobremesaQuantidade: 12 peças (caixa)Material: Aço inox 304 (18/10)Comprimento: 23,1 cm (231 mm)Espessura: 4,5 mmAcabamento: Polimento extra brilhoConstrução: Monobloco (peça única)Cor: Inox prateadoLava-louças: SimCódigo: 5126/106Modo de usar e conservaçãoAntes de servirUma lavagem com detergente neutro e esponja macia, e as peças estão prontas.Depois de doce e frutaCalda, chocolate e suco de fruta fixam se secarem sobre a peça. Enxágue ou leve à lava-louças no mesmo dia.Sobre o que cortarPrefira prato de porcelana, madeira ou polipropileno. Vidro, mármore e granito desgastam o fio.Perguntas frequentesQual a diferença entre a faca de sobremesa e a faca de mesa Noble?A de sobremesa é mais curta e bem mais leve: 23,1 cm e 4,5 mm de espessura, contra 24,3 cm e 10 mm da faca de mesa. A de mesa foi feita para carne; a de sobremesa, para corte delicado de torta, bolo e fruta.Para que serve a faca de sobremesa?Serve para cortar tortas, bolos, frutas, queijos e doces de prato, e para porções em que a faca de mesa seria grande demais.Quantas facas vêm no jogo?São 12 facas de sobremesa Noble, a caixa completa.Qual o tamanho da faca de sobremesa Noble?Cada peça tem 23,1 cm de comprimento e 4,5 mm de espessura.Combina com a colher e o garfo de sobremesa Noble?Sim. A colher tem 19 cm e o garfo 19,5 cm, no mesmo desenho e acabamento desta faca.Pode ir na lava-louças?Sim. As peças são compatíveis com lava-louças.Sobremesa bem servida começa na peça certa. Garanta agora o seu Jogo de Faca de Sobremesa Noble 12 Peças e corte cada fatia do jeito que ela merece ser vista!",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 332.28,
    "compare_at_price": 415.35,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 201,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:37.650Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5126106",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242034-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279910/jogo-faca-de-sobremesa-noble-duzia-em-aco-inox-brinox_1.jpg?v=639232730812770000",
        "alt": "Jogo de Faca de Sobremesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 0
      },
      {
        "id": "img-994242034-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279911/jogo-faca-de-sobremesa-noble-duzia-em-aco-inox-brinox_2.jpg?v=639232730812800000",
        "alt": "Jogo de Faca de Sobremesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 1
      },
      {
        "id": "img-994242034-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279909/jogo-faca-de-sobremesa-noble-duzia-em-aco-inox-brinox_0.jpg?v=639232730812330000",
        "alt": "Jogo de Faca de Sobremesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 2
      }
    ]
  },
  {
    "id": "prod-994242030",
    "name": "Jogo de Garfo de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
    "slug": "jogo-de-garfo-de-mesa-nexlar-noble-aco-inox-304-12-pecas",
    "sku": "NX-5126102",
    "short_description": "O Jogo de Garfo de Mesa Noble 12 Peças tem um detalhe que quase nenhum garfo do mercado tem: o polimento entre os dentes. Com 21 cm e 4,5 mm...",
    "description": "O Jogo de Garfo de Mesa Noble 12 Peças tem um detalhe que quase nenhum garfo do mercado tem: o polimento entre os dentes. Com 21 cm e 4,5 mm de espessura em aço inox 304, é a dúzia que fecha o serviço de mesa com acabamento de restaurante, inclusive nos vãos que ninguém repara até segurar o garfo.Polimento entre os dentes: o acabamento que quase ninguém fazEm garfo comum, o polimento cobre as faces e para ali: as fendas entre os dentes ficam opacas, com a marca da estampagem, e é ali que o resíduo se agarra. Os garfos Noble recebem polimento extra brilho também entre os dentes — peça lisa de ponta a ponta, mais fácil de lavar e sem o contraste fosco que denuncia talher barato.O que vem no jogo de garfo de mesa Noble12 garfos de mesa Noble (caixa completa)21 cm de comprimento cada4,5 mm de espessuraPeça monobloco em aço inox 304, com polimento entre os dentesAço inox 304 e 4,5 mm que não entortamDente de garfo fino entorta ao furar carne mais firme. Os 4,5 mm da Noble e a construção monobloco — uma única lâmina de aço, sem emendas — resolvem isso. E a base é aço inox 304, a liga 18/10 com 18% de cromo e 10% de níquel, a mesma do faqueiro premium da linha: alta resistência à oxidação e brilho que não cede na lava-louças.Especificações técnicasMarca: NEXLARLinha: NobleProduto: Garfo de mesaQuantidade: 12 peças (dúzia)Material: Aço inox 304 (18/10)Comprimento: 21 cm (210 mm)Espessura: 4,5 mmAcabamento: Polimento extra brilho, inclusive entre os dentesConstrução: Monobloco (peça única)Cor: Inox prateadoLava-louças: SimCódigo: 5126/102Modo de usar e conservaçãoAntes de levar à mesaUma lavagem com detergente neutro e esponja macia, e as peças estão prontas.Limpeza entre os dentesComo os vãos são polidos, o resíduo sai com esponja macia ou no ciclo normal da lava-louças, sem precisar de escova.O que evitarPalha de aço, abrasivos, produtos com cloro e longos períodos de molho.Perguntas frequentesO que é polimento entre os dentes?É o polimento aplicado também nas fendas entre os dentes, e não só nas faces externas. Deixa a peça lisa por inteiro, mais fácil de limpar, e evita o acabamento fosco dos vãos de garfo sem esse tratamento.Quantos garfos vêm no jogo?São 12 garfos de mesa Noble, a caixa completa.Qual o tamanho do garfo de mesa Noble?Cada peça tem 21 cm de comprimento e 4,5 mm de espessura.Combina com a colher de mesa Noble?Sim. A colher de mesa tem exatamente os mesmos 21 cm e 4,5 mm, então as duas peças formam um par proporcional na mesa.Os dentes do garfo entortam com o uso?Com 4,5 mm de espessura e corpo monobloco, o garfo aguenta furar carne firme sem ceder, bem acima do talher de mesa comum.Pode ir na lava-louças?Sim. As peças são compatíveis com lava-louças.É no detalhe que a mesa se revela, e o garfo é onde mais se olha. Garanta agora o seu Jogo de Garfo de Mesa Noble 12 Peças e sirva com acabamento impecável até entre os dentes!",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 329.72,
    "compare_at_price": 412.15,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 167,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:37.650Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5126102",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242030-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279897/jogo-garfo-de-mesa-noble-duzia-em-aco-inox-brinox_3.png?v=639232820098870000",
        "alt": "Jogo de Garfo de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 0
      },
      {
        "id": "img-994242030-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279895/jogo-garfo-de-mesa-noble-duzia-em-aco-inox-brinox_1.jpg?v=639232820098700000",
        "alt": "Jogo de Garfo de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 1
      },
      {
        "id": "img-994242030-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279896/jogo-garfo-de-mesa-noble-duzia-em-aco-inox-brinox_2.jpg?v=639232820098700000",
        "alt": "Jogo de Garfo de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 2
      },
      {
        "id": "img-994242030-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279894/jogo-garfo-de-mesa-noble-duzia-em-aco-inox-brinox_0.jpg?v=639232820098400000",
        "alt": "Jogo de Garfo de Mesa NEXLAR Noble Aço Inox 304 12 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242028",
    "name": "Jogo de Colher de Chá NEXLAR Noble em Aço Inox 304 12 Peças",
    "slug": "jogo-de-colher-de-cha-nexlar-noble-em-aco-inox-304-12-pecas",
    "sku": "NX-5126107",
    "short_description": "O Jogo de Colher de Chá Noble 12 Peças é a peça de acabamento que faltava na sua mesa. Com 15,7 cm e 3,5 mm de espessura, tem peso e proporç...",
    "description": "O Jogo de Colher de Chá Noble 12 Peças é a peça de acabamento que faltava na sua mesa. Com 15,7 cm e 3,5 mm de espessura, tem peso e proporção para xícaras de chá, canecas e sobremesas leves — sem a fragilidade das colherzinhas comuns. São 12 peças em aço inox 304 com polimento extra brilho: a dúzia completa para receber visita.Design Noble: proporção certa para xícaras e canecasA colher de chá Noble tem 3,5 mm de espessura, bem acima do que se encontra em talheres dessa categoria, e é monobloco — feita de uma única lâmina de aço, sem emendas que possam soltar. Isso dá firmeza na mão, e o desenho clássico harmoniza com composições do tradicional ao contemporâneo.O que vem no jogo de colher de chá Noble12 colheres de chá Noble (dúzia completa)15,7 cm de comprimento cada3,5 mm de espessuraPeça monobloco em aço inox 304Polimento extra brilho sobre aço inox 304O polimento extra brilho é o acabamento espelhado da linha Noble, e ele se sustenta porque a base é aço inox 304 — a liga 18/10, com 18% de cromo e 10% de níquel, a mesma do faqueiro premium Noble. O resultado é alta resistência à oxidação e brilho que não cede com as lavagens. São compatíveis com lava-louças.Especificações técnicasMarca: NEXLARLinha: NobleProduto: Colher de cháQuantidade: 12 peças (dúzia)Material: Aço inox 304 (18/10)Comprimento: 15,7 cm (157 mm)Espessura: 3,5 mmAcabamento: Polimento extra brilhoConstrução: Monobloco (peça única)Cor: Inox prateadoLava-louças: SimCódigo: 5126/107Modo de usar e conservaçãoAntes do primeiro usoLave com água, detergente neutro e esponja macia, e seque bem.LimpezaPode lavar à mão ou na lava-louças. Secar logo após a lavagem preserva o polimento extra brilho.O que evitarPalha de aço, produtos abrasivos ou à base de cloro, e deixar as peças de molho por longos períodos.Perguntas frequentesPara que serve a colher de chá?Serve para mexer chá, café com leite e bebidas quentes em xícaras e canecas, e para sobremesas leves como mousse, pudim e sorvete em taça.Quantas colheres vêm no jogo?São 12 colheres, a dúzia completa, todas da linha Noble.Qual o tamanho da colher de chá Noble?Cada peça tem 15,7 cm de comprimento e 3,5 mm de espessura.Qual a diferença entre colher de chá e colher de café?A de chá é maior: na linha Noble tem 15,7 cm, contra 11 cm da colher de café. A de chá atende xícaras e canecas; a de café é feita para xícara de cafezinho e espresso.Colher de chá de aço inox 304 mancha?O 304 é a liga com maior resistência à oxidação entre as usadas em talheres. Secar após lavar evita as marcas de água que costumam ser confundidas com mancha.Pode ir na lava-louças?Sim. As peças são compatíveis com lava-louças e mantêm o acabamento.Mesa bem posta se nota nos detalhes, e a colher de chá é um deles. Garanta agora o seu Jogo de Colher de Chá Noble 12 Peças e receba com a elegância que a linha Noble entrega!",
    "category_id": "cat-mesa",
    "categories": {
      "name": "Mesa & Talheres",
      "slug": "mesa-e-talheres"
    },
    "price": 227.49,
    "compare_at_price": 284.36,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 138,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:37.650Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5126107",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242028-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279889/jogo-colher-de-cha-noble-duzia-em-aco-inox-brinox_3.png?v=639232715249330000",
        "alt": "Jogo de Colher de Chá NEXLAR Noble em Aço Inox 304 12 Peças",
        "position": 0
      },
      {
        "id": "img-994242028-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279887/jogo-colher-de-cha-noble-duzia-em-aco-inox-brinox_1.jpg?v=639232715249170000",
        "alt": "Jogo de Colher de Chá NEXLAR Noble em Aço Inox 304 12 Peças",
        "position": 1
      },
      {
        "id": "img-994242028-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279888/jogo-colher-de-cha-noble-duzia-em-aco-inox-brinox_2.jpg?v=639232715249330000",
        "alt": "Jogo de Colher de Chá NEXLAR Noble em Aço Inox 304 12 Peças",
        "position": 2
      },
      {
        "id": "img-994242028-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/279886/jogo-colher-de-cha-noble-duzia-em-aco-inox-brinox_0.jpg?v=639232715248870000",
        "alt": "Jogo de Colher de Chá NEXLAR Noble em Aço Inox 304 12 Peças",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242150",
    "name": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 33,5x24x5cm Vanilla",
    "slug": "assadeira-retangular-funda-nexlar-ceramic-life-bakeware-33-5x24x5cm-vanilla",
    "sku": "NX-1481301",
    "short_description": "A Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 33,5 x 24 x 5 cm Vanilla é a escolha ideal para quem quer mais praticidade no forn...",
    "description": "A Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 33,5 x 24 x 5 cm Vanilla é a escolha ideal para quem quer mais praticidade no forno, com desempenho e um visual elegante para servir. Com formato fundo, ela é perfeita para receitas que pedem mais volume, como lasanhas, assados, frangos, carnes ao molho, legumes gratinados, bolos mais úmidos e sobremesas, garantindo preparo uniforme e apresentação bonita.Produzida em alumínio, a assadeira aquece rapidamente e distribui o calor de forma homogênea, ajudando a assar por igual e otimizando o tempo no forno. O revestimento interno antiaderente cerâmico Ceramic Life evita que os alimentos grudem, permite usar menos óleo e facilita muito a limpeza depois do uso. Além disso, é PFOA free, trazendo mais tranquilidade para a rotina.O acabamento Vanilla por dentro e por fora adiciona um toque sofisticado à cozinha e à mesa, enquanto as alças laterais ajudam no manuseio com mais firmeza e segurança na hora de levar e retirar do forno.Indicada para uso em forno convencional, não deve ser utilizada no fogão ou no micro-ondas. Se você busca uma assadeira funda, fácil de limpar e pronta para acompanhar receitas do dia a dia e ocasiões especiais, escolha a Assadeira NEXLAR Ceramic Life Bakeware Vanilla 33,5 x 24 x 5 cm e garanta a sua agora.Principais benefícios:Formato fundo: ideal para lasanhas, assados e receitas com molhoAlumínio: aquecimento rápido e distribuição uniforme do calorAntiaderente cerâmico Pro Ceramic: não gruda e limpa fácilCozinha com menos óleo: preparos mais levesPFOA free: mais segurança no usoAlças laterais: manuseio mais firme e práticoCor Vanilla: visual elegante para servirEspecificações:Produto: assadeira retangular funda NEXLAR Ceramic Life BakewareMedidas: 33,5 x 24 x 5 cmMaterial: alumínioRevestimento: antiaderente cerâmico Ceramic LifeCor: VanillaUso: forno convencionalRestrições: não usar em fogão ou micro-ondasCuidados de uso:Antes do primeiro uso, lave e seque bemPara melhor desempenho do antiaderente, unte levemente e leve ao forno por até 2 minutos a 180°C; deixe esfriar e lave novamenteUse utensílios de silicone, nylon ou madeira e lave com esponja macia e detergente neutroUtilize luvas térmicas para manusear e mantenha fora do alcance de crianças durante o usoLeve mais praticidade e elegância para suas receitas com a Assadeira NEXLAR Ceramic Life Bakeware Vanilla e compre agora.",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 69.99,
    "compare_at_price": 96.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 170,
    "free_shipping": false,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:38.063Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1481301",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242150-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287550/Gemini_Generated_Image_m6tbdkm6tbdkm6tb.png?v=639246381108670000",
        "alt": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 33,5x24x5cm Vanilla",
        "position": 0
      },
      {
        "id": "img-994242150-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287544/1481_301.jpg?v=639246381108370000",
        "alt": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 33,5x24x5cm Vanilla",
        "position": 1
      },
      {
        "id": "img-994242150-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287545/1481_301---1.jpg?v=639246381108370000",
        "alt": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 33,5x24x5cm Vanilla",
        "position": 2
      },
      {
        "id": "img-994242150-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287546/1481_301---2.jpg?v=639246381108500000",
        "alt": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 33,5x24x5cm Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242151",
    "name": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 39,5x28x5cm Vanilla",
    "slug": "assadeira-retangular-funda-nexlar-ceramic-life-bakeware-39-5x28x5cm-vanilla",
    "sku": "NX-1481300",
    "short_description": "A Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 39,5 x 28 x 5 cm Vanilla é perfeita para quem quer mais capacidade no forno, com d...",
    "description": "A Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 39,5 x 28 x 5 cm Vanilla é perfeita para quem quer mais capacidade no forno, com desempenho e um visual elegante para servir. Com formato fundo e tamanho maior, ela é ideal para receitas generosas como lasanhas, assados, frango, carnes ao molho, legumes gratinados, bolos mais úmidos e sobremesas, garantindo preparo uniforme e uma apresentação bonita na mesa.Produzida em alumínio, a assadeira aquece rapidamente e distribui o calor de forma homogênea, ajudando a assar por igual e otimizando o tempo no forno. O revestimento cerâmico antiaderente Ceramic Life evita que os alimentos grudem, permite usar menos óleo e facilita muito a limpeza depois do uso. Além disso, é PFOA free, trazendo mais tranquilidade para o dia a dia.O acabamento Vanilla por dentro e por fora adiciona um toque moderno e delicado à cozinha, e as alças laterais ajudam no manuseio com mais firmeza e segurança ao levar e retirar do forno.Indicada para uso em forno convencional, não deve ser utilizada no fogão ou no micro-ondas. Se você busca uma assadeira funda, espaçosa e fácil de limpar para receitas do cotidiano e ocasiões especiais, escolha a Assadeira NEXLAR Ceramic Life Bakeware Vanilla 39,5 x 28 x 5 cm e garanta a sua agora.Principais benefícios:Formato fundo e tamanho maior: ideal para receitas generosas e com molhoAlumínio: aquecimento rápido e distribuição uniforme do calorAntiaderente cerâmico Pro Ceramic: não gruda e limpa fácilCozinha com menos óleo: preparos mais levesPFOA free: mais segurança no usoAlças laterais: manuseio mais firme e práticoCor Vanilla: visual elegante para servirEspecificações:Produto: assadeira retangular funda NEXLAR Ceramic Life BakewareMedidas: 39,5 x 28 x 5 cmMaterial: alumínioRevestimento: cerâmico antiaderente Pro Ceramic (PFOA free)Cor: Vanilla (interno e externo)Alças: lateraisUso: forno convencionalRestrições: não usar em fogão ou micro-ondasCuidados de uso:Antes do primeiro uso, lave e seque bemPara melhor desempenho do antiaderente, unte o interior e leve ao forno preaquecido a 180°C por até 2 minutos; deixe esfriar e lave novamenteUse utensílios de silicone, nylon ou madeira e lave com esponja macia e detergente neutroUtilize luvas térmicas para manusear e mantenha fora do alcance de crianças durante o usoLeve mais praticidade e elegância para suas receitas com a Assadeira NEXLAR Ceramic Life Bakeware Vanilla e compre agora.",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 79.99,
    "compare_at_price": 119.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 186,
    "free_shipping": false,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:38.063Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1481300",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242151-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287532/1481_300_3.jpg?v=639246380410730000",
        "alt": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 39,5x28x5cm Vanilla",
        "position": 0
      },
      {
        "id": "img-994242151-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287536/1481_300_2.jpg?v=639246380411370000",
        "alt": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 39,5x28x5cm Vanilla",
        "position": 1
      },
      {
        "id": "img-994242151-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287537/assadeira-retangular-funda-brinox-ceramic-life-bakeware-39-5-x-28-x-5cm-vanilla_0.jpg?v=639246380411370000",
        "alt": "Assadeira Retangular Funda NEXLAR Ceramic Life Bakeware 39,5x28x5cm Vanilla",
        "position": 2
      }
    ]
  },
  {
    "id": "prod-1460300",
    "name": "Assadeira Retangular NEXLAR Bakeware 39,5 x 28,6 x 6,6 cm Grafite",
    "slug": "assadeira-retangular-nexlar-bakeware-39-5-x-28-6-x-6-6-cm-grafite",
    "sku": "NX-1460300",
    "short_description": "Assadeira Retangular NEXLAR Bakeware 39,5 x 28,6 x 6,6 cm Grafite – Antiaderente, Prática e ResistentePrepare suas receitas favoritas com ma...",
    "description": "Assadeira Retangular NEXLAR Bakeware 39,5 x 28,6 x 6,6 cm Grafite – Antiaderente, Prática e ResistentePrepare suas receitas favoritas com mais praticidade e eficiência usando a Assadeira Retangular NEXLAR Bakeware 39,5 x 28,6 x 6,6 cm Grafite. Ideal para assados, bolos, massas e sobremesas, esse modelo une desempenho, durabilidade e beleza em um só produto, sendo indispensável em qualquer cozinha.Com estrutura em alumínio, a assadeira garante aquecimento uniforme, otimizando o tempo de preparo dos alimentos e proporcionando uma cocção mais eficiente. O revestimento interno antiaderente Pro-Flon permite cozinhar com menos óleo, evita que os alimentos grudem e facilita a limpeza após o uso — perfeita para quem busca praticidade no dia a dia.Além disso, é um produto livre de PFOA, ou seja, não libera toxinas durante o uso, contribuindo para uma cozinha mais saudável. As alças laterais integradas tornam o manuseio mais seguro e confortável, mesmo com a assadeira quente.Com acabamento na cor grafite, a linha Bakeware traz um toque moderno e sofisticado à sua cozinha. A NEXLAR é referência em utilidades domésticas e oferece produtos com os mais altos padrões de qualidade e sustentabilidade.Destaques do produto:Tamanho: 39,5 x 28,6 x 6,6 cmMaterial: Alumínio com revestimento antiaderente Pro-FlonLivre de PFOAAlças para facilitar o manuseioCor grafite elegante e versátilIdeal para forno a gás ou elétricoRenove sua cozinha com a Assadeira NEXLAR Bakeware, uma escolha inteligente para receitas mais saborosas, saudáveis e sem complicações.",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 99.99,
    "compare_at_price": 119.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 163,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:38.063Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1460300",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-1460300-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/282517/forma.png?v=639064128136970000",
        "alt": "Assadeira Retangular NEXLAR Bakeware 39,5 x 28,6 x 6,6 cm Grafite",
        "position": 0
      },
      {
        "id": "img-1460300-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/282518/assadeira-retangular-funda-brinox-preto.jpg?v=639064128137430000",
        "alt": "Assadeira Retangular NEXLAR Bakeware 39,5 x 28,6 x 6,6 cm Grafite",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-1460301",
    "name": "Assadeira Retangular Funda NEXLAR Bakeware 33,5 x 24 x 6,1 cm Grafite",
    "slug": "assadeira-retangular-funda-nexlar-bakeware-33-5-x-24-x-6-1-cm-grafite",
    "sku": "NX-1460301",
    "short_description": "Assadeira Retangular Funda NEXLAR Bakeware 33,5 x 24 x 6,1 cm GrafiteTransforme suas receitas em momentos especiais com a Assadeira Retangul...",
    "description": "Assadeira Retangular Funda NEXLAR Bakeware 33,5 x 24 x 6,1 cm GrafiteTransforme suas receitas em momentos especiais com a Assadeira Retangular Funda NEXLAR Bakeware 33,5 x 24 x 6,1 cm na cor Grafite. Perfeita para quem ama praticidade e qualidade na cozinha, essa assadeira conta com estrutura em alumínio que garante aquecimento uniforme, agilizando o preparo dos alimentos e economizando energia.Seu revestimento antiaderente Pro-Flon permite cozinhar com menos óleo, evita que os alimentos grudem e torna a limpeza muito mais fácil. Além disso, é livre de PFOA, oferecendo mais segurança para você e sua família. Com design funcional, possui alças laterais que facilitam o manuseio com firmeza e segurança no dia a dia.Ideal para assados, bolos, lasanhas e muito mais, a Assadeira Bakeware é um item indispensável para quem busca versatilidade, resistência e um toque de sofisticação na cozinha. Escolha NEXLAR e leve praticidade e inovação para o seu forno!",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 79.99,
    "compare_at_price": 96.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 115,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:38.063Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1460301",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-1460301-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284625/assadeira-retangular-funda-preta-brinox.jpg?v=639153946773230000",
        "alt": "Assadeira Retangular Funda NEXLAR Bakeware 33,5 x 24 x 6,1 cm Grafite",
        "position": 0
      },
      {
        "id": "img-1460301-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/284626/assadeira-retangular-funda-brinox-aco-inoxidavel-preto.jpg?v=639153946773530000",
        "alt": "Assadeira Retangular Funda NEXLAR Bakeware 33,5 x 24 x 6,1 cm Grafite",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-994242152",
    "name": "Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5cm 2,2 Litros Vanilla",
    "slug": "forma-para-bolo-nexlar-ceramic-life-bakeware-19-5cm-2-2-litros-vanilla",
    "sku": "NX-1481310",
    "short_description": "A Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5 cm 2,2 Litros Vanilla é ideal para quem quer bolos bem assados, com textura uniforme e...",
    "description": "A Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5 cm 2,2 Litros Vanilla é ideal para quem quer bolos bem assados, com textura uniforme e mais praticidade na hora de desenformar. Com capacidade de 2,2 Litros e tamanho versátil para o dia a dia, ela é perfeita para bolos caseiros, receitas mais elaboradas e outras preparações de forno, entregando um resultado bonito para servir.Produzida em alumínio, a forma aquece rapidamente e distribui o calor de maneira homogênea, ajudando o bolo a assar por igual, sem pontos crus ou ressecados. O revestimento cerâmico antiaderente Ceramic Life evita que a massa grude, permite usar menos óleo e facilita muito a limpeza depois do uso. Além disso, é PFOA free, trazendo mais tranquilidade para a sua rotina na cozinha.O acabamento Vanilla, por dentro e por fora, adiciona um toque moderno e delicado, deixando a cozinha mais elegante e tornando a peça uma ótima escolha também para quem gosta de apresentar as receitas com capricho.Indicada para uso em forno convencional, não deve ser utilizada no fogão ou no micro-ondas. Se você busca uma forma prática, fácil de limpar e com antiaderente que ajuda no desenforme, escolha a Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5 cm 2,2 L Vanilla e garanta a sua agora.Principais benefícios:Ø19,5 cm e 2,2 L: tamanho versátil para bolos do dia a diaAlumínio: aquecimento rápido e distribuição uniforme do calorAntiaderente cerâmico Pro Ceramic: não gruda e facilita o desenformeCozinha com menos óleo: preparos mais levesPFOA free: mais segurança no usoCor Vanilla: visual elegante e modernoEspecificações:Produto: forma: para bolo NEXLAR Ceramic Life BakewareDiâmetro: 19,5 cmCapacidade: 2,2 litrosMaterial: alumínioRevestimento: cerâmico antiaderente Pro Ceramic (PFOA free)Cor: Vanilla (interno e externo)Uso: forno convencionalRestrições: não usar em fogão ou micro-ondasCuidados de uso:Antes do primeiro uso, lave e seque bemPara melhor desempenho do antiaderente, unte levemente e leve ao forno por até 2 minutos a 180°C; deixe esfriar e lave novamenteUse utensílios de silicone, nylon ou madeira e lave com esponja macia e detergente neutroNão utilizar em lava-louçasDeixe suas receitas ainda mais práticas e bonitas: escolha a Forma para Bolo NEXLAR Ceramic Life Bakeware Vanilla e compre agora.",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 54.99,
    "compare_at_price": 79.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 217,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:38.300Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1481310",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242152-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287577/1481_310_2.jpg?v=639246385863770000",
        "alt": "Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5cm 2,2 Litros Vanilla",
        "position": 0
      },
      {
        "id": "img-994242152-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287578/1481_310---1.jpg?v=639246385864300000",
        "alt": "Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5cm 2,2 Litros Vanilla",
        "position": 1
      },
      {
        "id": "img-994242152-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287579/1481_310---2.jpg?v=639246385864300000",
        "alt": "Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5cm 2,2 Litros Vanilla",
        "position": 2
      },
      {
        "id": "img-994242152-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287580/1481_310---3.jpg?v=639246385864400000",
        "alt": "Forma para Bolo NEXLAR Ceramic Life Bakeware Ø19,5cm 2,2 Litros Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242153",
    "name": "Forma de Pão NEXLAR Ceramic Life Bakeware 30x12,5x6,3cm Vanilla",
    "slug": "forma-de-pao-nexlar-ceramic-life-bakeware-30x12-5x6-3cm-vanilla",
    "sku": "NX-1481303",
    "short_description": "A Forma de Pão NEXLAR Ceramic Life Bakeware 30 x 12,5 x 6,3 cm Vanilla é perfeita para quem quer assados bem feitos, com praticidade no prep...",
    "description": "A Forma de Pão NEXLAR Ceramic Life Bakeware 30 x 12,5 x 6,3 cm Vanilla é perfeita para quem quer assados bem feitos, com praticidade no preparo e facilidade na hora de desenformar. Ideal para pães caseiros, pães de forma, bolos tipo inglês, terrines e outras receitas que vão ao forno, ela entrega um resultado uniforme e uma apresentação bonita para servir.Produzida em alumínio, a forma aquece rapidamente e distribui o calor de maneira homogênea, ajudando a assar por igual e deixar a receita no ponto certo. O revestimento cerâmico antiaderente Ceramic Life evita que a massa grude, permite usar menos óleo e facilita tanto o desenforme quanto a limpeza após o uso. Além disso, é PFOA free, trazendo mais tranquilidade para a rotina na cozinha.O acabamento Vanilla, por dentro e por fora, adiciona um toque moderno e delicado, combinando com diferentes estilos e deixando o preparo ainda mais agradável. Indicada para forno convencional, não deve ser utilizada no fogão ou no micro-ondas. Se você busca uma forma prática, fácil de limpar e com antiaderente eficiente para pães e bolos, escolha a Forma de Pão NEXLAR Ceramic Life Bakeware Vanilla e garanta a sua agora.Principais benefícios:Ideal para pães e bolos: formato perfeito para receitas alongadasAlumínio: aquecimento rápido e distribuição uniforme do calorAntiaderente cerâmico Pro Ceramic: não gruda e facilita o desenformeCozinha com menos óleo: preparos mais levesPFOA free: mais segurança no usoCor Vanilla: visual elegante e modernoEspecificações:Produto: forma de pão NEXLAR Ceramic Life BakewareMedidas: 30 x 12,5 x 6,3 cmMaterial: alumínioRevestimento: cerâmico antiaderente Pro Ceramic (PFOA free)Cor: Vanilla (interno e externo)Uso: forno convencionalRestrições: não usar em fogão ou micro-ondasCuidados de uso:Antes do primeiro uso, lave e seque bemPara melhor desempenho do antiaderente, unte levemente e leve ao forno por até 2 minutos a 180°C; deixe esfriar e lave novamenteUse utensílios de silicone, nylon ou madeira e lave com esponja macia e detergente neutroNão utilizar em lava-louçasDeixe seus pães e bolos ainda mais práticos de preparar: escolha a Forma de Pão NEXLAR Ceramic Life Bakeware Vanilla e compre agora.",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 49.99,
    "compare_at_price": 67.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 148,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:38.300Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1481303",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242153-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287552/1481_303.jpg?v=639246382836030000",
        "alt": "Forma de Pão NEXLAR Ceramic Life Bakeware 30x12,5x6,3cm Vanilla",
        "position": 0
      },
      {
        "id": "img-994242153-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287553/1481_303---1.jpg?v=639246382836200000",
        "alt": "Forma de Pão NEXLAR Ceramic Life Bakeware 30x12,5x6,3cm Vanilla",
        "position": 1
      },
      {
        "id": "img-994242153-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287554/1481_303---2.jpg?v=639246382836370000",
        "alt": "Forma de Pão NEXLAR Ceramic Life Bakeware 30x12,5x6,3cm Vanilla",
        "position": 2
      },
      {
        "id": "img-994242153-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287555/1481_303---3.jpg?v=639246382836370000",
        "alt": "Forma de Pão NEXLAR Ceramic Life Bakeware 30x12,5x6,3cm Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242156",
    "name": "Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16cm 7cm Vanilla",
    "slug": "forma-para-airfryer-nexlar-ceramic-life-bakeware-16cm-7cm-vanilla",
    "sku": "NX-1481311",
    "short_description": "A Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16 cm x 7 cm Vanilla é ideal para quem quer mais praticidade e versatilidade na rotina,...",
    "description": "A Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16 cm x 7 cm Vanilla é ideal para quem quer mais praticidade e versatilidade na rotina, preparando receitas na airfryer com ótimo resultado e limpeza fácil. Com 16 cm de diâmetro e 7 cm de altura, ela é perfeita para bolos, tortas, carnes, legumes e preparos que precisam de uma forma mais funda, ajudando a manter a organização e facilitando na hora de servir.Produzida em alumínio, a forma aquece rapidamente e distribui o calor de maneira uniforme, favorecendo um preparo mais homogêneo dos alimentos. O revestimento cerâmico antiaderente Ceramic Life evita que os alimentos grudem, permite usar menos óleo e simplifica a limpeza depois do uso. Além disso, é PFOA free, trazendo mais tranquilidade para o dia a dia.O acabamento Vanilla, por dentro e por fora, adiciona um toque moderno e delicado, combinando com diferentes estilos de cozinha e deixando o preparo ainda mais agradável. Se você busca uma forma prática, fácil de limpar e feita para ampliar as possibilidades na airfryer, escolha a Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16 cm Vanilla e garanta a sua agora.Principais benefícios:Ø16 cm x 7 cm: formato fundo ideal para receitas na airfryerAlumínio: aquecimento rápido e distribuição uniforme do calorAntiaderente cerâmico Pro Ceramic: não gruda e limpa fácilCozinha com menos óleo: preparos mais levesPFOA free: mais segurança no usoCor Vanilla: visual elegante e modernoVersátil: bolos, tortas, carnes e legumesEspecificações:Produto: forma para airfryer NEXLAR Ceramic Life BakewareDiâmetro: 16 cmAltura: 7 cmMaterial: alumínioRevestimento: cerâmico antiaderente Pro Ceramic (PFOA free)Cor: Vanilla (interno e externo)Uso indicado: airfryerCuidados de uso:Antes do primeiro uso, lave e seque bemUse utensílios de silicone, nylon ou madeira e lave com esponja macia e detergente neutroEvite produtos abrasivos e palha de açoAguarde esfriar antes de lavar e evite choques térmicosDeixe sua airfryer ainda mais versátil: escolha a Forma para Airfryer NEXLAR Ceramic Life Bakeware Vanilla e compre agora.",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 39.99,
    "compare_at_price": 82.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 79,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:38.300Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1481311",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242156-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287588/forma-de-airfryer-brinox-antiaderente-1481311.png?v=639246387315370000",
        "alt": "Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16cm 7cm Vanilla",
        "position": 0
      },
      {
        "id": "img-994242156-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287589/1481_311---1.jpg?v=639246387315600000",
        "alt": "Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16cm 7cm Vanilla",
        "position": 1
      },
      {
        "id": "img-994242156-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287590/1481_311---2.jpg?v=639246387315600000",
        "alt": "Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16cm 7cm Vanilla",
        "position": 2
      },
      {
        "id": "img-994242156-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/287591/1481_311---3.jpg?v=639246387315770000",
        "alt": "Forma para Airfryer NEXLAR Ceramic Life Bakeware Ø16cm 7cm Vanilla",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-1460310",
    "name": "Forma para Bolo NEXLAR Bakeware 20 x 8 cm Grafite",
    "slug": "forma-para-bolo-nexlar-bakeware-20-x-8-cm-grafite",
    "sku": "NX-1460310",
    "short_description": "Forma para Bolo NEXLAR Bakeware 20 x 8 cm Grafite – Antiaderente, Versátil e Ideal para Receitas PerfeitasPrepare bolos deliciosos com facil...",
    "description": "Forma para Bolo NEXLAR Bakeware 20 x 8 cm Grafite – Antiaderente, Versátil e Ideal para Receitas PerfeitasPrepare bolos deliciosos com facilidade e segurança usando a Forma para Bolo NEXLAR Bakeware 20 x 8 cm Grafite. Produzida em alumínio de alta qualidade, essa forma garante aquecimento rápido e uniforme, proporcionando um cozimento perfeito em todas as receitas.Com revestimento antiaderente Pro-Flon, ela permite o preparo com menos óleo, evita que os alimentos grudem e torna a limpeza muito mais simples. Além disso, é um produto livre de PFOA, garantindo maior segurança alimentar.Seu acabamento arredondado facilita o manuseio e proporciona mais praticidade durante o uso. Com 20 cm de diâmetro e 8 cm de altura, a forma também pode ser utilizada para cozimento no vapor sobre caçarolas de 18 cm da NEXLAR, ampliando suas possibilidades na cozinha.Nesta versão na cor grafite, o modelo traz mais sobriedade e elegância para o ambiente, mas também está disponível na cor cereja, ideal para quem busca uma decoração vibrante.Destaques do produto:Estrutura em alumínio para cozimento uniformeRevestimento antiaderente Pro-Flon: menos óleo e fácil limpezaLivre de PFOA: mais segurança para sua saúde20 cm de diâmetro x 8 cm de alturaDesign com acabamento arredondadoIdeal para bolos e cozimento a vaporRenove suas receitas com a qualidade da Linha Bakeware NEXLAR e experimente o prazer de cozinhar com mais praticidade!",
    "category_id": "cat-assadeiras",
    "categories": {
      "name": "Assadeiras & Formas",
      "slug": "assadeiras-e-formas"
    },
    "price": 73.67,
    "compare_at_price": 83.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 66,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:38.300Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1460310",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-1460310-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/261739/Grafite-Brinox.jpg?v=637190928736430000",
        "alt": "Forma para Bolo NEXLAR Bakeware 20 x 8 cm Grafite",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-994242268",
    "name": "Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox com Dispenser Preto",
    "slug": "escorredor-de-loucas-nexlar-suprema-16-pratos-em-aco-inox-com-dispenser-pre",
    "sku": "NX-2104214",
    "short_description": "Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox Preto com Dispenser é a solução ideal para quem quer manter a pia organizada com p...",
    "description": "Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox Preto com Dispenser é a solução ideal para quem quer manter a pia organizada com praticidade e um visual moderno na cozinha. Com capacidade para até 16 pratos, ele ajuda a otimizar o espaço da bancada e deixa cada item no seu lugar, facilitando a rotina após as refeições.Fabricado em aço inox, o escorredor oferece resistência e durabilidade para o uso diário, além de ser fácil de limpar e higienizar. A organização é pensada para o dia a dia: os espaços são bem distribuídos para acomodar pratos, além de áreas para copos, xícaras e talheres, trazendo mais eficiência na secagem e no manuseio.O diferencial fica por conta do dispenser para detergente, que acompanha o produto e contribui para uma bancada mais funcional, mantendo o detergente sempre à mão e ajudando a reduzir a bagunça na pia. Com acabamento preto, o escorredor combina com diferentes estilos de cozinha e valoriza a decoração com um toque contemporâneo.Se você busca um escorredor robusto, prático e elegante para organizar a louça com mais facilidade, escolha o Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox Preto com Dispenser e garanta o seu agora.Principais benefícios:Capacidade para até 16 pratos: ideal para a rotina da casaAço inox: resistente, durável e fácil de limparCompartimentos organizados: espaço para pratos, copos, xícaras e talheresAcompanha dispenser de detergente: mais praticidade na bancadaAcabamento preto: design moderno e versátil para a cozinhaFácil manutenção e higienizaçãoEspecificações:Produto: escorredor de louçasLinha: NEXLAR SupremaCapacidade: até 16 pratosMaterial: aço inoxCor: pretoCompartimentos: pratos, copos, xícaras e talheresLimpeza: fácil manutenção e higienizaçãoDimensões: 50,5 x 27 x 28,5 cmConteúdo da embalagem01 escorredor de louças01 dispenser para detergenteOrganize sua pia com mais eficiência e estilo: escolha o Escorredor de Louças NEXLAR Suprema e compre agora.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 99.99,
    "compare_at_price": 199.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 207,
    "free_shipping": false,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2104214",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242268-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/283773/escorredor-16-pecas-cabo-plastico-dispenser-preto_1.jpg?v=639114391702430000",
        "alt": "Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox com Dispenser Preto",
        "position": 0
      },
      {
        "id": "img-994242268-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/283774/escorredor-16-pecas-cabo-plastico-dispenser-preto_2.jpg?v=639114391702470000",
        "alt": "Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox com Dispenser Preto",
        "position": 1
      },
      {
        "id": "img-994242268-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/283775/escorredor-16-pecas-cabo-plastico-dispenser-preto_3.jpg?v=639114391702530000",
        "alt": "Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox com Dispenser Preto",
        "position": 2
      },
      {
        "id": "img-994242268-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/283776/17008_0008.jpg?v=639114391702730000",
        "alt": "Escorredor de Louças NEXLAR Suprema 16 Pratos em Aço Inox com Dispenser Preto",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242307",
    "name": "Organizador Giratório NEXLAR Dry Ø29 x 3,2 cm Cristal",
    "slug": "organizador-giratorio-nexlar-dry-29-x-3-2-cm-cristal",
    "sku": "NX-101903009",
    "short_description": "A linha Dry existe para fazer a geladeira e o armário renderem: caixas organizadoras, organizadores com cesto, porta-ovos, porta-latas, temp...",
    "description": "A linha Dry existe para fazer a geladeira e o armário renderem: caixas organizadoras, organizadores com cesto, porta-ovos, porta-latas, temperos frescos e este giratório. O Organizador Giratório NEXLAR Dry na cor Cristal resolve o problema do fundo da prateleira. Organizar. Conservar. Dry.O fundo vira frenteTodo armário tem uma zona morta: o que está atrás. Você compra, guarda na segunda fila e esquece que existe até vencer. A base giratória elimina essa fila — em vez de alcançar o fundo, você gira 360 graus e o fundo passa pela frente. As rodinhas embutidas fazem o giro com um toque, mesmo com a base carregada.3,2 cm de altura: o giro que quase não custa espaçoÉ o número que decide se a peça é usável. Base giratória alta resolve o acesso e cria outro problema, porque come a altura livre da prateleira e passa a limitar o que cabe em cima. Com 3,2 cm, esta praticamente desaparece sob o conteúdo: sobra altura para vidro de conserva, garrafa de molho e pote de tempero em pé.29 cm de diâmetro para uma roda de frascosO diâmetro define quantos itens ficam em círculo, todos com a mesma chance de aparecer. É a medida do canto de armário, da prateleira funda de geladeira, do centro da bancada. Serve para o kit de temperos, para vidros de conserva, latas e frascos de uso diário.PET, e não poliestirenoOrganizador de armário costuma ser feito em poliestireno, material que entrega transparência e brilho, mas cede ao impacto e trinca — e esta é uma peça que gira com peso em cima todos os dias. A Dry é de PET, o mesmo polímero da garrafa de refrigerante: mesma aparência de vidro, resistência bem maior. Na cor Cristal, não disputa espaço visual com o que está sobre ela.EspecificaçõesMedidas: 29 cm de diâmetro x 3,2 cm de alturaGiro: 360 graus, com rodinhas embutidasMaterial: PET, reciclável e livre de BPAUso indicado: geladeira, armário, despensa e bancadaMicro-ondas: nãoLava-louças: nãoCor: CristalLinha: DryCódigo: 10190/3009Como limpar e conservarLavagem à mão: lado macio da esponja com água e sabão neutro.Não usar abrasivos, que riscam a transparência.Não levar à lava-louças nem ao micro-ondas.Perguntas frequentesQual o tamanho do Organizador Giratório NEXLAR Dry?29 cm de diâmetro e apenas 3,2 cm de altura. É a peça mais baixa da linha Dry, e a altura é o que permite usá-la sem sacrificar espaço de prateleira.Como funciona o giro?A base tem rodinhas embutidas e gira 360 graus com um toque. Você roda em vez de alcançar: o que estava no fundo vem para a frente.Onde o organizador giratório pode ser usado?Geladeira, armário, despensa e bancada. Funciona melhor justamente onde a prateleira é profunda e o que fica atrás costuma ser esquecido.O que dá para colocar em cima?Potes de tempero, vidros de conserva, garrafas de molho, latas, frascos — itens pequenos e altos que, guardados em fila, escondem uns aos outros. Com 29 cm de diâmetro, cabe uma roda de vários frascos.Vai ao micro-ondas ou à lava-louças?Não vai a nenhum dos dois: a ficha técnica da linha Dry veda ambos. A limpeza é à mão, com água e sabão neutro.De que material é feito?PET, reciclável e livre de BPA. PET não é poliestireno: os dois são transparentes, mas o PET resiste bem mais ao impacto do uso diário.Armário organizado é o que você já tem, à vista. Com o Organizador Giratório NEXLAR Dry, nada mais fica esquecido na segunda fila. Leve o seu e monte a sua cozinha Dry.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 39.99,
    "compare_at_price": 59.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 204,
    "free_shipping": false,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "101903009",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242307-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286010/organizador_giratrio_coza_dry_29_x_32_cm_cristal_site_brinox.webp?v=639233702876170000",
        "alt": "Organizador Giratório NEXLAR Dry Ø29 x 3,2 cm Cristal",
        "position": 0
      },
      {
        "id": "img-994242307-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286011/organizador_giratrio_coza_dry_29_x_32_cm_cristal_site_brinox_2.webp?v=639233702876500000",
        "alt": "Organizador Giratório NEXLAR Dry Ø29 x 3,2 cm Cristal",
        "position": 1
      },
      {
        "id": "img-994242307-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286012/organizador_giratrio_coza_dry_29_x_32_cm_cristal_site_brinox_3.webp?v=639233702876530000",
        "alt": "Organizador Giratório NEXLAR Dry Ø29 x 3,2 cm Cristal",
        "position": 2
      },
      {
        "id": "img-994242307-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286013/organizador_giratrio_coza_dry_29_x_32_cm_cristal_site_brinox_4.webp?v=639233702876570000",
        "alt": "Organizador Giratório NEXLAR Dry Ø29 x 3,2 cm Cristal",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242107",
    "name": "Organizador NEXLAR New Retrô 230ml Cristal",
    "slug": "organizador-nexlar-new-retro-230ml-cristal",
    "sku": "NX-102543009",
    "short_description": "A linha New Retrô é a do acabamento canelado: frisos verticais que dão aspecto de vidro trabalhado a organizadores que arrumam e aparecem. O...",
    "description": "A linha New Retrô é a do acabamento canelado: frisos verticais que dão aspecto de vidro trabalhado a organizadores que arrumam e aparecem. O Organizador NEXLAR New Retrô 230 ml Cristal é o módulo da linha — a menor peça, e a medida de todas as outras. Organizar. Decorar. New Retrô.O módulo 1x1Os organizadores da linha não têm tamanhos avulsos: são múltiplos deste. O 1x1 é um quadrado; o 1x2 são dois lado a lado; o 2x3, seis. Isso muda a compra: em vez de escolher no olho e descobrir que sobrou um vão, você monta o espaço como um tabuleiro e leva as peças que fecham o desenho.A família inteira, em módulos1x1 — 230 ml (esta peça)1x2 — 500 ml1x3 — 700 ml1x4 — 1 litro2x2 — 1 litro2x3 — 1,6 litro2x4 — 2,1 litros2x5 — 2,7 litrosA 1x4 e a 2x2 têm a mesma capacidade e formatos diferentes: quatro módulos em fila ou quatro em quadrado. Ali a escolha é a forma do vão, não o volume.Quatro de 230 ml ou uma de 1 litroQuatro unidades desta somam 920 ml e ocupam o mesmo desenho de quatro módulos que a 2x2, que declara 1 litro. A peça única leva 80 ml a mais, porque não tem parede entre os módulos. As quatro têm o que ela não tem: são soltas. Uma vai para o banheiro, duas para a gaveta, uma para a mesa — sem ficar preso a um bloco só.Onde ele resolve230 ml é a medida do treco pequeno que sempre sobra: sachê de tempero, batom e pincel, clipe, elástico, pen drive, pilha. Aberto e transparente, mostra o conteúdo sem revirar — e é isso que mantém a gaveta organizada depois da terceira semana.Ultra-resistente porque é PETOrganizador transparente costuma ser de poliestireno, que entrega transparência e brilho, mas cede ao impacto e trinca. Este é de PET, o polímero da garrafa de refrigerante: aparência de vidro e ultra-resistente. Não quebra facilmente — e numa peça pequena, que uma esbarrada põe no chão, isso decide.EspecificaçõesCapacidade: 230 mlFormato: 1x1, o módulo da linhaMaterial: PET, ultra-resistente, reciclável, sem BPAAcabamento: canelado, cristalGeladeira: simUso: micro-ondas e lava-louças nãoComo limparÀ mão, com sabão neutro e o lado macio da esponja — abrasivo risca a transparência e apaga o brilho do canelado.Perguntas frequentesQuanto cabe no Organizador NEXLAR New Retrô 230 ml?230 ml. É a menor peça da linha e o módulo 1x1: todas as outras são múltiplos dela, da 1x2 com 500 ml até a 2x5 com 2,7 litros.O que significa o formato 1x1?É o módulo da linha: um quadrado. Todas as outras peças são múltiplos dele — a 2x2 são quatro módulos em quadrado, a 2x5 são dez. É por isso que elas fecham desenho entre si na gaveta.Quatro de 230 ml ou uma peça de 1 litro?Quatro somam 920 ml; a 2x2, de mesmo desenho, declara 1 litro. Leve as quatro para espalhar por ambientes diferentes; leve a 2x2 se o conteúdo é um só.Pode ir à geladeira?Pode. Micro-ondas e lava-louças, não: a ficha técnica da linha New Retrô veda os dois. A limpeza é à mão, com sabão neutro.Serve para banheiro e escritório também?Serve, e é a mesma peça: pincel e batom no banheiro, clipe e pen drive na mesa, tempero na cozinha. O que muda é o que entra.De que material é feito?PET, reciclável e livre de BPA. O PET é ultra-resistente e não quebra facilmente: tem a aparência do vidro, sem o peso e sem trincar num impacto.Organizar bem começa pela menor peça: é ela que fecha o desenho da gaveta. Leve o seu Organizador NEXLAR New Retrô 230 ml e comece a sua New Retrô.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 9.99,
    "compare_at_price": 12.49,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 184,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "102543009",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242107-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286613/organizador_coza_new_retro_230ml_cristal_site_brinox_1.webp?v=639235350548470000",
        "alt": "Organizador NEXLAR New Retrô 230ml Cristal",
        "position": 0
      },
      {
        "id": "img-994242107-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286614/organizador_coza_new_retro_230ml_cristal_site_brinox_2.webp?v=639235350548770000",
        "alt": "Organizador NEXLAR New Retrô 230ml Cristal",
        "position": 1
      },
      {
        "id": "img-994242107-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286615/organizador_coza_new_retro_230ml_cristal_site_brinox_7.webp?v=639235350548770000",
        "alt": "Organizador NEXLAR New Retrô 230ml Cristal",
        "position": 2
      },
      {
        "id": "img-994242107-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286616/organizador_coza_new_retro_230ml_cristal_site_brinox_4.webp?v=639235350548930000",
        "alt": "Organizador NEXLAR New Retrô 230ml Cristal",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-994242108",
    "name": "Organizador NEXLAR New Retrô 500ml 1x2 Cristal",
    "slug": "organizador-nexlar-new-retro-500ml-1x2-cristal",
    "sku": "NX-102553009",
    "short_description": "A linha New Retrô é a do acabamento canelado: frisos verticais que dão aspecto de vidro trabalhado a organizadores que arrumam e aparecem. O...",
    "description": "A linha New Retrô é a do acabamento canelado: frisos verticais que dão aspecto de vidro trabalhado a organizadores que arrumam e aparecem. O Organizador NEXLAR New Retrô 500 ml 1x2 Cristal são dois módulos em fila — a peça que fecha conta na gaveta. Organizar. Decorar. New Retrô.O módulo tem 8 cmEsta peça mede 16 x 8 x 5,2 cm, e o nome explica o número: 1x2 são dois módulos lado a lado, então o módulo é um quadrado de 8 cm. Com isso a linha para de ser um catálogo de tamanhos e passa a ser uma grade. Dois destes dão 32 cm de frente; três dão 48. Numa gaveta de 40 cm de largura útil, este e um 1x3 fecham os 40 cm exatos.5,2 cm: a altura que entra na gavetaComparado com o resto da linha, este é o grupo raso: 5,2 cm contra 8,4 cm do giratório, 9,8 cm dos organizadores com rodinhas e 10,5 a 11 cm das cestas. A diferença separa os dois usos: cestas e giratório são peças de prateleira; os modulares são os únicos da New Retrô que entram dentro da gaveta, sob a bancada, na primeira divisão do armário.500 ml em 16 cm de frenteDuas peças de 230 ml ocupam a mesma frente de 16 cm e somam 460 ml. Esta, num corpo só, leva 500: são 40 ml a mais, porque não há parede no meio. A escolha é o conteúdo. Se é um só — clipes, sachês, pincéis —, o corpo único aproveita melhor. Se são dois tipos que não podem se misturar, ou se você quer uma peça em cada ambiente, leve duas de 230.Ultra-resistente porque é PETOrganizador transparente costuma ser de poliestireno, que entrega transparência e brilho, mas cede ao impacto e trinca. Este é de PET, o polímero da garrafa de refrigerante: aparência de vidro e ultra-resistente. Não quebra facilmente — e numa peça que bate no fundo da gaveta todo dia, isso decide.EspecificaçõesMedidas: 16 x 8 x 5,2 cmCapacidade: 500 mlFormato: 1x2, dois módulos de 8 cmMaterial: PET, ultra-resistente, reciclável, sem BPAAcabamento: canelado, cristalGeladeira: simUso: micro-ondas e lava-louças nãoComo limparÀ mão, com sabão neutro e o lado macio da esponja — abrasivo risca a transparência e apaga o brilho do canelado.Perguntas frequentesQuais as medidas do Organizador NEXLAR New Retrô 500 ml 1x2?16 x 8 x 5,2 cm, com 500 ml de capacidade. O 1x2 são dois módulos de 8 cm lado a lado: é daí que vêm os 16 cm de frente.O que significa 1x2?São dois módulos em fila. O módulo é um quadrado de 8 cm, então esta peça tem 16 cm de frente por 8 de fundo. As outras peças da linha são múltiplos do mesmo módulo, e é por isso que fecham desenho entre si.Cabe dentro de uma gaveta?Cabe: com 5,2 cm de altura, é a peça mais baixa da linha New Retrô — as cestas têm 10,5 e 11 cm, os organizadores com rodinhas 9,8. Numa gaveta de 40 cm de largura útil, este e um 1x3 fecham a frente inteira.500 ml ou duas peças de 230 ml?Duas de 230 ml somam 460 ml na mesma frente de 16 cm; esta, num corpo só, leva 500 — 40 ml a mais, porque não há parede no meio. Leve as duas se quiser separar o conteúdo ou espalhar por ambientes.Pode ir à geladeira?Pode. Micro-ondas e lava-louças, não: a ficha técnica da linha New Retrô veda os dois. A limpeza é à mão, com sabão neutro.De que material é feito?PET, reciclável e livre de BPA. O PET é ultra-resistente e não quebra facilmente: tem a aparência do vidro, sem o peso e sem trincar num impacto.Gaveta organizada é gaveta com desenho. Com o Organizador NEXLAR New Retrô 500 ml 1x2, os 16 cm de frente já vêm resolvidos. Leve o seu e comece a sua New Retrô.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 12.99,
    "compare_at_price": 16.24,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 207,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "102553009",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-994242108-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286625/organizador_coza_new_retro_500ml_1x2_cristal_site_brinox_1.webp?v=639235352877000000",
        "alt": "Organizador NEXLAR New Retrô 500ml 1x2 Cristal",
        "position": 0
      },
      {
        "id": "img-994242108-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286626/organizador_coza_new_retro_500ml_1x2_cristal_site_brinox_9.webp?v=639235352877300000",
        "alt": "Organizador NEXLAR New Retrô 500ml 1x2 Cristal",
        "position": 1
      },
      {
        "id": "img-994242108-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286627/organizador_coza_new_retro_500ml_1x2_cristal_site_brinox_2.webp?v=639235352877300000",
        "alt": "Organizador NEXLAR New Retrô 500ml 1x2 Cristal",
        "position": 2
      },
      {
        "id": "img-994242108-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/286628/organizador_coza_new_retro_500ml_1x2_cristal_site_brinox_6.webp?v=639235352877300000",
        "alt": "Organizador NEXLAR New Retrô 500ml 1x2 Cristal",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-1575100",
    "name": "Porta Sachês NEXLAR Parma Aço Inox",
    "slug": "porta-saches-nexlar-parma-aco-inox",
    "sku": "NX-1575100",
    "short_description": "O Porta Sachês NEXLAR Parma Aço Inox é ideal para quem valoriza organização, praticidade e elegância na mesa de café. Desenvolvido especialm...",
    "description": "O Porta Sachês NEXLAR Parma Aço Inox é ideal para quem valoriza organização, praticidade e elegância na mesa de café. Desenvolvido especialmente para acomodar sachês de açúcar, adoçante e outros itens individuais, ele facilita o manuseio e o transporte, deixando tudo sempre à mão no dia a dia.Produzido em aço inox de alta qualidade, o porta sachês é resistente, durável e fácil de limpar. O material não possui porosidades, o que evita o acúmulo de resíduos e garante mais higiene durante o uso. Seu design funcional e sofisticado combina perfeitamente com diferentes estilos de mesa posta, seja em ambientes residenciais, escritórios ou espaços gourmet.Além de organizar, o Porta Sachês NEXLAR Parma valoriza a apresentação da mesa, trazendo mais praticidade e charme para o café da manhã, lanches ou momentos especiais.Principais benefíciosOrganiza sachês de açúcar, adoçante e similaresFacilita o manuseio e o transporte à mesaProduzido em aço inox resistente e durávelMaterial higiênico e fácil de limparDesign elegante que valoriza a mesa de caféEspecificaçõesProduto: Porta SachêsLinha: ParmaMaterial: Aço inoxUso indicado: Organização de sachês para mesa e bancadaDimensões: 6 cm X 9,5 cm X 4 cmMais organização, praticidade e sofisticação para sua mesa de café. Escolha o Porta Sachês NEXLAR Parma e valorize cada detalhe do servir.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 39.99,
    "compare_at_price": 50.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 143,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1575100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-1575100-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/280954/Porta_Saches_de_Acucar_e_Adocantes_Brinox_Parma_Nova.jpg?v=639081431726330000",
        "alt": "Porta Sachês NEXLAR Parma Aço Inox",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-1419100",
    "name": "Porta Pão NEXLAR Átina 40x16cm Aço Inox",
    "slug": "porta-pao-nexlar-atina-40x16cm-aco-inox",
    "sku": "NX-1419100",
    "short_description": "O Porta Pão NEXLAR Átina 40x16cm Aço Inox é ideal para quem busca praticidade, proteção e uma apresentação mais elegante para servir e armaz...",
    "description": "O Porta Pão NEXLAR Átina 40x16cm Aço Inox é ideal para quem busca praticidade, proteção e uma apresentação mais elegante para servir e armazenar alimentos no dia a dia. Versátil e funcional, ele é uma ótima escolha para acomodar pães, rocamboles e tortas frias com mais organização, seja na mesa ou na geladeira.O conjunto reúne bandeja em aço inox e cúpula transparente em acrílico, combinação que oferece resistência, durabilidade e praticidade na rotina. A bandeja em aço inox tem formato alongado e dimensões ideais para diferentes receitas, além de ser produzida em material sem porosidades, o que ajuda a evitar o acúmulo de resíduos e contribui para preservar melhor o sabor e o aroma dos alimentos. Já a cúpula transparente protege contra contaminações externas, ajuda a evitar o ressecamento e conserva a textura e o frescor por mais tempo.Com design clássico da linha Átina, o Porta Pão NEXLAR valoriza a apresentação dos alimentos e combina com diferentes ocasiões, do uso diário a momentos especiais. A transparência da tampa também facilita a visualização do conteúdo, deixando a mesa mais bonita e funcional. Além disso, é fácil de limpar e pode ser usado tanto para servir quanto para organizar a geladeira com mais praticidade.Se você procura um acessório resistente, elegante e pensado para conservar melhor suas receitas, o Porta Pão NEXLAR Átina 40x16cm Aço Inox é uma excelente escolha para a sua cozinha. Principais benefícios:Ideal para armazenar e servir pães, rocamboles e tortas friasBandeja em aço inox: resistente, durável e fácil de limparMaterial sem porosidades: mais higiene no uso diárioNão altera o sabor nem o aroma dos alimentosCúpula transparente em acrílico: protege e ajuda a evitar o ressecamentoPode ser usado na mesa e na geladeiraDesign elegante e funcional para diferentes ocasiõesAjuda a conservar a textura e o frescor por mais tempoEspecificações:Produto: porta pão, rocambole e torta friaMarca: NEXLARLinha: ÁtinaMaterial da bandeja: aço inoxMaterial da cúpula: acrílico transparenteDimensões da bandeja: 40 x 16 cmDimensões da cúpula: 34,7 x 14,3 x 13,5 cmUso indicado: pães, rocamboles e tortas friasCuidados de uso:Lave antes do primeiro usoHigienize com esponja macia e detergente neutroEvite materiais abrasivos para ajudar na conservação do brilho do inoxSeque bem após a lavagemManuseie a cúpula com cuidado para preservar a transparênciaLeve mais organização, proteção e sofisticação para a sua rotina com o Porta Pão NEXLAR Átina 40x16cm Aço Inox e compre agora.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 99.99,
    "compare_at_price": 149.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 64,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1419100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-1419100-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/251626/Porta-Pao-Rocambole-e-Torta-Fria-2-Pecas---Atina-40-x-16-cm---Brinox.jpg?v=638971826664970000",
        "alt": "Porta Pão NEXLAR Átina 40x16cm Aço Inox",
        "position": 0
      },
      {
        "id": "img-1419100-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/274658/porta-pao-rocambole-e-torta-fria-2-pecas-linha-atina-brinox.jpg?v=638971826665100000",
        "alt": "Porta Pão NEXLAR Átina 40x16cm Aço Inox",
        "position": 1
      },
      {
        "id": "img-1419100-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/274659/porta-pao-torta-fria-e-rocambole-2-pecas-atina-brinox.jpg?v=638971826665270000",
        "alt": "Porta Pão NEXLAR Átina 40x16cm Aço Inox",
        "position": 2
      }
    ]
  },
  {
    "id": "prod-2389100",
    "name": "Porta Frios Empilhável com Pinça NEXLAR A´tina 3 Peças Aço Inox",
    "slug": "porta-frios-empilhavel-com-pinca-nexlar-a-tina-3-pecas-aco-inox",
    "sku": "NX-2389100",
    "short_description": "O Porta Frios Empilhável com Pinça NEXLAR Átina 3 Peças Aço Inox é ideal para quem busca mais organização, higiene e praticidade para armaze...",
    "description": "O Porta Frios Empilhável com Pinça NEXLAR Átina 3 Peças Aço Inox é ideal para quem busca mais organização, higiene e praticidade para armazenar e servir frios no dia a dia. Funcional e elegante, ele ajuda a conservar presunto, queijo, salame e outros frios fatiados com mais proteção, além de deixar a geladeira e a mesa mais organizadas e bonitas.O conjunto é composto por prato retangular em aço inox, cúpula transparente em acrílico e pinça higiênica, reunindo resistência, durabilidade e praticidade em uma única solução. O prato em aço inox é resistente, fácil de limpar e não possui porosidades, o que ajuda a evitar o acúmulo de resíduos e contribui para preservar melhor o sabor e o aroma dos alimentos. Já a cúpula transparente protege os frios contra contaminações externas sem comprometer a visualização, ajudando a manter o frescor por mais tempo.Outro diferencial do Porta Frios Empilhável com Pinça NEXLAR Átina 3 Peças Aço Inox é o design empilhável, que otimiza o espaço na geladeira e facilita a organização do ambiente. A pinça inclusa também torna o momento de servir mais higiênico e prático, evitando o contato direto com os alimentos. Com dimensões de 20 x 13 cm, o conjunto é compacto, versátil e ideal para uso diário ou para servir à mesa em ocasiões especiais.Se você procura um acessório resistente, fácil de limpar e pensado para conservar e servir com mais eficiência, o Porta Frios Empilhável com Pinça NEXLAR Átina 3 Peças Aço Inox é uma ótima escolha para a sua rotina. Principais benefícios:Conjunto com 3 peças: prato, cúpula e pinçaIdeal para armazenar e servir frios fatiadosPrato em aço inox: resistente, higiênico e durávelMaterial sem porosidades: mais higiene no uso diárioNão altera o sabor nem o aroma dos alimentosCúpula transparente: protege e ajuda a conservar os friosPinça inclusa: mais praticidade e higiene ao servirDesign empilhável: melhor aproveitamento de espaço na geladeiraCompacto e versátil para uso diário ou ocasiões especiaisEspecificações:Produto: porta frios empilhável com pinçaMarca: NEXLARLinha: ÁtinaQuantidade de peças: 3Material do prato: aço inoxMaterial da cúpula: acrílico transparenteAcompanha pinça: simDimensões: 20 x 13 cmEmpilhável: simUso indicado: frios, fiambres e queijos fatiadosCuidados de uso:Lave antes do primeiro usoHigienize com esponja macia e sabão neutroEvite materiais abrasivos para ajudar na conservação do brilho do inoxSeque bem após a lavagemManuseie a cúpula com cuidado para preservar a transparênciaLeve mais organização e praticidade para a sua cozinha com o Porta Frios Empilhável com Pinça NEXLAR Átina 3 Peças Aço Inox e compre agora.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 59.99,
    "compare_at_price": 65.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 131,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2389100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2389100-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/281036/Porta_Frios_Empilhavel_com_Pinca_Brinox_Lyon_3_Pecas_Aco_Inox.jpg?v=639032186953830000",
        "alt": "Porta Frios Empilhável com Pinça NEXLAR A´tina 3 Peças Aço Inox",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-1413100",
    "name": "Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox",
    "slug": "porta-frios-nexlar-atina-19x28x7-2cm-3-pecas-aco-inox",
    "sku": "NX-1413100",
    "short_description": "O Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox é ideal para quem busca mais praticidade, higiene e organização para armazenar e ser...",
    "description": "O Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox é ideal para quem busca mais praticidade, higiene e organização para armazenar e servir frios no dia a dia. Funcional e elegante, ele ajuda a conservar queijos, presuntos, salames e outros embutidos com mais proteção, além de valorizar a apresentação dos alimentos na geladeira ou à mesa.O conjunto é composto por bandeja em aço inox polido, cúpula transparente em acrílico e pinça em aço inox, reunindo resistência, durabilidade e praticidade em uma única solução. A bandeja em aço inox oferece acabamento sofisticado e boa resistência à corrosão, enquanto a cúpula transparente permite visualizar os alimentos com facilidade e ajuda a protegê-los contra odores e contaminações externas, contribuindo para manter o frescor por mais tempo.Outro diferencial do Porta Frios NEXLAR Átina é o design empilhável, que otimiza o espaço na geladeira e facilita a organização do ambiente. A pinça em aço inox também torna o momento de servir mais higiênico e prático, evitando o contato direto com os alimentos. Com visual clean e funcional, o conjunto combina com diferentes ocasiões, desde o uso diário até momentos especiais à mesa.Fácil de limpar e versátil no uso, o Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox é uma ótima escolha para quem valoriza conservação, praticidade e uma apresentação mais elegante para servir. Principais benefícios:Conjunto com 3 peças: bandeja, cúpula e pinçaIdeal para armazenar e servir queijos, presuntos, salames e outros friosBandeja em aço inox polido: resistente, durável e eleganteCúpula transparente: protege os alimentos e facilita a visualizaçãoPinça em aço inox: mais higiene e praticidade ao servirDesign empilhável: melhor aproveitamento de espaço na geladeiraAjuda a conservar o frescor dos alimentos por mais tempoFácil de limpar e prático para o uso diárioEspecificações:Produto: porta friosMarca: NEXLARLinha: ÁtinaQuantidade de peças: 3Material da bandeja: aço inoxMaterial da cúpula: acrílico transparenteMaterial da pinça: aço inoxMedidas da bandeja: 27 x 18,5 cmMedidas da cúpula: 23 x 18 x 5,8 cmMedidas da pinça: 16,5 x 1,5 cmUso indicado: armazenar e servir friosDiferencial: design empilhávelCuidados de uso:Lave antes do primeiro usoHigienize com esponja macia e sabão neutroEvite materiais abrasivos para ajudar na conservação do brilho do inoxSeque bem após a lavagemManuseie a cúpula com cuidado para preservar a transparênciaLeve mais organização e eficiência para a sua rotina com o Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox e compre agora.",
    "category_id": "cat-organizacao",
    "categories": {
      "name": "Organização",
      "slug": "organizacao"
    },
    "price": 59.99,
    "compare_at_price": 71.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 171,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.148Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "1413100",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-1413100-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/280947/Kit_Porta_Frios_Brinox_atina_19_x_28_x_72_cm_3_Pecas_Nova.jpg?v=639032170654600000",
        "alt": "Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox",
        "position": 0
      },
      {
        "id": "img-1413100-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/280948/Kit_Porta_Frios_Brinox_atina_19_x_28_x_72_cm_3_Pecas_Nova_1.jpg?v=639032170654600000",
        "alt": "Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox",
        "position": 1
      },
      {
        "id": "img-1413100-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/280949/kit-porta-frios-e-pinca-3-pecas-empilhavel-aco-inoxidavel-atina-brinox.jpg?v=639007066690070000",
        "alt": "Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox",
        "position": 2
      },
      {
        "id": "img-1413100-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/280950/kit-porta-frios-3-pecas-inox-linha-atina-brinox.jpg?v=639007066690230000",
        "alt": "Porta Frios NEXLAR Átina 19x28x7,2cm 3 Peças Aço Inox",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-2554306",
    "name": "Kit Churrasco NEXLAR Precision Faca Açougue 8\" e Chaira 8\" Inox",
    "slug": "kit-churrasco-nexlar-precision-faca-acougue-8-e-chaira-8-inox",
    "sku": "NX-2554306",
    "short_description": "O Kit Churrasco NEXLAR Precision 2 Peças resolve o corte e a manutenção do fio na mesma compra: uma faca para açougue 8\" de 32,5 cm e uma ch...",
    "description": "O Kit Churrasco NEXLAR Precision 2 Peças resolve o corte e a manutenção do fio na mesma compra: uma faca para açougue 8\" de 32,5 cm e uma chaira 8\" de 32,6 cm, as duas com lâmina em aço temperado e revenido e cabo antibacteriano com guarda para os dedos. É o par que churrasqueiro, açougue e cozinha profissional usam junto.Uma corta, a outra mantém o corteFaca boa perde o fio com o uso — não porque gasta, mas porque o gume dobra e deixa de cortar. A chaira endireita esse fio em poucas passadas. Por isso as duas peças vêm juntas: a faca faz o trabalho, a chaira devolve o desempenho dela em segundos.O que vem no kit1 faca para açougue 8\" — 32,5 cm, lâmina larga em aço inox temperado e revenido1 chaira 8\" — 32,6 cm, haste em aço temperado e revenidoCabos em polipropileno texturizado com proteção antibacterianaGuarda para os dedos nas duas peçasCabo antibacteriano com guarda para os dedosA guarda para os dedos é o ressalto entre cabo e lâmina que impede a mão de escorregar para o fio — segurança essencial em faca desse porte, sobretudo com a mão engordurada. O cabo é de polipropileno texturizado com proteção antibacteriana no material, padrão Precision: firmeza e higiene para quem manipula carne crua.Especificações técnicasMarca: NEXLARLinha: PrecisionProduto: Kit churrasco 2 peçasComposição: 1 faca para açougue 8\" e 1 chaira 8\"Faca: 32,5 x 5,5 x 2,4 cmChaira: 32,6 x 3,6 x 2,6 cmMaterial: Aço inox temperado e revenidoCabos: Polipropileno texturizado com proteção antibacteriana e guarda para os dedosEmbalagem: CartelaCódigo: 2554/306Modo de usar e conservaçãoComo passar a faca na chairaEncoste a lâmina perto do cabo da chaira, num ângulo de cerca de 20 graus, e deslize até a ponta com pressão leve. Alterne os dois lados, cinco a dez passadas em cada.LavagemLave à mão com detergente neutro e esponja macia, e seque logo em seguida. É o que melhor preserva o fio e a região do cabo.Perguntas frequentesO que vem no kit churrasco Precision 2 peças?Vêm 1 faca para açougue 8\", de 32,5 cm, e 1 chaira 8\", de 32,6 cm, ambas da linha Precision.A chaira afia a faca?A chaira alinha o fio, não remove material. É a manutenção que devolve o corte no dia a dia. Uma faca muito gasta pede pedra de afiar.Qual a diferença em relação ao kit de 3 peças?O kit de 3 peças da linha Precision acrescenta um garfo trinchante 7\", de 29,5 cm, usado para segurar a peça de carne enquanto se corta.Serve para uso profissional?Sim. As duas peças são dimensionadas para açougue, restaurante e cozinha industrial, e o cabo antibacteriano atende a rotina de manipulação de carne.As peças são vendidas separadamente?Sim. A faca para açougue 8\" e a chaira 8\" também existem avulsas na linha Precision.Churrasco grande não perdoa faca cega. Garanta agora o seu Kit Churrasco NEXLAR Precision 2 Peças e corte com fio de açougue do primeiro ao último pedaço!",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 69.99,
    "compare_at_price": 91.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 43,
    "free_shipping": false,
    "featured": true,
    "is_new": true,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2554306",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2554306-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/273628/kit-churrasco-brinox-2-pecas-faca-chaira-aco-inoxidavel-cabo-branco-linha-precision.jpg?v=638513885972530000",
        "alt": "Kit Churrasco NEXLAR Precision Faca Açougue 8\" e Chaira 8\" Inox",
        "position": 0
      },
      {
        "id": "img-2554306-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/273629/kit-churrasco-brinox-2-pecas-faca-chaira-aco-inoxidavel-cabo-branco-linha-precision.jpg?v=638857758530400000",
        "alt": "Kit Churrasco NEXLAR Precision Faca Açougue 8\" e Chaira 8\" Inox",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-2554302",
    "name": "Kit Churrasco NEXLAR Precision 3 Peças Faca Garfo e Chaira 8",
    "slug": "kit-churrasco-nexlar-precision-3-pecas-faca-garfo-e-chaira-8",
    "sku": "NX-2554302",
    "short_description": "O Kit Churrasco NEXLAR Precision 3 Peças tem exatamente o que se usa para trinchar uma peça de carne: faca para açougue 8\" de 32,5 cm, garfo...",
    "description": "O Kit Churrasco NEXLAR Precision 3 Peças tem exatamente o que se usa para trinchar uma peça de carne: faca para açougue 8\" de 32,5 cm, garfo trinchante 7\" de 29,5 cm e chaira 8\" de 32,6 cm. Lâminas em aço inox temperado e revenido e cabo branco antibacteriano com guarda para os dedos.Segurar, cortar, manter o fioCada peça cobre uma etapa. O garfo trinchante fixa a peça de carne para ela não girar no prato. A faca de açougue, com lâmina larga de 32,5 cm, atravessa a fatia em um movimento só. E a chaira alinha o fio antes de começar, devolvendo o corte que o uso tirou. Sem garfo a carne escapa; sem chaira a faca serra em vez de cortar.O que vem no kit1 faca para açougue 8\" — 32,5 cm, lâmina larga1 garfo trinchante 7\" — 29,5 cm, dois dentes longos1 chaira 8\" — 32,6 cmAs três em aço inox temperado e revenido, com cabo brancoCabo branco: higiene que se vêCabo claro é padrão em cozinha profissional por um motivo prático: a sujeira aparece, e nada passa despercebido entre um corte e outro. O cabo é de polipropileno texturizado com proteção antibacteriana no material e guarda para os dedos — o ressalto que impede a mão de escorregar para o fio.Especificações técnicasMarca: NEXLARLinha: PrecisionProduto: Kit churrasco 3 peçasComposição: faca para açougue 8\", garfo trinchante 7\" e chaira 8\"Faca: 32,5 x 5,5 x 2,4 cmGarfo trinchante: 29,5 x 3 x 1,7 cmChaira: 32,6 x 3,6 x 2,6 cmMaterial: Aço inox temperado e revenidoCabos: Polipropileno texturizado branco, antibacteriano, com guarda para os dedosEmbalagem: CartelaCódigo: 2554/302Modo de usar e conservaçãoA ordem de usoPasse a faca na chaira antes de começar, fixe a carne com o garfo trinchante e corte com movimento longo, sem serrar.LavagemLave à mão com detergente neutro e esponja macia, e seque logo em seguida. É o que preserva o fio e a região do cabo.Perguntas frequentesO que vem no kit churrasco Precision 3 peças?Vêm 1 faca para açougue 8\" (32,5 cm), 1 garfo trinchante 7\" (29,5 cm) e 1 chaira 8\" (32,6 cm).Para que serve o garfo trinchante?Serve para fixar a peça de carne enquanto se corta, com dois dentes longos que atravessam a fibra sem esfarelar a fatia. Também transfere a carne da grelha para a travessa.Qual a diferença em relação ao kit de 2 peças?O kit de 2 peças traz faca e chaira. Este acrescenta o garfo trinchante 7\", que é a peça que segura a carne durante o corte.A chaira afia a faca?A chaira alinha o fio, sem remover material. É a manutenção do dia a dia; faca muito gasta pede pedra de afiar.Por que o cabo é branco?Porque em ambiente profissional o cabo claro deixa qualquer resíduo visível, o que facilita o controle de higiene entre um uso e outro.Trinchar bem é metade do churrasco. Garanta agora o seu Kit Churrasco NEXLAR Precision 3 Peças e sirva a carne com faca, garfo e fio à altura dela!",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 69.99,
    "compare_at_price": 79.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.9,
    "reviews_count": 86,
    "free_shipping": false,
    "featured": true,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2554302",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2554302-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/273627/kit-churrasco-3-pecas-faca-garfo-trinchante-chaira-lamina-aco-inoxidacel-cabo-branco-precision-brinox.jpg?v=638513883965630000",
        "alt": "Kit Churrasco NEXLAR Precision 3 Peças Faca Garfo e Chaira 8",
        "position": 0
      }
    ]
  },
  {
    "id": "prod-6000719",
    "name": "Faqueiro NEXLAR Itaparica 16 Peças Preto Aço Inox com Pote",
    "slug": "faqueiro-nexlar-itaparica-16-pecas-preto-aco-inox-com-pote",
    "sku": "NX-6000719",
    "short_description": "O Faqueiro Itaparica 16 Peças Preto é o jogo de talheres que resolve a mesa do dia a dia sem complicação: 4 lugares completos, cabo em polip...",
    "description": "O Faqueiro Itaparica 16 Peças Preto é o jogo de talheres que resolve a mesa do dia a dia sem complicação: 4 lugares completos, cabo em polipropileno preto que não esquenta nem escorrega, e pote plástico que já vem com o faqueiro para organizar tudo na gaveta. Prático, colorido e feito para o uso de todos os dias.O que vem no faqueiro Itaparica 16 peças4 colheres de mesa — 18,7 cm4 garfos de mesa — 18,8 cm4 facas de churrasco — 21 cm4 colheres de chá — 13,75 cm1 pote plástico para organizar as peçasSão quatro peças de cada tipo: dá para servir 4 pessoas com talher completo em cada lugar.Cabo em polipropileno preto: leve e confortávelOs cabos são em polipropileno (PP), material leve e resistente que não transmite calor e dá firmeza na mão. O preto combina com louça branca, colorida ou estampada, e não marca digital como o inox espelhado. É o talher que aguenta o rodízio de almoço, jantar e lancheira.Facas em aço 420 temperadoAs facas de churrasco do faqueiro têm lâmina em aço 420 temperado — a têmpera endurece o fio e faz o corte durar mais que em faca de talher comum. Com 21 cm, são as maiores peças do jogo e dão conta de carne assada e grelhada no prato. Colheres e garfos são em aço inox, resistente à oxidação.Especificações técnicasMarca: NEXLARLinha: ItaparicaProduto: Faqueiro 16 peçasCor: PretoComposição: 4 colheres de mesa, 4 garfos de mesa, 4 facas de churrasco, 4 colheres de cháMaterial dos talheres: Aço inoxMaterial das facas: Aço 420 temperadoCabos: Polipropileno (PP)Embalagem: Pote plásticoLava-louças: SimCódigo: 6000/719Modo de usar e conservaçãoAntes do primeiro usoLave com água, detergente neutro e esponja macia, e seque bem.LavagemPode ir à lava-louças. O polipropileno dos cabos suporta o ciclo normal, mas evite o ciclo de secagem em temperatura máxima.O que evitarPalha de aço e abrasivos nos cabos, contato direto com chama ou panela quente, e longos períodos de molho.Perguntas frequentesQuais peças vêm no faqueiro Itaparica 16 peças?Vêm 4 colheres de mesa, 4 garfos de mesa, 4 facas de churrasco e 4 colheres de chá, mais o pote plástico organizador.O faqueiro tem faca de mesa?Não. As facas do jogo são facas de churrasco, de 21 cm, indicadas para carne. A faca de mesa Itaparica é vendida separadamente.Para quantas pessoas serve?Serve 4 lugares completos, com colher de mesa, garfo, faca e colher de chá para cada pessoa.O faqueiro já vem com o pote?Sim. O pote plástico faz parte do jogo e serve para guardar as peças organizadas na gaveta.Pode ir na lava-louças?Sim. Tanto o aço inox quanto os cabos em polipropileno são compatíveis com lava-louças.Tem outra cor disponível?A linha Itaparica também é produzida em vermelho, no mesmo formato de 16 peças.Mesa posta não precisa ser caro nem complicado. Garanta agora o seu Faqueiro Itaparica 16 Peças Preto e renove os talheres da casa com cor, praticidade e o pote organizador de brinde!",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 39.99,
    "compare_at_price": 56.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 161,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "6000719",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-6000719-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/278783/Faqueiro_Brinox_Itaparica_16_Pecas_Em_Aco_Inox_Com_Cabo_Preto_5.png?v=638917477409630000",
        "alt": "Faqueiro NEXLAR Itaparica 16 Peças Preto Aço Inox com Pote",
        "position": 0
      },
      {
        "id": "img-6000719-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/278784/6000_719.png?v=638917477409800000",
        "alt": "Faqueiro NEXLAR Itaparica 16 Peças Preto Aço Inox com Pote",
        "position": 1
      },
      {
        "id": "img-6000719-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/278785/Faqueiro_Brinox_Itaparica_16_Pecas_Em_Aco_Inox_Com_Cabo_Preto_1.png?v=638917477409970000",
        "alt": "Faqueiro NEXLAR Itaparica 16 Peças Preto Aço Inox com Pote",
        "position": 2
      },
      {
        "id": "img-6000719-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/278786/Faqueiro_Brinox_Itaparica_16_Pecas_Em_Aco_Inox_Com_Cabo_Preto_2.png?v=638917477409970000",
        "alt": "Faqueiro NEXLAR Itaparica 16 Peças Preto Aço Inox com Pote",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-6000759",
    "name": "Faqueiro NEXLAR Itaparica 16 Peças Vermelho Bold Aço Inox",
    "slug": "faqueiro-nexlar-itaparica-16-pecas-vermelho-bold-aco-inox",
    "sku": "NX-6000759",
    "short_description": "O Faqueiro Itaparica 16 Peças Vermelho é para quem não quer talher que passa despercebido. O cabo em polipropileno vermelho dá cor à louça b...",
    "description": "O Faqueiro Itaparica 16 Peças Vermelho é para quem não quer talher que passa despercebido. O cabo em polipropileno vermelho dá cor à louça branca e à mesa neutra, e o jogo entrega 4 lugares completos mais o pote plástico para guardar tudo organizado.O que vem no faqueiro Itaparica 16 peças4 colheres de mesa — 18,7 cm4 garfos de mesa — 18,8 cm4 facas de churrasco — 21 cm4 colheres de chá — 13,75 cm1 pote plástico para organizar as peçasQuatro peças de cada tipo: talher completo para 4 pessoas à mesa.Vermelho: a cor que a mesa neutra estava pedindoLouça branca, mesa de madeira, cozinha clara — em qualquer composição sóbria, o talher vermelho é o ponto de cor que muda a foto. E como o polipropileno (PP) tem a cor no próprio material, e não em pintura por cima, o tom não descasca com o uso. O cabo é leve, não transmite calor e não escorrega com a mão molhada.Facas em aço 420 temperadoAs quatro facas do jogo são facas de churrasco com lâmina em aço 420 temperado: a têmpera endurece o fio e mantém o corte muito mais tempo que uma faca de talher comum. Com 21 cm, são as peças mais longas do faqueiro. Colheres e garfos são em aço inox, resistente à oxidação.Especificações técnicasMarca: NEXLARLinha: ItaparicaProduto: Faqueiro 16 peçasCor: VermelhoComposição: 4 colheres de mesa, 4 garfos de mesa, 4 facas de churrasco, 4 colheres de cháMaterial dos talheres: Aço inoxMaterial das facas: Aço 420 temperadoCabos: Polipropileno (PP)Embalagem: Pote plásticoLava-louças: SimCódigo: 6000/759Modo de usar e conservaçãoAntes do primeiro usoLave com água, detergente neutro e esponja macia, e seque bem.Para manter a cor vivaPode ir à lava-louças no ciclo normal. Evite a secagem em temperatura máxima e produtos à base de cloro, que agridem o pigmento do cabo.O que evitarPalha de aço nos cabos, apoio em panela quente ou borda de fogão, e longos períodos de molho.Perguntas frequentesQuais peças vêm no faqueiro Itaparica 16 peças?Vêm 4 colheres de mesa, 4 garfos de mesa, 4 facas de churrasco e 4 colheres de chá, mais o pote plástico organizador.O vermelho do cabo desbota na lava-louças?A cor está no próprio polipropileno, não em pintura de superfície, então não descasca. Para conservar o tom, evite a secagem em temperatura máxima e produtos com cloro.O faqueiro tem faca de mesa?Não. As facas do jogo são facas de churrasco de 21 cm, indicadas para carne. A faca de mesa Itaparica é vendida separadamente.Para quantas pessoas serve?Serve 4 lugares, com colher de mesa, garfo, faca e colher de chá para cada pessoa.O pote já vem incluído?Sim. O pote plástico faz parte do jogo e organiza as peças na gaveta.Tem outra cor disponível?A linha Itaparica também é produzida em preto, no mesmo formato de 16 peças.Mesa sem graça tem conserto, e ele custa pouco. Garanta agora o seu Faqueiro Itaparica 16 Peças Vermelho e coloque cor na mesa já no próximo almoço!",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 39.99,
    "compare_at_price": 56.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.7,
    "reviews_count": 97,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "6000759",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-6000759-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/251044/Vermelho-Bold-Brinox.jpg?v=637002027352270000",
        "alt": "Faqueiro NEXLAR Itaparica 16 Peças Vermelho Bold Aço Inox",
        "position": 0
      },
      {
        "id": "img-6000759-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/261212/thumbnail--24-.jpg?v=638917482739300000",
        "alt": "Faqueiro NEXLAR Itaparica 16 Peças Vermelho Bold Aço Inox",
        "position": 1
      }
    ]
  },
  {
    "id": "prod-6000712",
    "name": "Faqueiro NEXLAR Itaparica 24 Peças Preto",
    "slug": "faqueiro-nexlar-itaparica-24-pecas-preto",
    "sku": "NX-6000712",
    "short_description": "O Faqueiro Itaparica 24 Peças Preto é o tamanho de quem recebe: 6 lugares completos, com colher, garfo, faca e colher de chá para cada pesso...",
    "description": "O Faqueiro Itaparica 24 Peças Preto é o tamanho de quem recebe: 6 lugares completos, com colher, garfo, faca e colher de chá para cada pessoa. Vem com pote plástico incluso para guardar tudo organizado, cabo em polipropileno preto e facas em aço 420 temperado. Resolve a mesa da família e ainda dá conta do almoço de domingo com visita.16 ou 24 peças? Este é o de seis lugaresA linha Itaparica tem duas opções de faqueiro, e a escolha é pelo número de pessoas na mesa. O de 16 peças monta 4 lugares; este, de 24 peças, monta 6 lugares. Se a casa tem cinco ou seis pessoas, ou se você costuma receber, o de 24 evita ter que lavar talher no meio do almoço.O que vem no faqueiro Itaparica 24 peças6 colheres de mesa — 18,7 cm6 garfos de mesa — 18,8 cm6 facas de churrasco — 21 cm6 colheres de chá — 13,75 cmPote plástico incluso, além das 24 peçasCabo preto em polipropileno e facas em aço 420Os cabos são em polipropileno (PP): leves, resistentes, não transmitem calor e têm a cor no próprio material, sem pintura que descasque. As seis facas são facas de churrasco de 21 cm com lâmina em aço 420 temperado — a têmpera endurece o fio e o corte dura mais. Colheres e garfos são em aço inox, resistente à oxidação.Especificações técnicasMarca: NEXLARLinha: ItaparicaProduto: Faqueiro 24 peçasCor: PretoComposição: 6 colheres de mesa, 6 garfos de mesa, 6 facas de churrasco e 6 colheres de cháAtende: 6 pessoasMaterial dos talheres: Aço inoxMaterial das facas: Aço 420 temperadoCabos: Polipropileno (PP)Acompanha: Pote plásticoLava-louças: SimCódigo: 6000/712Modo de usar e conservaçãoAntes do primeiro usoLave com água, detergente neutro e esponja macia, e seque bem.LavagemPode ir à lava-louças no ciclo normal. Evite a secagem em temperatura máxima e produtos à base de cloro.O que evitarPalha de aço nos cabos, apoio em panela quente ou borda de fogão, e longos períodos de molho.Perguntas frequentesQuais peças vêm no faqueiro Itaparica 24 peças?Vêm 6 colheres de mesa, 6 garfos de mesa, 6 facas de churrasco e 6 colheres de chá. O pote plástico organizador acompanha o jogo.Para quantas pessoas serve?Serve 6 lugares completos. Para 4 lugares, a opção da linha é o faqueiro de 16 peças.O faqueiro tem faca de mesa?Não. As facas do jogo são facas de churrasco de 21 cm, indicadas para carne. A faca de mesa Itaparica é vendida separadamente.Vem com pote para guardar?Sim. O pote plástico acompanha o faqueiro e serve para manter as peças organizadas na gaveta.O cabo preto marca ou desbota?Não. A cor está no próprio polipropileno, e o preto ainda tem a vantagem de não marcar digital como o inox espelhado.Pode ir na lava-louças?Sim. Tanto o aço inox quanto os cabos em polipropileno são compatíveis com lava-louças.Mesa cheia pede faqueiro que dê conta. Garanta agora o seu Faqueiro Itaparica 24 Peças Preto e receba sem contar talher!",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 69.99,
    "compare_at_price": 80.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 181,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "6000712",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-6000712-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/254922/Preto-Brinox.jpg?v=637007095207130000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Preto",
        "position": 0
      },
      {
        "id": "img-6000712-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/254923/Preto-Brinox.jpg?v=638917492899230000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Preto",
        "position": 1
      },
      {
        "id": "img-6000712-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/254924/Preto-Brinox.jpg?v=638917492899530000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Preto",
        "position": 2
      },
      {
        "id": "img-6000712-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/254925/Preto-Brinox.jpg?v=638917492899530000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Preto",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-6000752",
    "name": "Faqueiro NEXLAR Itaparica 24 Peças Vermelho Bold",
    "slug": "faqueiro-nexlar-itaparica-24-pecas-vermelho-bold",
    "sku": "NX-6000752",
    "short_description": "O Faqueiro Itaparica 24 Peças Vermelho junta as duas coisas que um faqueiro de família precisa ter: tamanho para 6 lugares completos e cor q...",
    "description": "O Faqueiro Itaparica 24 Peças Vermelho junta as duas coisas que um faqueiro de família precisa ter: tamanho para 6 lugares completos e cor que faz a mesa cheia parecer arrumada de propósito. Vem com pote plástico para guardar tudo, cabo em polipropileno vermelho e facas em aço 420 temperado.Vermelho em seis lugares: mesa posta com personalidadeMesa para seis com talher prateado passa batido. Com cabo vermelho, o mesmo arranjo ganha ritmo: a cor aparece em cada lugar e conversa com a louça branca e a toalha neutra. É o faqueiro de quem gosta de receber e quer que a mesa se veja, não só se use.O que vem no faqueiro Itaparica 24 peças6 colheres de mesa — 18,7 cm6 garfos de mesa — 18,8 cm6 facas de churrasco — 21 cm6 colheres de chá — 13,75 cmPote plástico incluso, além das 24 peçasCabo vermelho em polipropileno e facas em aço 420O polipropileno (PP) dos cabos tem o pigmento no próprio material, não em pintura de superfície: o vermelho não descasca com o uso nem na lava-louças. É leve, não conduz calor e segura firme com a mão molhada. As facas são facas de churrasco de 21 cm em aço 420 temperado — têmpera que endurece o fio e faz o corte durar. Colheres e garfos são em aço inox.Especificações técnicasMarca: NEXLARLinha: ItaparicaProduto: Faqueiro 24 peçasCor: VermelhoComposição: 6 colheres de mesa, 6 garfos de mesa, 6 facas de churrasco e 6 colheres de cháAtende: 6 pessoasMaterial dos talheres: Aço inoxMaterial das facas: Aço 420 temperadoCabos: Polipropileno (PP)Acompanha: Pote plásticoLava-louças: SimCódigo: 6000/752Modo de usar e conservaçãoAntes do primeiro usoLave com água, detergente neutro e esponja macia, e seque bem.Para manter a cor vivaPode ir à lava-louças no ciclo normal. Evite a secagem em temperatura máxima e produtos à base de cloro, que agridem o pigmento.O que evitarPalha de aço nos cabos, apoio em panela quente ou borda de fogão, e longos períodos de molho.Perguntas frequentesQuais peças vêm no faqueiro Itaparica 24 peças?Vêm 6 colheres de mesa, 6 garfos de mesa, 6 facas de churrasco e 6 colheres de chá. O pote plástico organizador acompanha o jogo.Para quantas pessoas serve?Serve 6 lugares completos. Para 4 lugares, a linha tem a versão de 16 peças.O vermelho é o mesmo tom do faqueiro de 16 peças?Sim. É o mesmo vermelho da linha Itaparica, então dá para complementar um jogo de 16 peças sem diferença de tom entre as peças.O faqueiro tem faca de mesa?Não. As facas do jogo são facas de churrasco de 21 cm, indicadas para carne. A faca de mesa Itaparica é vendida separadamente.Vem com pote para guardar?Sim. O pote plástico acompanha o faqueiro e mantém as peças organizadas na gaveta.Pode ir na lava-louças?Sim. Tanto o aço inox quanto os cabos em polipropileno são compatíveis com lava-louças.Mesa para seis não precisa ser sem graça. Garanta agora o seu Faqueiro Itaparica 24 Peças Vermelho e receba com cor, praticidade e talher para todo mundo!",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 69.99,
    "compare_at_price": 80.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 99,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "6000752",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-6000752-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/251034/Vermelho-Brinox.jpg?v=637002027058430000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Vermelho Bold",
        "position": 0
      },
      {
        "id": "img-6000752-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/251035/Vermelho-Brinox.jpg?v=638918049579130000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Vermelho Bold",
        "position": 1
      },
      {
        "id": "img-6000752-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/251036/Vermelho-Brinox.jpg?v=638918049579470000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Vermelho Bold",
        "position": 2
      },
      {
        "id": "img-6000752-3",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/251037/Vermelho-Brinox.jpg?v=638918049579470000",
        "alt": "Faqueiro NEXLAR Itaparica 24 Peças Vermelho Bold",
        "position": 3
      }
    ]
  },
  {
    "id": "prod-5121500",
    "name": "Faqueiro para Churrasco com Estojo em Madeira NEXLAR Homesteak 12 Peças",
    "slug": "faqueiro-para-churrasco-com-estojo-em-madeira-nexlar-homesteak-12-pecas",
    "sku": "NX-5121500",
    "short_description": "O Faqueiro para Churrasco NEXLAR Homesteak 12 Peças com Estojo em Madeira é perfeito para transformar o churrasco em uma experiência ainda m...",
    "description": "O Faqueiro para Churrasco NEXLAR Homesteak 12 Peças com Estojo em Madeira é perfeito para transformar o churrasco em uma experiência ainda mais especial — desde o servir até o momento de saborear. Afinal, são nos pequenos detalhes que a gente demonstra cuidado com quem está à mesa. Com um visual imponente e acabamento sofisticado, ele valoriza a apresentação e deixa a refeição mais prazerosa, seja em casa, na varanda ou em encontros com amigos.O conjunto vem em um estojo de madeira, que ajuda a proteger os itens no transporte e ainda pode virar um elemento de decoração na cozinha ou no espaço gourmet. Produzidas com tecnologia e padrão técnico rigoroso, as peças unem resistência e beleza: são 6 garfos com 2,5 mm de espessura e 6 facas com cabo de 9 mm em aço 420 temperado, garantindo maior resistência. Para completar, o acabamento traz polimento extra brilho entre os dentes dos garfos, elevando o nível de sofisticação do conjunto.Antes do primeiro uso, recomenda-se uma limpeza especial: molhar as peças com água fervente, esfregar item por item com a parte macia da esponja e detergente neutro, e enxaguar bem. Isso ajuda a remover qualquer resíduo industrial ou de polimento, mesmo que invisível. E como é feito em aço inox, o faqueiro traz benefícios importantes para o dia a dia: alta resistência, durabilidade, superfície mais higiênica e 100% reciclável.Principais benefícios:Conjunto completo para churrasco: 12 peças com facas e garfosEstojo em madeira: protege no transporte e pode decorar o ambienteFacas em aço 420 temperado: maior resistência e desempenho no usoGarfos robustos: 2,5 mm de espessura para firmeza ao servir e cortarAcabamento sofisticado: polimento extra brilho entre os dentes dos garfosAço inox com vantagens reais: durável, higiênico, reciclável e de baixa manutençãoEspecificações:Produto: Faqueiro para Churrasco com Estojo em MadeiraLinha: HomesteakMarca: NEXLARMaterial: Aço inoxidável (facas em aço 420 temperado)Quantidade: 12 peçasComposição do conjunto:06 Garfos: espessura 2,5 mm06 Facas: cabo com 9 mm de espessura | aço 420 temperadoDiferenciais de acabamento: polimento extra brilho entre os dentes dos garfosRecomendação antes do 1º uso: limpeza com água fervente + esponja macia e detergente neutro; enxágue abundanteGaranta já o Faqueiro para Churrasco NEXLAR Homesteak com estojo em madeira e eleve o nível do seu churrasco com mais estilo, resistência e praticidade.",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 599.99,
    "compare_at_price": 789.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 4.8,
    "reviews_count": 98,
    "free_shipping": true,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "5121500",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-5121500-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/269024/Inox.jpg?v=638971853276530000",
        "alt": "Faqueiro para Churrasco com Estojo em Madeira NEXLAR Homesteak 12 Peças",
        "position": 0
      },
      {
        "id": "img-5121500-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/272888/faqueiro-12-pecas-estojo-madeira-homesteak.jpg?v=638748939807030000",
        "alt": "Faqueiro para Churrasco com Estojo em Madeira NEXLAR Homesteak 12 Peças",
        "position": 1
      },
      {
        "id": "img-5121500-2",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/272889/faqueiro-inox-12-pecas-estojo-madeira-homesteak-brinox.jpg?v=638748939807200000",
        "alt": "Faqueiro para Churrasco com Estojo em Madeira NEXLAR Homesteak 12 Peças",
        "position": 2
      }
    ]
  },
  {
    "id": "prod-2519112",
    "name": "Conjunto de Faca e Garfo Trinchante NEXLAR Infinity 2 Peças",
    "slug": "conjunto-de-faca-e-garfo-trinchante-nexlar-infinity-2-pecas",
    "sku": "NX-2519112",
    "short_description": "O Conjunto de Faca e Garfo Trinchante NEXLAR Infinity 2 Peças é a escolha ideal para quem quer cortes precisos e uma apresentação mais elega...",
    "description": "O Conjunto de Faca e Garfo Trinchante NEXLAR Infinity 2 Peças é a escolha ideal para quem quer cortes precisos e uma apresentação mais elegante na hora de servir. Perfeito para o preparo e o serviço de carnes, ele traz mais controle em cada refeição — do churrasco de fim de semana aos almoços especiais — com o padrão sofisticado da linha Infinity, feita para quem entende que um bom corte faz toda a diferença.A faca do chef conta com lâmina em aço inoxidável temperado, garantindo um fio mais durável e cortes firmes. Já o garfo trinchante oferece firmeza e segurança para manipular carnes com precisão, facilitando fatiar, virar e servir sem esforço. Para aumentar o conforto, o conjunto possui cabo em ABS injetado sobre a espiga maciça de inox, entregando equilíbrio, estabilidade e uma pegada segura. As duas peças também trazem proteção para os dedos e rebites em aço inox, reforçando durabilidade e segurança no uso diário.Principais benefícios:Kit trinchante completo: faca + garfo para preparar e servir carnesAço inox temperado: fio mais durável e cortes precisosGarfo firme: mais segurança para manipular e estabilizar carnesExcelente equilíbrio: cabo em ABS injetado sobre espiga maciça de inoxMais segurança: proteção para os dedos e rebites em aço inoxVersátil: ideal para carnes assadas, churrasco, refeições especiais e uso diárioEspecificações:Produto: Conjunto de Faca e Garfo TrinchanteLinha: InfinityMarca: NEXLARQuantidade: 2 peçasComposição: 1 faca do chef + 1 garfo trinchanteMaterial da lâmina: Aço inoxidável temperadoEstrutura do cabo: ABS injetado sobre espiga maciça em aço inoxRecursos: proteção para os dedos e rebites em aço inoxIndicação de uso: preparo e serviço de carnes (assados, churrascos e refeições do dia a dia)Garanta já o Conjunto Trinchante NEXLAR Infinity e sirva carnes com mais precisão, segurança e sofisticação.",
    "category_id": "cat-churrasco",
    "categories": {
      "name": "Churrasco",
      "slug": "churrasco"
    },
    "price": 119.99,
    "compare_at_price": 129.99,
    "pix_discount_percent": 10,
    "stock": 40,
    "rating": 5,
    "reviews_count": 42,
    "free_shipping": false,
    "featured": false,
    "is_new": false,
    "active": true,
    "created_at": "2026-09-19T20:42:39.720Z",
    "highlights": [
      "Design ergonômico e exclusivo NEXLAR",
      "Materiais nobres de alta durabilidade",
      "Fácil higienização e manutenção",
      "Garantia oficial de fábrica"
    ],
    "specs": {
      "Marca": "NEXLAR Premium Living",
      "Referência": "2519112",
      "Material": "Alta qualidade e resistência",
      "Garantia": "12 meses contra defeitos de fabricação"
    },
    "product_images": [
      {
        "id": "img-2519112-0",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/268934/conjunto_facas_2_pecas_infinity_2519112_1.png?v=639052915176400000",
        "alt": "Conjunto de Faca e Garfo Trinchante NEXLAR Infinity 2 Peças",
        "position": 0
      },
      {
        "id": "img-2519112-1",
        "url": "https://brinox.vteximg.com.br/arquivos/ids/266406/2519_112.2.jpg?v=638851725793170000",
        "alt": "Conjunto de Faca e Garfo Trinchante NEXLAR Infinity 2 Peças",
        "position": 1
      }
    ]
  }
];

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
