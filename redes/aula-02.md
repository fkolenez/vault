# Aula 01 - Construindo redes com switches

## Funcionamento de um switch

O switch possui uma memória interna (chamada de **tabela MAC**, ou *CAM table*) capaz de armazenar o endereço físico (MAC) das máquinas da rede associado à porta em que cada uma está conectada, permitindo que ele encaminhe os quadros apenas para a porta correta, em vez de repeti-los para todas as portas (como faria um Hub).

O mapeamento entre o endereço IP e o endereço físico (MAC) de cada máquina, por sua vez, não é feito pelo switch, e sim pelos próprios dispositivos da rede através de um protocolo chamado **ARP** (*Address Resolution Protocol*) - o switch apenas encaminha essas mensagens como faria com qualquer outro quadro.

### Protocolo ARP

O **ARP** (*Address Resolution Protocol*) é o protocolo responsável por descobrir qual endereço físico (MAC) corresponde a um determinado endereço IP dentro da mesma rede local. Ele funciona em duas etapas:

1. **Pedido (ARP Request / Broadcast)**: quando um computador quer se comunicar com outro na mesma rede e sabe apenas o IP de destino, ele envia uma mensagem em **broadcast** para todos os dispositivos, perguntando "quem é o dono deste IP?".
2. **Resposta (ARP Reply)**: apenas o dispositivo dono daquele IP responde, enviando (agora em **unicast**, direto para quem perguntou) o seu endereço MAC.

Ao receber a resposta, o computador que fez o pedido armazena essa relação IP-MAC em uma tabela local chamada **cache ARP**, evitando ter que repetir esse processo a cada novo pacote enviado para o mesmo destino.

## Vulnerabilidades

### MAC Flooding - ('Encher a mémoria do switch')

Ataque que explora o funcionamento da **tabela MAC** do switch. O atacante envia um grande volume de quadros com endereços MAC de origem falsos e diferentes, lotando a tabela do switch até que ela não tenha mais espaço para armazenar novos endereços.

Quando isso acontece, o switch **não sabe mais para qual porta encaminhar** os quadros de forma direcionada e passa a se comportar como um **Hub**, fazendo broadcast do tráfego para todas as portas. Isso permite que o atacante capture (via sniffing) dados que originalmente só deveriam trafegar entre outros dois dispositivos da rede.

### ARP Spoofing - (Se passar por outro PC)

Ataque que explora a ausência de autenticação no protocolo ARP. Como qualquer dispositivo pode responder a um pedido ARP sem comprovar que realmente é o dono do IP, o atacante envia respostas ARP falsas (*ARP Reply* forjadas) associando o **seu próprio endereço MAC** ao IP de outro dispositivo da rede (por exemplo, o do roteador/gateway).

As vítimas atualizam seu cache ARP com essa informação falsa e passam a enviar o tráfego destinado ao gateway diretamente para o atacante, que pode:

- Interceptar e ler os dados (**man-in-the-middle**);
- Alterar os dados antes de repassá-los ao destino real;
- Descartar os pacotes, causando negação de serviço (**DoS**).

Esse ataque é a base para diversas técnicas de interceptação de tráfego em redes locais.
