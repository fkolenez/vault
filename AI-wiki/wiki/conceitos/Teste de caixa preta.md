---
type: concept
status: active
created: 2026-08-06
updated: 2026-08-06
aliases: [Caixa preta, Black-box testing]
tags: [programacao, testes, caixa-preta, qualidade-de-software]
sources: ["[[wiki/fontes/Teste de caixa preta - nota de aula|Teste de caixa preta - nota de aula]]"]
---

# Teste de caixa preta

> Teste de caixa preta avalia o comportamento externo do software sem depender da leitura de seu código-fonte.

## O que é

A abordagem compara entradas, saídas e regras visíveis com os resultados esperados. Ela é especialmente útil quando o objetivo é validar requisitos, fluxos de usuário e critérios de aceite.

## Quando usar

- Testes funcionais.
- Testes de sistema.
- Testes de aceitação.
- Validação de regras de negócio.
- Cenários em que o testador não precisa conhecer a implementação.

## Comparação

| Abordagem | Foco |
| --- | --- |
| Caixa preta | comportamento externo |
| Caixa branca | estrutura interna e código |
| Caixa cinza | comportamento externo com algum conhecimento interno |

## Relações

- Tema: [[wiki/temas/Programação|Programação]].
- Conceito geral: [[wiki/conceitos/Testes de software|Testes de software]].

## Limitações

Caixa preta pode não revelar defeitos internos que não se manifestam nos cenários testados. Por isso, deve ser combinada com testes estruturais, revisão de código e testes automatizados quando o risco justificar.

## Fontes

- [[wiki/fontes/Teste de caixa preta - nota de aula|Teste de caixa preta - nota de aula]]
