---
type: concept
status: active
created: 2026-08-06
updated: 2026-08-06
aliases: [Teste de software, QA, Qualidade e testes]
tags: [programacao, testes, qualidade-de-software, verificacao, validacao]
sources: ["[[wiki/fontes/Definição e importância dos testes de software - nota de aula|Definição e importância dos testes de software - nota de aula]]", "[[wiki/fontes/Fundamentos de testes de software - nota de aula|Fundamentos de testes de software - nota de aula]]"]
---

# Testes de software

> Testes de software são atividades planejadas para produzir evidência sobre qualidade, revelar defeitos e reduzir riscos de um sistema.

## O que é

Testar não é provar que não existem falhas. É investigar o comportamento do software em condições definidas, comparar resultados com expectativas e registrar evidências para tomada de decisão.

Testes conectam requisitos, implementação e operação: requisitos definem expectativas; implementação cria comportamento; testes produzem evidência; operação mostra efeitos reais.

## Termos centrais

| Termo | Definição curta |
| --- | --- |
| Erro | ação humana que introduz um problema |
| Defeito | imperfeição no software |
| Falha | comportamento incorreto observado em execução |
| Incidente | evento observado que indica possível problema |
| Bug | termo informal para problema, que precisa ser classificado com mais precisão |

## Verificação e validação

Verificação pergunta se o produto está sendo construído corretamente conforme especificação. Validação pergunta se o produto certo está sendo construído para a necessidade do usuário.

## Níveis

- **Unitário:** componentes isolados.
- **Integração:** comunicação entre partes.
- **Sistema:** sistema completo.
- **Aceitação:** valor e critérios do usuário.

## Categorias

- **Funcionais:** comportamento esperado pelas regras e requisitos.
- **Não funcionais:** desempenho, segurança, usabilidade, acessibilidade, confiabilidade e outros atributos.
- **Regressão:** preservação de comportamentos após mudanças.
- **Exploratórios:** investigação orientada por risco e aprendizado.
- **Fumaça:** checagem rápida das funções essenciais.

## Relações

- Tema: [[wiki/temas/Programação|Programação]].
- Conceito pai: [[wiki/conceitos/Engenharia e qualidade de software|Engenharia e qualidade de software]].
- Conceito específico: [[wiki/conceitos/Teste de caixa preta|Teste de caixa preta]].

## Tensões e limitações

- Mais testes não significam automaticamente melhor qualidade.
- Testes mal definidos podem gerar falsa confiança.
- Automação reduz repetição, mas não elimina análise humana.
- Dados de teste precisam respeitar privacidade, segurança e LGPD.

## Fontes

- [[wiki/fontes/Definição e importância dos testes de software - nota de aula|Definição e importância dos testes de software - nota de aula]]
- [[wiki/fontes/Fundamentos de testes de software - nota de aula|Fundamentos de testes de software - nota de aula]]
