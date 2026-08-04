# LLM Wiki

Este vault opera em três camadas: fontes imutáveis, um wiki compilado por LLM e um contrato operacional. Abra `wiki/index.md` no Obsidian para começar.

## Uso rápido

1. Coloque uma nova fonte em `raw/inbox/`.
2. Peça ao agente: “ingira `raw/inbox/arquivo.md` no wiki”.
3. Revise a página criada em `wiki/fontes/` e as integrações propostas.
4. Consulte o conhecimento normalmente; análises duráveis ficam em `wiki/analises/`.
5. Periodicamente peça: “faça o lint completo do wiki”.

Comandos auxiliares (PowerShell):

```powershell
.\scripts\wiki.ps1 status
.\scripts\wiki.ps1 search "termo"
.\scripts\wiki.ps1 recent 10
.\scripts\wiki.ps1 lint
```

O conteúdo anterior do vault permanece no lugar e é tratado como fonte legada somente leitura. Isso evita quebrar wikilinks e anexos existentes.

## Estrutura

```text
raw/
  inbox/              novas fontes ainda não processadas
  fontes/             fontes organizadas após autorização
  assets/             anexos das novas fontes
wiki/
  fontes/             fichas de ingestão e resumos fiéis
  conceitos/          ideias reutilizáveis
  entidades/          pessoas, organizações, obras, lugares
  temas/              sínteses amplas e evolutivas
  analises/            respostas e comparações duráveis
  index.md             catálogo do conhecimento
  log.md               histórico append-only
  contradicoes.md      conflitos, incertezas e alegações superadas
templates/             modelos de páginas
scripts/               busca, estado e lint locais
```
