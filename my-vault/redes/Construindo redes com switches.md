---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Switches, Tabela MAC e ARP]
tags: [redes, ethernet, switches, arp, seguranca]
sources: []
source_path: my-vault/redes/Construindo redes com switches.md
source_type: lecture-notes
source_date:
ingested: 2026-08-04
related: ["[[AI-wiki/wiki/temas/Redes|Redes]]"]
---

# Switches, tabela MAC e ARP

> Um switch Ethernet aprende em quais portas estão os endereços MAC de origem e usa essa tabela para encaminhar quadros dentro do mesmo domínio de camada 2.

## Aprendizagem da tabela MAC

A tabela de encaminhamento, frequentemente chamada de **tabela MAC** ou **CAM**, associa:

- endereço MAC;
- porta de entrada;
- VLAN, quando aplicável;
- tempo ou estado da entrada.

Ao receber um quadro, o switch aprende ou atualiza o **MAC de origem** na porta em que o quadro chegou. Depois consulta o **MAC de destino** para decidir o encaminhamento.

## Decisões de encaminhamento

### Destino conhecido

Se o MAC de destino está associado a outra porta, o switch encaminha o quadro apenas por ela. Se origem e destino estão na mesma porta, o quadro pode ser filtrado.

### Unicast desconhecido

Se o destino ainda não está na tabela, o switch faz **flooding**: envia o quadro pelas demais portas da mesma VLAN, exceto pela porta de entrada. Quando o destino responde, seu MAC pode ser aprendido.

### Broadcast e multicast

Quadros de broadcast são inundados no domínio de broadcast correspondente. Multicast depende da configuração e dos recursos do equipamento; sem conhecimento adicional, também pode ser inundado.

Entradas dinâmicas expiram após um período sem tráfego, permitindo que dispositivos mudem de porta.

## ARP

ARP (*Address Resolution Protocol*) descobre qual endereço MAC deve receber um pacote destinado a um endereço IPv4 no enlace local.

### Destino na mesma sub-rede

1. o host verifica sua cache ARP;
2. se não houver entrada válida, envia ARP Request em broadcast;
3. o dispositivo correspondente normalmente envia ARP Reply;
4. o host armazena temporariamente a associação IPv4–MAC;
5. o pacote IPv4 é encapsulado num quadro destinado àquele MAC.

### Destino em outra rede

O host não procura o MAC do destino remoto. Ele resolve, via ARP, o MAC do **gateway padrão** e envia o quadro ao roteador. O endereço IP de destino continua sendo o host remoto.

O switch não realiza a resolução ARP para os hosts; ele encaminha os quadros ARP e aprende os MACs de origem normalmente.

## Cache ARP

A cache reduz broadcasts repetidos, mas suas entradas são temporárias e podem ser atualizadas. Sistemas operacionais oferecem comandos para consultar essa tabela, como:

```powershell
arp -a
```

Em sistemas modernos, ferramentas específicas podem fornecer informações mais completas.

## Riscos de segurança

### MAC flooding

Um atacante pode tentar preencher a tabela com muitos MACs de origem falsificados. Dependendo do switch e da configuração, isso pode aumentar o flooding de unicast desconhecido ou impedir novas aprendizagens.

Não é correto afirmar que todo switch saturado simplesmente “vira um hub”. Equipamentos podem limitar aprendizagem, descartar tráfego, registrar eventos ou adotar outros comportamentos.

Mitigações possíveis incluem:

- port security e limite de MACs por porta;
- autenticação de acesso;
- segmentação por VLAN;
- monitoramento de alterações anormais na tabela.

### ARP spoofing

ARP não possui autenticação nativa. Um dispositivo malicioso pode anunciar uma associação falsa entre IPv4 e MAC, tentando redirecionar ou interromper tráfego local.

Possíveis efeitos incluem:

- intermediação de tráfego;
- negação de serviço;
- manipulação de comunicações sem proteção fim a fim.

Criptografia de aplicação, como TLS corretamente validado, reduz a possibilidade de leitura ou alteração do conteúdo, embora não impeça todo redirecionamento ou indisponibilidade.

Mitigações de rede podem incluir DHCP snooping, inspeção ARP dinâmica, entradas estáticas em casos específicos, segmentação e monitoramento.

## Limites do conteúdo

- ARP é usado com IPv4; IPv6 utiliza *Neighbor Discovery*.
- A descrição considera switches Ethernet de camada 2.
- VLANs, STP, trunks e roteamento entre VLANs precisam de estudo separado.

## Conexões

- Tema: [[AI-wiki/wiki/temas/Redes|Redes]].
- Pré-requisito: [[my-vault/redes/Introdução a redes|Introdução às redes]].

## Questões para revisão

1. O switch aprende o MAC de origem ou o de destino?
2. O que acontece quando o MAC de destino é desconhecido?
3. Para qual MAC um host envia um pacote destinado a outra rede?
4. Por que ARP spoofing é possível?
5. Que diferenças existem entre flooding de unicast desconhecido e broadcast?
