---
type: note
status: active
created: 2026-08-06
updated: 2026-08-06
aliases: [Teste de caixa preta, Caixa preta]
tags: [faculdade, testes, caixa-preta, qualidade-de-software]
sources: []
---

# Teste de Caixa Preta

> Teste de caixa preta valida o comportamento externo do software sem analisar diretamente seu código-fonte ou estrutura interna.

## Foco da abordagem

O teste de caixa preta observa entradas, saídas, regras de negócio e comportamento visível para o usuário. O testador pergunta: dado este cenário e esta entrada, o sistema entrega a saída esperada?

Essa abordagem é útil para validar requisitos porque se concentra no que o software deve fazer, não em como ele foi implementado.

## Validação de requisitos

O teste de caixa preta ajuda a verificar se o sistema cumpre os requisitos definidos pelo cliente, usuário final ou documento de especificação.

Exemplos:

- campos obrigatórios são validados;
- mensagens de erro aparecem no momento correto;
- cálculos retornam o resultado esperado;
- fluxos de cadastro, login e consulta funcionam;
- regras de negócio são respeitadas.

## Satisfação do usuário

Como observa o comportamento externo, o teste de caixa preta se aproxima da experiência do usuário. Ele ajuda a identificar problemas em fluxos, respostas, validações e resultados esperados.

## Vantagens

- Não exige conhecimento detalhado do código-fonte.
- Pode ser aplicado por testadores, analistas e usuários de negócio.
- Ajuda a validar requisitos e critérios de aceite.
- Favorece testes de sistema e aceitação.
- Encontra falhas visíveis para o usuário.

## Limitações

- Pode não cobrir todos os caminhos internos do código.
- Pode deixar defeitos estruturais ocultos.
- Depende de requisitos claros e exemplos bem definidos.
- Não substitui testes unitários ou análise técnica do código.

## Comparação com outras abordagens

| Abordagem | Foco | Característica |
| --- | --- | --- |
| Caixa preta | comportamento externo | testa entradas, saídas e regras visíveis |
| Caixa branca | estrutura interna | analisa código, caminhos, condições e cobertura |
| Caixa cinza | combinação | usa algum conhecimento interno para desenhar testes de comportamento |

## Síntese

Teste de caixa preta é essencial para confirmar se o software atende ao comportamento esperado. Ele deve ser combinado com outras abordagens para aumentar cobertura e reduzir risco.
