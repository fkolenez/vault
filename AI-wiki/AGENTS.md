# Operação deste LLM Wiki

Este repositório é uma base de conhecimento mantida por um LLM e lida pelo usuário no Obsidian. Estas instruções valem para todo o repositório.

## Camadas e propriedade

- `raw/`: novas fontes curadas pelo usuário. Depois de aceitas, são imutáveis. O LLM pode ler, nunca editar, renomear ou apagar.
- Acervo legado (`Codigo10k/`, `Faculdade/`, `IFC/`, `Moody/`, `hacking/`, `redes/`, `libros/`, `Ketcher/`, `Excalidraw/`, `img/` e Markdown na raiz anterior a esta estrutura): também é fonte somente leitura. Não mover, para preservar links.
- `wiki/`: conhecimento derivado. O LLM cria e mantém integralmente.
- `templates/`: modelos operacionais. Alterar apenas quando a convenção evoluir.
- `scripts/`: ferramentas locais de apoio. Não são fontes de conhecimento.

Nunca apresente uma inferência como se viesse diretamente de uma fonte. Se uma fonte conflitar com outra, preserve ambas as posições e registre a divergência.

## Antes de qualquer operação

1. Leia `wiki/index.md`.
2. Leia as últimas entradas de `wiki/log.md`.
3. Pesquise páginas relacionadas em `wiki/` antes de criar uma nova.
4. Use nomes de arquivo descritivos em português, sem duplicar conceitos já existentes.

## Ingestão

Quando o usuário pedir para processar uma fonte:

1. Localize-a em `raw/inbox/` (ou no acervo legado).
2. Leia o documento inteiro. Para anexos/imagens relevantes, inspecione-os separadamente.
3. Calcule ou registre a identidade da fonte e confira `wiki/fontes/` para evitar duplicidade.
4. Crie/atualize uma página em `wiki/fontes/` usando `templates/fonte.md`.
5. Integre o conteúdo às páginas de entidades, conceitos e temas existentes. Uma ingestão não termina numa simples resenha.
6. Crie páginas novas somente quando o assunto merecer evolução independente.
7. Adicione links bidirecionais úteis, não listas artificiais de links.
8. Atualize `wiki/contradicoes.md` quando houver conflito, incerteza ou alegação superada.
9. Atualize `wiki/visao-geral.md` se a síntese global mudar.
10. Atualize `wiki/index.md` e acrescente uma entrada a `wiki/log.md`.
11. Mova a fonte de `raw/inbox/` para `raw/fontes/<AAAA>/<slug>/` somente se o usuário autorizar a organização; nunca sobrescreva um arquivo.

## Consultas

Use primeiro o wiki compilado e depois as fontes necessárias para confirmar detalhes. Toda resposta factual substancial deve indicar a página do wiki e, quando possível, a fonte primária. Se a consulta produzir uma síntese reutilizável, ofereça ou crie uma página em `wiki/analises/` quando isso fizer parte do pedido. Registre consultas materialmente relevantes no log.

## Citações e links

- Use wikilinks do Obsidian: `[[wiki/conceitos/Nome|Nome]]`.
- Em páginas derivadas, cite fontes junto à afirmação: `([[wiki/fontes/Título da fonte|fonte]])`.
- Para apontar ao arquivo bruto, use `source_path` no frontmatter e um link Markdown relativo quando útil.
- `sources` no frontmatter contém wikilinks entre aspas.
- Não cite `instructions.md`, templates ou outras páginas operacionais como evidência.

## Frontmatter mínimo

Páginas de conhecimento devem conter:

```yaml
---
type: concept | entity | topic | source | analysis
status: seed | active | contested | superseded
created: YYYY-MM-DD
updated: YYYY-MM-DD
aliases: []
tags: []
sources: []
---
```

Fontes também devem conter `source_path`, `source_type`, `source_date` (se conhecida) e `ingested`.

## Regras editoriais

- Uma página representa um conceito, entidade, tema, fonte ou análise.
- Comece com uma definição/síntese curta; depois detalhe evidências e conexões.
- Marque claramente `Fato documentado`, `Síntese`, `Inferência` e `Questão em aberto` quando houver risco de confusão.
- Prefira editar uma página canônica a criar variantes como “Nome 2” ou “Novo Nome”.
- Datas usam ISO `YYYY-MM-DD`.
- O log é append-only: nunca reescreva entradas antigas, salvo correção evidente solicitada.
- Fontes brutas são imutáveis mesmo quando contêm erros; registre a correção no wiki.

## Lint

Numa revisão de saúde, procure: links quebrados, páginas órfãs, frontmatter ausente, índice desatualizado, conceitos sem página, duplicatas, alegações sem fonte, contradições não registradas e páginas superadas sem indicação. Corrija o que for seguro e registre o passe em `wiki/log.md`.

## Critério de conclusão

Uma operação só está concluída quando páginas afetadas, referências cruzadas, `wiki/index.md` e `wiki/log.md` estão coerentes. Execute `powershell -File scripts/wiki.ps1 lint` antes de encerrar alterações no wiki.
