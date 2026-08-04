---
type: topic
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [SO, Sistemas Operacionais]
tags: [sistemas-operacionais, computacao]
sources: []
---

# Sistemas operacionais

> Um sistema operacional abstrai hardware, gerencia recursos e fornece serviços protegidos para programas e usuários.

## Núcleo e serviços

O kernel executa com privilégios elevados e coordena CPU, memória, interrupções, dispositivos e proteção. Drivers controlam dispositivos; programas de sistema, bibliotecas e serviços formam o ambiente operacional. Aplicações solicitam operações privilegiadas por chamadas de sistema, geralmente através de bibliotecas.

## Abstrações principais

| Recurso | Abstração/interface |
| --- | --- |
| CPU e execução | processos, threads, escalonamento |
| Memória | espaços de endereçamento e memória virtual |
| Armazenamento | blocos, arquivos, diretórios e sistemas de arquivos |
| Dispositivos | drivers, identificadores e interfaces de I/O |
| Comunicação | sockets, pipes, filas e memória compartilhada |
| Proteção | usuários, permissões, capacidades e isolamento |

## Inicialização

Em sistemas legados BIOS/MBR, código no primeiro setor inicia a cadeia de boot. Em máquinas modernas, firmware UEFI normalmente carrega componentes a partir de uma partição de sistema em disco GPT. O carregador seleciona e inicia o kernel, que detecta hardware e inicia serviços do espaço de usuário.

## Conexões

- Bloco: [[wiki/blocos/Tecnologia|Tecnologia]].
- [[wiki/conceitos/Gestão de recursos computacionais|Gestão de recursos computacionais]] aprofunda as abstrações do sistema.
