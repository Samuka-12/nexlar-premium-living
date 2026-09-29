# Análise estratégica do catálogo NEXLAR

**Data:** 29 de setembro de 2026  
**Escopo:** análise não destrutiva do catálogo local antes da inclusão de novos produtos.

## Decisão executiva

O catálogo já cobre as quatro oportunidades prioritárias do benchmark fornecido:

- **Frigideira inox próxima de 28 cm:** existem várias opções Tramontina em inox de 26–30 cm, incluindo Grano, Professional, Allegra e Brava.
- **Wok de 30–34 cm:** existem opções de 30 cm, 32 cm e 36 cm, incluindo Woks Tramontina Paris, Grano, Loreto e Trento.
- **Caçarola de 24–26 cm:** a categoria possui ampla cobertura em antiaderente, cerâmica, inox e ferro esmaltado.
- **Kit de utensílios:** já existem kits de cozinha e utensílios, incluindo o Set 4 Utensílios Inox Alpine da Le Creuset e kits Tramontina.

Por isso, não foram adicionadas novas frigideiras, woks, caçarolas ou kits de utensílios. Adicioná-los agora criaria repetição, não uma lacuna comercial.

A lacuna mais clara está nos acessórios de cozinha e mesa: o catálogo possui moedores, galheteiros, utensílios e kits mistos, mas não possuía uma linha dedicada de **facas** nem um **faqueiro** independente. Foram adicionados somente estes dois itens, dentro da categoria existente **Acessórios de Cozinha & Mesa**.

## Diagnóstico do catálogo

O snapshot anterior à inclusão tinha **1.537 produtos** distribuídos em **12 categorias**. A composição é ampla, com forte concentração em panelas, frigideiras, woks, jogos de panelas, panelas de pressão e itens Brinox, Tramontina, Panelux, Rochedo e Le Creuset.

As principais sobreposições aparecem em variações de cor, acabamento, material e tamanho. Isso é adequado para um catálogo de utilidades domésticas, mas significa que uma nova entrada só deve ser feita quando acrescentar uma função ou uma família de compra distinta.

A referência de “cozinha completa” está parcialmente atendida por jogos de panelas, pressão, moedores e utensílios. O elo mais fraco era a mesa e o preparo com facas dedicadas.

## Produtos incluídos

### Conjunto de Facas Edge 6 Peças com Bloco

- **SKU:** `NEX-EDGE-FACAS-6PC`
- **Categoria:** Acessórios de Cozinha & Mesa
- **Função estratégica:** adicionar uma solução dedicada de preparo, sem duplicar frigideiras ou panelas.
- **Imagem:** ativo local curado em `public/products/conjunto-facas-edge-6pc.jpg`.
- **Preço inicial:** R$ 189,90.
- **Estoque inicial:** 20 unidades.

### Faqueiro Line 42 Peças em Aço Inox

- **SKU:** `NEX-LINE-FAQUEIRO-42PC`
- **Categoria:** Acessórios de Cozinha & Mesa
- **Função estratégica:** completar a proposta de cozinha e mesa, criando uma opção de compra para servir e receber.
- **Imagem:** ativo local curado em `public/products/faqueiro-line-42pc.jpg`.
- **Preço inicial:** R$ 159,90.
- **Estoque inicial:** 20 unidades.

Os dois preços são **pontos de partida para teste comercial**, não afirmações de preço de mercado. As especificações foram mantidas conservadoras e registram que composição detalhada, fornecedor e garantia devem ser confirmados antes da aquisição definitiva.

## O que não foi alterado

- Nenhum produto existente foi removido ou substituído.
- Nenhum preço ou estoque existente foi alterado.
- Nenhuma categoria foi criada ou duplicada.
- Carrinho, checkout, pagamentos, order bumps, rotas, tabelas, buckets e integrações não foram modificados.
- As prioridades de frigideira inox, wok grande, caçarola média e kit de utensílios foram mantidas como já atendidas pelo catálogo atual.

## Fonte de decisão

A análise usou o benchmark e as regras fornecidas pelo usuário, combinados com a leitura do catálogo atual em `src/lib/catalog-data.ts`. O benchmark foi tratado como referência de composição e merchandising, não como prova de vendas ou popularidade de mercado.

## Extensão solicitada: linha de panelas NEXLAR

Após a solicitação adicional do usuário, foram incluídos seis produtos de panelas que não existiam no snapshot anterior. Eles usam os ativos locais curados que já estavam preparados no projeto e foram distribuídos nas categorias existentes, sem criar categorias novas:

- **Caçarola Slate 20 cm com Tampa**, em Caçarolas & Panelas Avulsas, R$ 149,90.
- **Frigideira Slate 24 cm**, em Frigideiras, Woks & Grills, R$ 119,90.
- **Wok Slate 30 cm**, em Frigideiras, Woks & Grills, R$ 169,90.
- **Jogo de Panelas Studio 5 Peças**, em Jogos de Panelas, R$ 349,90.
- **Panela de Pressão Ceramic Pro 4,2 L**, em Panelas de Pressão, R$ 199,90.
- **Panela de Pressão Ceramic Pro 5,4 L**, em Panelas de Pressão, R$ 229,90.

Essas entradas formam uma coleção NEXLAR coerente: uma peça avulsa compacta, uma frigideira, uma wok ampla, um jogo de entrada e duas capacidades de pressão. Elas complementam as marcas já existentes em vez de remover ou substituir suas opções.

Os preços e especificações desses seis produtos são pontos de partida comerciais baseados nos ativos internos e precisam ser confirmados com o fornecedor antes de uma aquisição definitiva. O catálogo registra essa condição explicitamente para não tratar dados preliminares como prova de preço ou especificação oficial.
