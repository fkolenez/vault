---
type: topic
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Desenvolvimento de software]
tags: [programacao, software]
sources: ["[[wiki/fontes/Acervo legado - Programação]]"]
---

# Programação

> Programação transforma requisitos e modelos em comportamento executável, sujeito a restrições de qualidade, segurança e operação.

## Do problema ao software

1. **Elicitação:** compreender partes interessadas, objetivos, contexto e restrições.
2. **Especificação:** registrar requisitos funcionais e atributos de qualidade verificáveis.
3. **Projeto:** decompor responsabilidades, dados, interfaces e dependências.
4. **Implementação:** codificar regras e integrações com tratamento de falhas.
5. **Verificação:** testar unidades, integrações, sistema e aceitação.
6. **Operação:** observar o comportamento real e evoluir o produto.

## Orientação a objetos

Herança representa “é um” e deve preservar o contrato da superclasse. Associação é uma ligação genérica; agregação representa todo–parte com vida independente; composição implica propriedade forte e ciclo de vida controlado pelo todo. Interfaces descrevem capacidades sem forçar hierarquias frágeis.

No sistema de pedidos das notas, finalizar uma compra é uma única operação de negócio: verificar disponibilidade, cobrar, baixar estoque, creditar vendedores, mudar status e persistir. Se uma etapa falhar, a transação precisa impedir estado parcial. Comparações de `String` em Java usam `equals`/`equalsIgnoreCase`, e entradas externas exigem validação. ([[wiki/fontes/Acervo legado - Programação|fontes]])

## Qualidade

Testes funcionais verificam comportamento; testes não funcionais investigam desempenho, segurança, usabilidade, confiabilidade e outros atributos. Automação melhora repetibilidade, mas não elimina exploração humana. IHC acrescenta clareza, hierarquia, navegação, prevenção de erros e feedback.

## Conexões

- [[wiki/temas/Marketing|Marketing]] define público, problema e sinais de resultado.
- [[wiki/temas/Infraestrutura|Infraestrutura]] fornece ambientes, dados, implantação e observabilidade.
- [[wiki/temas/Redes|Redes]] oferece comunicação distribuída sujeita a latência, perda e falhas.
- [[wiki/temas/Sistemas operacionais|Sistemas operacionais]] fornece processos, memória, arquivos, permissões e I/O.
