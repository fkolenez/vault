---
type: topic
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Redes de computadores]
tags: [redes, comunicacao]
sources: []
---

# Redes

> Redes de computadores permitem que sistemas troquem dados por protocolos em camadas, sobre meios físicos e lógicos sujeitos a capacidade, latência, perda e ameaças.

## Trilha de estudo

1. [[my-vault/redes/Introdução a redes|Introdução às redes]] — diagnóstico, hubs, DNS e cabeamento.
2. [[my-vault/redes/Construindo redes com switches|Switches, tabela MAC e ARP]] — aprendizagem, encaminhamento e riscos locais.

## Enlace local

Ethernet identifica interfaces por endereços MAC. Um switch aprende o MAC de origem e a porta de entrada; quando conhece o destino, encaminha o quadro à porta correspondente. Broadcasts e destinos desconhecidos são inundados no domínio/VLAN. ARP descobre qual MAC corresponde a um IPv4 no enlace local e mantém cache temporário.

## Inter-rede e aplicações

IP endereça e roteia pacotes entre redes. ICMP oferece mensagens de diagnóstico usadas por `ping` e ferramentas de rota. DNS traduz nomes em dados como endereços IP por uma hierarquia distribuída de servidores e caches.

## Cabeamento

T568A e T568B definem a ordem dos condutores em conectores de par trançado. Cabo direto usa o mesmo padrão nas duas pontas; crossover combina A e B. Auto MDI-X detecta e ajusta pares automaticamente em equipamentos modernos.

## Segurança

ARP spoofing pode redirecionar tráfego local; flooding de MAC tenta degradar a capacidade de encaminhamento seletivo do switch. Mitigações incluem segmentação, port security, inspeção ARP dinâmica, DHCP snooping, criptografia ponta a ponta e monitoramento.

## Conexões

- Bloco: [[wiki/blocos/Tecnologia|Tecnologia]].
- [[wiki/conceitos/Comunicação em camadas|Comunicação em camadas]] organiza as responsabilidades dos protocolos.

## Próximos conteúdos

- endereçamento IPv4 e sub-redes;
- roteamento e gateway padrão;
- TCP e UDP;
- VLANs, trunks e STP;
- DHCP, NAT, HTTP e TLS;
- fundamentos de IPv6.
