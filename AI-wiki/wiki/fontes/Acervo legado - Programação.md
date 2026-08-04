---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Fontes legadas de programação]
tags: [fonte, programacao, ingestao-em-lote]
sources: []
source_path: Faculdade/POO/; Faculdade/Eng. Requisitos/; Faculdade/Eng. Requisitos II/; Faculdade/Testes de qualidade/; Faculdade/IHC/
source_type: lecture-notes
source_date:
ingested: 2026-08-04
---

# Acervo legado — Programação

## Escopo

Ingestão das notas de orientação a objetos, requisitos, elicitação, qualidade de software, IHC e do checklist de um sistema Java de pedidos.

## Conteúdo aproveitável

O conjunto descreve o caminho da necessidade ao software: elicitar e documentar requisitos, modelar objetos e relacionamentos, implementar regras de domínio, projetar a interação e verificar o comportamento com testes.

## Correções e ressalvas

- Herança significa relação “é um”. Herança múltipla é herdar diretamente de mais de uma superclasse, não “do pai e do filho”; Java não permite isso para classes, mas permite implementar várias interfaces.
- Agregação e composição expressam relações todo–parte. A distinção é de propriedade e ciclo de vida, não apenas de “fazer sentido”.
- Um motor pode existir sem um carro; portanto, é um exemplo ambíguo de composição. Parte inseparável controlada pelo todo é exemplo melhor.
- Satisfação não equivale a ausência total de falhas. Qualidade envolve adequação, confiabilidade, segurança, desempenho, usabilidade e manutenção.
- IA pode apoiar testes, mas exige revisão, isolamento de dados e atenção à LGPD; a afirmação de que “IAs não são boas para testar” é ampla demais.
- No checklist Java, estoque, pagamento, pedido e extrato devem ser atualizados atomicamente para não deixar o domínio inconsistente.

## Integrações

- [[wiki/temas/Programação|Programação]]
- [[wiki/conceitos/Engenharia e qualidade de software|Engenharia e qualidade de software]]
- [[wiki/analises/Conexões entre os cinco eixos|Conexões entre os cinco eixos]]
