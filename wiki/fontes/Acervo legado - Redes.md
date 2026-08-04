---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Fontes legadas de redes]
tags: [fonte, redes, ingestao-em-lote]
sources: []
source_path: redes/
source_type: lecture-notes
source_date:
ingested: 2026-08-04
---

# Acervo legado — Redes

## Escopo

Ingestão de `redes/Introdução a redes.md`, `redes/Construindo redes com switches.md` e seus anexos de aula.

## Correções e ressalvas

- Hub repete **bits/sinais** recebidos nas demais portas; chamar todo esse comportamento de broadcast confunde repetição física com endereço de broadcast Ethernet.
- `ping` testa alcance via ICMP, mas uma falha não prova ausência de conectividade: filtros e políticas podem bloquear ICMP.
- TTL limita saltos; o valor exibido numa resposta é o TTL remanescente daquela resposta, não uma contagem direta e universal da rota de ida.
- Resposta DNS “não autoritativa” significa que o servidor respondente não é autoritativo para a zona; o dado pode vir de cache ou recursão.
- T568A e T568B são pinagens. Um cabo crossover usa uma pinagem em cada ponta; T568B sozinho não significa crossover.
- Em Ethernet moderna, Auto MDI-X torna o crossover geralmente desnecessário; a justificativa correta é casar pares de transmissão e recepção em padrões antigos, não “evitar colisão de dados”.
- Switch aprende MAC de origem por porta. Destino desconhecido é inundado no mesmo domínio/VLAN. Saturar a tabela CAM pode aumentar flooding, mas equipamentos modernos variam e não necessariamente “viram hubs”.
- ARP resolve IPv4 para MAC no enlace local. ARP spoofing explora a falta de autenticação do protocolo e pode facilitar MITM ou negação de serviço.

## Integrações

- [[wiki/temas/Redes|Redes]]
- [[wiki/conceitos/Comunicação em camadas|Comunicação em camadas]]
- [[wiki/analises/Conexões entre os cinco eixos|Conexões entre os cinco eixos]]
