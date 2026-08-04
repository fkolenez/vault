Esse conceito descreve uma técnica de espionagem eletrônica conhecida como **Van Eck phreaking**. A ideia é que um monitor, assim como outros equipamentos eletrônicos, emite pequenas quantidades de radiação eletromagnética enquanto funciona. Essas emissões podem "vazar" informações sobre o que está sendo exibido na tela.

Vamos por partes.

### 1. Todo equipamento eletrônico emite sinais eletromagnéticos

Sempre que uma corrente elétrica varia rapidamente (como acontece em um monitor, placa de vídeo ou cabo HDMI/VGA), ela gera um pequeno campo eletromagnético.

Esses sinais normalmente são:

- muito fracos;
- não intencionais;
- considerados um "efeito colateral" do funcionamento do equipamento.

### 2. Esses sinais carregam informações

O monitor recebe continuamente dados da placa de vídeo dizendo, por exemplo:

- pixel (1,1) = branco;
- pixel (1,2) = preto;
- pixel (1,3) = azul...

Como essas informações mudam milhares ou milhões de vezes por segundo, as correntes elétricas também variam rapidamente.

Essa variação produz um padrão de emissão eletromagnética que está relacionado ao conteúdo da tela.

### 3. Capturando essas emissões

Com uma antena adequada e equipamentos de rádio muito sensíveis, é possível captar parte dessas emissões à distância.

Depois, utilizando processamento de sinais, é possível reconstruir uma imagem aproximada do conteúdo exibido.

Não é como "tirar uma foto" da tela; é mais parecido com reconstruir um quebra-cabeça a partir do ruído eletromagnético emitido pelo dispositivo.

### 4. O que é Van Eck?

O nome vem do pesquisador Wim van Eck, que em 1985 publicou um trabalho demonstrando que era possível reconstruir o conteúdo de monitores CRT usando essas emissões.

A técnica passou a ser conhecida como **Van Eck phreaking**.

### 5. Funciona apenas com monitores antigos?

Não.

Ela foi muito mais fácil em monitores CRT, porque eles utilizavam sinais analógicos de alta potência.

Hoje existem:

- monitores LCD;
- HDMI;
- DisplayPort;
- notebooks;
- smartphones.

Todos ainda emitem algum nível de radiação eletromagnética, embora em geral seja mais difícil explorar essas emissões devido ao uso de interfaces digitais, melhores projetos eletrônicos e técnicas de blindagem.

### 6. Isso é um ataque real?

Sim. Esse tipo de ataque pertence à categoria conhecida como **TEMPEST**, que estuda o vazamento de informações por emissões físicas involuntárias de equipamentos eletrônicos.

Em ambientes de alta segurança (governos, forças armadas, serviços de inteligência e algumas empresas críticas), são usadas medidas como:

- blindagem eletromagnética das salas (gaiolas de Faraday);
- cabos especiais;
- equipamentos certificados;
- distância mínima entre áreas classificadas e áreas públicas.

### Exemplo simplificado

Imagine que você está digitando uma senha:

```
Senha: P@ssw0rd!
```

O monitor altera milhões de pixels para exibir esse texto.

Cada alteração provoca pequenas variações elétricas.

Essas variações geram emissões eletromagnéticas.

Um receptor suficientemente sensível pode captar essas emissões e, com processamento adequado, reconstruir uma imagem aproximada da tela, permitindo inferir o texto exibido.

Em resumo, **Van Eck phreaking** é uma técnica de espionagem baseada na interceptação das emissões eletromagnéticas involuntárias produzidas por equipamentos eletrônicos para reconstruir as informações que eles estão processando ou exibindo. Ela é um exemplo clássico de **ataque por canal lateral (side-channel attack)**, pois não explora uma vulnerabilidade de software, mas sim um efeito físico do funcionamento do hardware.