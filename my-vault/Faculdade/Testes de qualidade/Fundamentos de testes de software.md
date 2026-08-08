---
type: note
status: active
created: 2026-08-05
updated: 2026-08-06
aliases: [Fundamentos de testes, Conceitos de testes de software]
tags: [faculdade, testes, qualidade-de-software, swebok]
sources: []
---

# Fundamentos de Testes de Software

> Testes de software usam conceitos precisos para diferenciar ação humana, defeito no produto, falha observada e incidentes de execução.

## Tópicos da aula

- Conceitos-chave: erro, defeito, falha, incidente e bug.
- Verificação versus validação em testes de software.
- SWEBOK como guia de boas práticas em engenharia de software.
- Modelos de processo de testes de software.

## Definições

### Erro

Erro é uma ação humana que introduz um defeito no software.

Exemplo: interpretar um requisito de forma equivocada e implementar uma regra errada.

### Defeito

Defeito é uma imperfeição no software que pode levar a comportamento incorreto.

Exemplo: uma condição mal implementada, uma validação ausente ou uma atualização que altera uma regra sem considerar seus efeitos.

### Falha

Falha é o comportamento incorreto observado quando o software é executado.

Exemplo: o aplicativo fechar inesperadamente, calcular um valor errado ou bloquear um fluxo que deveria funcionar.

### Incidente

Incidente é um evento observado durante teste ou uso que indica possível problema no sistema.

Nem todo incidente confirma uma falha. Ele pode ser um sinal que precisa de investigação.

Exemplo: uma janela de diálogo abre atrás da tela principal e passa a impressão de que a aplicação travou. O comportamento é problemático, mas precisa ser investigado antes de classificar a causa.

### Bug

Bug é um termo informal usado para se referir a erro, defeito ou falha no software. Em documentação técnica, é melhor especificar se o problema é um defeito no produto, uma falha observada ou um incidente em investigação.

## Relação entre os conceitos

```text
erro humano -> defeito no software -> falha observável -> incidente registrado
```

Essa sequência é uma simplificação. Um defeito pode nunca se manifestar em produção se a condição necessária não ocorrer. Um incidente pode ser registrado mesmo antes de a causa ser confirmada.

## Verificação e validação

### Verificação

Verificação pergunta: estamos construindo corretamente o produto conforme a especificação?

Exemplos:

- revisar requisitos;
- executar testes unitários;
- conferir critérios técnicos;
- validar aderência ao projeto.

### Validação

Validação pergunta: estamos construindo o produto certo para a necessidade do usuário?

Exemplos:

- teste de aceitação;
- protótipos com usuários;
- revisão de fluxo de negócio;
- confirmação dos critérios de aceite.

## SWEBOK

SWEBOK é um guia de referência para áreas de conhecimento da engenharia de software. Em testes, ele ajuda a organizar conceitos, técnicas, níveis, objetivos, processos e práticas de qualidade.

## Síntese

Usar os termos corretamente melhora comunicação entre desenvolvimento, testes, suporte e cliente. Dizer apenas "deu bug" pode ser útil na conversa informal, mas a investigação precisa separar erro humano, defeito, falha e incidente.
