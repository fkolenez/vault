---
type: concept
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Camadas de rede]
tags: [redes, protocolos]
sources: []
---

# Comunicação em camadas

> Camadas separam responsabilidades: transmissão física, entrega local, roteamento entre redes, transporte fim a fim e protocolos de aplicação.

Essa separação permite trocar uma tecnologia sem reescrever todo o sistema. Ethernet e ARP tratam o enlace local; IP conecta redes; TCP/UDP oferecem transporte; DNS, HTTP e outros protocolos atendem aplicações. As fronteiras são modelos úteis, não garantia de implementação perfeitamente isolada.

[[wiki/temas/Sistemas operacionais|Sistemas operacionais]] implementam grande parte da pilha; [[wiki/temas/Programação|programas]] usam APIs como sockets; [[wiki/temas/Infraestrutura|infraestrutura]] configura topologias e políticas.

Bloco: [[wiki/blocos/Tecnologia|Tecnologia]].
