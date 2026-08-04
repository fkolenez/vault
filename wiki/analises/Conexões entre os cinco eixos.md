---
type: analysis
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Mapa dos cinco eixos]
tags: [marketing, programacao, infraestrutura, redes, sistemas-operacionais]
sources: ["[[wiki/fontes/Acervo legado - Marketing]]", "[[wiki/fontes/Acervo legado - Programação]]", "[[wiki/fontes/Acervo legado - Infraestrutura]]", "[[wiki/fontes/Acervo legado - Redes]]", "[[wiki/fontes/Acervo legado - Sistemas operacionais]]"]
---

# Conexões entre os cinco eixos

## Distinção

| Eixo                               | Pergunta central        | Entrega principal                            |                                                      |
| ---------------------------------- | ----------------------- | -------------------------------------------- | ---------------------------------------------------- |
| [[wiki/temas/Marketing             | Marketing]]             | Para quem, por quê e com qual resultado?     | demanda, proposta de valor e aprendizagem de mercado |
| [[wiki/temas/Programação           | Programação]]           | Que comportamento o software deve executar?  | aplicações, integrações e automações                 |
| [[wiki/temas/Infraestrutura        | Infraestrutura]]        | Onde e com quais garantias o serviço opera?  | ambientes disponíveis, seguros e observáveis         |
| [[wiki/temas/Redes                 | Redes]]                 | Como componentes trocam dados?               | conectividade, protocolos e transporte               |
| [[wiki/temas/Sistemas operacionais | Sistemas operacionais]] | Como uma máquina arbitra e abstrai recursos? | processos, memória, arquivos, I/O e proteção         |

## Fluxo de valor

1. Marketing identifica público, problema e métricas de sucesso.
2. Programação transforma requisitos em produto e instrumenta eventos.
3. Sistema operacional executa o software e controla recursos locais.
4. Redes conecta clientes, serviços, dados e integrações.
5. Infraestrutura dimensiona, implanta, observa, protege e recupera o conjunto.
6. Dados de uso retornam ao marketing e ao desenvolvimento, fechando o ciclo.

## Conexões bilaterais

- **Marketing ↔ Programação:** requisitos, experiência, experimentos e analytics. Métrica mal definida gera instrumentação correta para a pergunta errada.
- **Marketing ↔ Infraestrutura:** campanhas criam picos; disponibilidade e desempenho afetam conversão, reputação e custo.
- **Marketing ↔ Redes:** latência e falhas prejudicam entrega de conteúdo, atribuição e jornada do cliente.
- **Marketing ↔ Sistemas operacionais:** relação indireta, por ferramentas de criação/análise e plataformas que executam os serviços.
- **Programação ↔ Infraestrutura:** software precisa ser implantável, configurável, observável e recuperável.
- **Programação ↔ Redes:** sistemas distribuídos devem tratar timeout, repetição, autenticação, idempotência e falha parcial.
- **Programação ↔ Sistemas operacionais:** runtimes e aplicações dependem de processos, threads, memória, arquivos, sockets e permissões.
- **Infraestrutura ↔ Redes:** topologia, balanceamento, segmentação, DNS, firewalls e capacidade sustentam a operação.
- **Infraestrutura ↔ Sistemas operacionais:** provisionamento, hardening, patches, serviços, telemetria e backup atuam sobre o SO.
- **Redes ↔ Sistemas operacionais:** drivers e pilha de protocolos vivem no SO; políticas locais determinam interfaces, rotas, portas e filtragem.

## Exemplo integrado

Uma campanha leva público a uma aplicação. Marketing define conversão; programação implementa a página e eventos; o SO agenda processos e gerencia sockets; redes entrega requisições e respostas; infraestrutura distribui carga, monitora latência e recupera falhas. A telemetria retorna como evidência, desde que coleta, privacidade e interpretação estejam corretas.

## Lacunas prioritárias

- Fontes de infraestrutura sobre nuvem, contêineres, CI/CD, observabilidade e continuidade.
- Fundamentos de redes sobre TCP/UDP, sub-redes, roteamento, VLANs, NAT, TLS e HTTP.
- Sistemas operacionais sobre concorrência, escalonamento, memória virtual, sistemas de arquivos e segurança.
- Programação sobre controle de versão, APIs, bancos de dados, arquitetura e entrega contínua.
- Marketing sobre segmentação, posicionamento, funil, economia unitária, experimentação e privacidade.
