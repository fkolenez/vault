---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Fundamentos de redes, Introdução às redes]
tags: [redes, diagnostico, dns, ethernet, cabeamento]
sources: []
source_path: my-vault/redes/Introdução a redes.md
source_type: lecture-notes
source_date:
ingested: 2026-08-04
related: ["[[AI-wiki/wiki/temas/Redes|Redes]]"]
---

# Introdução às redes de computadores

> Uma rede permite que dispositivos troquem dados por meios físicos ou sem fio, seguindo protocolos que definem endereçamento, entrega e interpretação das mensagens.

## Conceitos básicos

Dados percorrem a rede em unidades que recebem nomes diferentes conforme a camada, como **quadros** no enlace e **pacotes** na camada de rede. Evitar chamar tudo de “pacote” ajuda a identificar qual equipamento e protocolo participa da comunicação.

No contexto desta aula:

- a interface possui um endereço MAC usado no enlace Ethernet;
- o IPv4 identifica a interface logicamente numa rede;
- switches encaminham quadros dentro da rede local;
- roteadores encaminham pacotes entre redes;
- DNS resolve nomes para registros, como endereços IP.

## Comandos de diagnóstico

### `ping`

```powershell
ping <nome-ou-ip>
```

`ping` envia mensagens ICMP Echo Request e mede se recebe Echo Reply, exibindo perda e tempo aproximado de ida e volta.

Uma falha não prova que o destino esteja desligado ou sem conectividade: firewalls e políticas podem bloquear ICMP. Uma resposta também não garante que um serviço específico, como HTTP, esteja funcionando.

O **TTL** (*Time to Live*) é reduzido a cada roteador. Quando chega a zero, o pacote é descartado. O valor apresentado na resposta é o TTL restante do pacote recebido; não corresponde diretamente à quantidade exata de saltos da ida sem conhecer o valor inicial.

### `tracert`

```powershell
tracert <nome-ou-ip>
```

No Windows, `tracert` envia sondas com TTL crescente. Roteadores que descartam uma sonda por TTL esgotado podem responder com ICMP, permitindo estimar o caminho.

O resultado possui limitações:

- alguns roteadores não respondem;
- balanceamento pode produzir caminhos diferentes;
- o caminho de volta pode não ser igual ao de ida;
- um asterisco representa ausência de resposta dentro do tempo, não necessariamente falha naquele salto.

## Hub e domínio de colisão

Um hub opera como repetidor na camada física. O sinal recebido numa porta é reproduzido nas demais, sem examinar endereços MAC.

Isso não transforma tecnicamente todo quadro em um **broadcast Ethernet**: o endereço de destino original continua no quadro. Todos os dispositivos recebem o sinal, mas apenas a interface destinatária normalmente entrega o quadro às camadas superiores.

Em Ethernet half-duplex com hub, os dispositivos compartilham o mesmo domínio de colisão e a mesma largura de banda. Switches separam os domínios de colisão por porta e permitem comunicação full-duplex.

![[my-vault/redes/imagens/aula01/image.png|Topologia didática com hub]]

## DNS

O DNS (*Domain Name System*) é um sistema hierárquico e distribuído. Ele armazena diversos tipos de registro, não apenas uma relação simples entre nome e IP.

```powershell
nslookup <nome>
```

Uma **resposta não autoritativa** significa que o servidor que respondeu não é a autoridade da zona consultada. A informação pode ter vindo de cache após uma consulta recursiva; isso não significa necessariamente que a própria máquina cliente já possuía o registro.

## Cabeamento Ethernet de par trançado

O conector modular usado em Ethernet é comumente chamado de **RJ45**, embora a designação física mais precisa seja 8P8C. T568A e T568B definem a ordem dos oito condutores.

### Cabo direto

Usa o mesmo padrão nas duas pontas:

- T568A ↔ T568A; ou
- T568B ↔ T568B.

### Cabo crossover

Usa T568A numa ponta e T568B na outra, cruzando os pares de transmissão e recepção usados por Ethernet 10/100 Mb/s. Portanto, **T568B sozinho não significa crossover**.

Em 1000BASE-T, os quatro pares participam da transmissão. Equipamentos modernos normalmente implementam **Auto MDI-X** na camada física e ajustam automaticamente os pares, tornando o crossover desnecessário na maioria dos cenários.

![[my-vault/redes/imagens/aula01/rj45.png|Pinagens T568A e T568B]]

## Conexões

- Tema: [[AI-wiki/wiki/temas/Redes|Redes]].
- Continuação: [[my-vault/redes/Construindo redes com switches|Switches, tabela MAC e ARP]].

## Questões para revisão

1. Por que uma falha no `ping` não comprova que o destino está indisponível?
2. Qual é a diferença entre repetição de sinal num hub e broadcast Ethernet?
3. O que caracteriza uma resposta DNS não autoritativa?
4. Como diferenciar cabo direto de crossover?
