---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Fontes legadas de sistemas operacionais]
tags: [fonte, sistemas-operacionais, ingestao-em-lote]
sources: []
source_path: Faculdade/SO/Sistemas operacionais.md
source_type: lecture-notes
source_date:
ingested: 2026-08-04
---

# Acervo legado — Sistemas operacionais

## Escopo

Ingestão da nota `Faculdade/SO/Sistemas operacionais.md`.

## Correções e ressalvas

- O SO media o acesso normal ao hardware por chamadas de sistema, drivers e mecanismos protegidos, mas “nenhuma aplicação acessa diretamente” é absoluto demais: memória mapeada, runtimes, bibliotecas e dispositivos atribuídos podem reduzir a mediação visível, ainda sob controle inicial do sistema.
- Kernel é o núcleo privilegiado; programas de sistema compõem o ambiente do SO, mas a fronteira varia entre definições e distribuições.
- MBR é o primeiro setor do disco no esquema legado e contém código de inicialização e tabela de partições. Sistemas modernos frequentemente usam GPT e firmware UEFI.
- Processos/threads abstraem execução e recursos de CPU; memória virtual abstrai endereçamento; sistemas de arquivos abstraem armazenamento.
- Socket é uma abstração de comunicação, não a abstração genérica para qualquer “placa acoplada”. Dispositivos são normalmente expostos por drivers e interfaces específicas.
- Janelas são abstrações de ambientes gráficos, não necessariamente do kernel ou do SO em sentido estrito.

## Integrações

- [[wiki/temas/Sistemas operacionais|Sistemas operacionais]]
- [[wiki/conceitos/Gestão de recursos computacionais|Gestão de recursos computacionais]]
- [[wiki/analises/Conexões entre os cinco eixos|Conexões entre os cinco eixos]]
