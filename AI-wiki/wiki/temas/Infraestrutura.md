---
type: topic
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Infraestrutura de TI]
tags: [infraestrutura, operacao, seguranca]
sources: ["[[wiki/fontes/Acervo legado - Infraestrutura]]"]
---

# Infraestrutura

> Infraestrutura de TI é o conjunto de recursos físicos e virtuais que hospeda, protege, conecta e mantém sistemas disponíveis.

## Escopo

Inclui computação, armazenamento, instalações, identidades, configuração, plataformas, observabilidade, backup e recuperação. Redes e sistemas operacionais são disciplinas integrantes, mas permanecem eixos próprios neste wiki:

- infraestrutura decide **onde e com quais garantias** o serviço opera;
- redes decide **como os componentes se comunicam**;
- sistema operacional decide **como recursos de uma máquina são abstraídos e arbitrados**.

## Propriedades operacionais

- **Disponibilidade:** redundância, detecção de falhas e recuperação.
- **Capacidade:** CPU, memória, armazenamento e tráfego dimensionados pela carga.
- **Segurança:** menor privilégio, segmentação, correções, proteção física e registros.
- **Observabilidade:** métricas, logs e rastros capazes de explicar o estado do serviço.
- **Continuidade:** backups testados, objetivos de recuperação e documentação.
- **Custo:** recursos proporcionais ao valor e ao risco.

## Lacunas do acervo

As fontes atuais aprofundam apenas segurança por emissões e laboratórios. Virtualização, contêineres, nuvem, CI/CD, backup, monitoramento e gestão de configuração ainda precisam de fontes específicas. ([[wiki/fontes/Acervo legado - Infraestrutura|fontes]])

## Conexões

- Bloco: [[wiki/blocos/Tecnologia|Tecnologia]].
