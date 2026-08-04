# Introdução a Sistemas Operacionais

## O que é um Sistema Operacional?

O sistema operacional (SO) se posiciona entre a aplicação e o hardware. Nenhuma aplicação faz uma solicitação diretamente ao hardware — obrigatoriamente ela passa primeiro pelo SO (isso ocorre através de _system calls_, chamadas de sistema).

> **Nota de conceito:** o SO em si é composto basicamente por duas grandes partes:
> 
> 1. **Kernel (núcleo)** — o programa que roda constantemente, controlando hardware, processos e recursos.
> 2. **Programas de sistema (system programs)** — tudo que acompanha o kernel, mas não é o kernel em si.
> 
> Os itens que você listou como "três grandes áreas" (compiladores, editores, interpretador de comandos) **não são áreas do SO**, e sim **exemplos de programas de sistema/aplicativos** que rodam _sobre_ o kernel. Isso inclusive é confirmado mais adiante no seu próprio texto, na definição (b): _"tudo mais que acompanha o kernel é considerado um programa de sistema ou aplicativo"_. Corrigi essa seção abaixo para eliminar a contradição.

### Componentes que acompanham o kernel (programas de sistema)

- Compiladores
- Editores
- Interpretador de comandos (shell)

---

## MBR (Master Boot Record)

> **Nota de conceito:** "protegida" não é o termo mais preciso — o MBR é uma **área reservada/especial** (o primeiro setor do disco, tradicionalmente 512 bytes), não uma área com proteção de acesso no sentido de permissões. Ajustei a redação abaixo.

O MBR é a área reservada no início do disco que contém o _bootloader_ (carregador de inicialização), responsável por permitir que o SO seja localizado e carregado quando o computador é inicializado (_boot_).

---

## Abstrações oferecidas pelo SO

Para cada tipo de hardware "gerido" pelo SO, existe algum tipo de **abstração** oferecida para sua utilização:

|Recurso de hardware|Abstração oferecida pelo SO|
|---|---|
|CPU|Processos e Threads|
|Memória|Espaço de endereçamento|
|Placas acopladas (vídeo, rede, etc.)|Sockets|
|Interface gráfica|Janelas (GUIs)|
|HDs / discos|Arquivos|

> **Nota de conceito:** corrigi "Placas acoplacadas" → **Placas acopladas** (erro de digitação) e "Exclusisamente de aplicações" → removido/ajustado. O ponto original provavelmente queria dizer que a abstração de **janelas (GUI)** é usada **exclusivamente por aplicações** (não é um recurso de hardware "cru", e sim uma camada construída para as apps interagirem com o usuário). Deixei essa observação explícita na tabela acima em vez de deixar a frase solta e ambígua.

---

## O Sistema Operacional como um "governo"

O Sistema Operacional é similar a um governo: o "propósito" do governo é gerir recursos de maneira a garanti-los para todos. Da mesma forma, o SO:

- Gerencia recursos
- Resolve requisições conflitantes de recursos
- Previne erros e o uso inapropriado do computador

---

## Definições de Sistema Operacional

Não há uma definição universalmente aceita. Algumas abordagens comuns:

**a) "Tudo que o vendedor envia quando você compra um sistema operacional"** É uma boa aproximação prática, mas pouco precisa tecnicamente (mistura kernel + aplicativos + drivers etc.).

**b) "O programa executando constantemente no computador" — o kernel (núcleo)** Tudo mais que acompanha o kernel é considerado um **programa de sistema** ou **aplicativo** (não faz parte do núcleo em si).

**c) "Uma máquina estendida"** A arquitetura do hardware oferece um conjunto de instruções primitivas. O SO estende essas instruções por meio de software, criando "funções" (abstrações) que podem ser utilizadas por qualquer software, sem que este precise lidar diretamente com o hardware.

**d) "Um gerenciador"** Visão focada no papel de gerenciamento e arbitragem de recursos (CPU, memória, dispositivos, arquivos) entre os programas em execução.

### Definições (Prof. Erivelto)

- "Um sistema operacional é o programa que atua como intermediário entre usuário, aplicativo e o hardware do computador, controlando a execução de programas e gerenciando a alocação de recursos para garantir o uso eficiente e seguro da máquina."
- "Um software que tem a capacidade de gerenciar e disponibilizar recursos computacionais para os aplicativos instalados sobre ele."



