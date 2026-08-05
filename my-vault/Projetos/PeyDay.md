---
type: project
status: active
created: 2026-08-05
updated: 2026-08-05
aliases: [PeiDay, Projeto POO II, Aplicativo POO II]
tags: [projeto, faculdade, poo-ii, java, gui, gamificacao]
sources: []
---

# PeiDay

> Aplicativo acadêmico para a disciplina de **POO II**, usando orientação a objetos, interface gráfica, persistência de dados e uma proposta divertida de gamificação.

## Visão Geral

**PeiDay** é um aplicativo que transforma o tempo gasto em pausas durante o expediente em métricas financeiras e estatísticas.

A ideia nasceu da brincadeira da "cagada remunerada": se uma pessoa recebe por hora, cada minuto de café, conversa, descanso ou banheiro também tem um valor monetário estimado.

O objetivo do projeto não é incentivar improdutividade. O foco é criar um aplicativo simples, apresentável e bem estruturado para **POO II da faculdade**, demonstrando:

- classes com responsabilidades claras;
- encapsulamento;
- herança ou interfaces quando fizer sentido;
- composição entre objetos;
- persistência de dados;
- interface visual;
- validação de entradas;
- cálculos e relatórios.

## Problema

Pausas fazem parte da rotina, mas normalmente não são medidas. O PeiDay transforma essas pausas em dados curiosos para responder perguntas como:

- quanto dinheiro foi "ganho" em pausas durante o mês;
- qual categoria teve mais tempo acumulado;
- qual foi a maior pausa registrada;
- quanto vale cada minuto de acordo com o salário informado;
- quais conquistas o usuário desbloqueou.

## Público

O público principal é o próprio contexto acadêmico:

- alunos de POO II;
- professor avaliador;
- colegas que testarem o aplicativo;
- usuários interessados em uma ferramenta humorística de estatísticas pessoais.

## Escopo Acadêmico

O projeto deve ser pensado como um **aplicativo de disciplina**, não como uma startup completa.

Por isso, a prioridade é entregar um sistema funcional, organizado e demonstrável, com boa aplicação dos conceitos de POO II.

### Dentro do escopo

- Cadastro de usuário local.
- Cadastro de salário mensal ou valor por hora.
- Cálculo de valor por hora, minuto e segundo.
- Cadastro de categorias de pausa.
- Cronômetro para registrar uma pausa.
- Histórico de registros.
- Dashboard simples com totais e estatísticas.
- Sistema básico de conquistas.
- Persistência local.
- Interface gráfica.

### Fora do escopo inicial

- Autenticação online.
- Ranking entre empresas reais.
- API pública.
- Integração com Slack, Teams ou smartwatch.
- Aplicativo mobile.
- Backend separado.
- Deploy em nuvem.

Essas ideias podem entrar como funcionalidades futuras, mas não são necessárias para a entrega de POO II.

## Como Funciona

O usuário informa seu salário mensal ou valor por hora.

O aplicativo calcula:

- valor da hora;
- valor do minuto;
- valor do segundo.

Quando iniciar uma pausa, o usuário escolhe uma categoria e inicia o cronômetro. Ao finalizar, o sistema registra:

- categoria;
- data;
- hora de início;
- hora de término;
- duração;
- valor financeiro estimado.

Exemplo:

```text
Café

Duração:
00:12:48

Valor da hora:
R$ 34,50

Valor estimado:
R$ 7,36
```

## Categorias

Categorias padrão:

- Café
- Banheiro
- Conversa
- Caminhada
- Celular
- Descanso
- Almoço

O usuário também poderá criar categorias personalizadas.

## Funcionalidades do MVP

## 1. Cadastro de Perfil

Campos:

- nome;
- salário mensal;
- carga horária mensal;
- valor por hora calculado automaticamente.

Regras:

- salário deve ser maior que zero;
- carga horária deve ser maior que zero;
- se o usuário informar valor por hora diretamente, o sistema pode dispensar salário mensal.

## 2. Cadastro de Categorias

Campos:

- nome;
- descrição;
- cor ou ícone;
- status ativo/inativo.

Regras:

- nome da categoria não pode ser vazio;
- categorias inativas não aparecem para novos registros, mas continuam no histórico.

## 3. Registro de Pausas

Campos:

- categoria;
- início;
- fim;
- duração;
- valor calculado.

Regras:

- uma pausa precisa ter início e fim;
- a duração não pode ser negativa;
- o valor é calculado a partir da duração e do valor por segundo.

## 4. Dashboard

Indicadores:

- tempo total registrado;
- dinheiro total estimado;
- categoria com maior tempo;
- categoria com maior valor;
- maior pausa registrada;
- média diária de pausas.

## 5. Conquistas

Exemplos:

- Primeiro Café: registrar uma pausa de café.
- Primeiros R$ 10: acumular R$ 10 em pausas.
- Maratonista do Descanso: registrar uma pausa acima de 30 minutos.
- Semana Consistente: registrar pausas em 5 dias diferentes.

## Modelagem Orientada a Objetos

## Classes Principais

### Usuario

Responsável pelos dados do usuário e cálculo base de remuneração.

Atributos prováveis:

- nome;
- salarioMensal;
- cargaHorariaMensal;

Métodos prováveis:

- calcularValorHora();
- calcularValorMinuto();
- calcularValorSegundo();

### Categoria

Representa o tipo de pausa registrada.

Atributos prováveis:

- id;
- nome;
- descricao;
- cor;
- ativa;

Métodos prováveis:

- ativar();
- desativar();
- renomear();

### RegistroPausa

Representa uma pausa feita pelo usuário.

Atributos prováveis:

- id;
- categoria;
- inicio;
- fim;
- duracao;
- valorEstimado;

Métodos prováveis:

- finalizar();
- calcularDuracao();
- calcularValor();

### CalculadoraFinanceira

Concentra regras de cálculo para evitar duplicação.

Métodos prováveis:

- calcularValorPorSegundo();
- calcularValorDaPausa();
- formatarMoeda();

### Conquista

Representa uma meta desbloqueável.

Atributos prováveis:

- nome;
- descricao;
- desbloqueada;

Métodos prováveis:

- verificarCriterio();
- desbloquear();

### Repositorio

Responsável por salvar e carregar dados.

Implementações possíveis:

- RepositorioJson;
- RepositorioArquivo;
- RepositorioSqlite.

## Conceitos de POO II Aplicados

| Conceito | Aplicação no PeiDay |
| --- | --- |
| Encapsulamento | atributos privados e acesso por métodos controlados |
| Composição | Usuario possui registros; RegistroPausa possui Categoria |
| Herança | conquistas específicas podem herdar de uma classe Conquista |
| Polimorfismo | diferentes conquistas podem implementar o mesmo método de verificação |
| Interface | repositórios diferentes podem seguir o mesmo contrato |
| Tratamento de exceções | validação de salário, carga horária e datas |
| Coleções | listas de registros, categorias e conquistas |
| Persistência | salvar histórico em arquivo JSON, CSV ou SQLite |
| GUI | telas para cadastro, cronômetro, histórico e dashboard |

## Interface Gráfica

O aplicativo deve ter poucas telas, com fluxo simples para apresentação em sala.

## Tela 1: Perfil

- cadastro do nome;
- salário mensal;
- carga horária mensal;
- botão para salvar perfil.

## Tela 2: Cronômetro

- seleção de categoria;
- botão iniciar;
- botão finalizar;
- exibição da duração;
- exibição do valor estimado.

## Tela 3: Histórico

- lista de pausas registradas;
- filtro por categoria;
- filtro por data;
- opção de excluir registro.

## Tela 4: Dashboard

- total de tempo;
- total em dinheiro;
- categoria mais usada;
- maior pausa;
- conquistas desbloqueadas.

## Tecnologias Propostas

Como o projeto será para **POO II**, a proposta deve priorizar uma stack compatível com a disciplina.

Opção recomendada:

- Java;
- JavaFX ou Swing;
- persistência em JSON, CSV ou SQLite;
- padrão MVC ou organização em camadas simples.

Estrutura sugerida:

```text
src/
  model/
    Usuario.java
    Categoria.java
    RegistroPausa.java
    Conquista.java
  service/
    CalculadoraFinanceira.java
    EstatisticaService.java
    ConquistaService.java
  repository/
    Repositorio.java
    RepositorioJson.java
  view/
    PerfilView.java
    CronometroView.java
    HistoricoView.java
    DashboardView.java
  controller/
    PerfilController.java
    CronometroController.java
    HistoricoController.java
    DashboardController.java
```

## Roadmap

## Etapa 1: Base do domínio

- criar classes principais;
- implementar cálculos de remuneração;
- validar entradas;
- criar registros de pausa manualmente em testes.

## Etapa 2: Persistência

- salvar perfil;
- salvar categorias;
- salvar registros;
- carregar dados ao abrir o aplicativo.

## Etapa 3: Interface gráfica

- criar tela de perfil;
- criar tela de cronômetro;
- criar tela de histórico;
- conectar telas aos serviços.

## Etapa 4: Dashboard e conquistas

- calcular estatísticas;
- exibir totais;
- implementar conquistas simples;
- preparar demonstração final.

## Critérios de Sucesso

O projeto estará pronto para apresentação quando:

- o usuário conseguir cadastrar salário e carga horária;
- o sistema calcular valor por hora, minuto e segundo;
- for possível iniciar e finalizar uma pausa;
- o registro aparecer no histórico;
- o dashboard mostrar totais;
- os dados continuarem salvos após fechar e abrir o aplicativo;
- o código demonstrar uso claro de POO;
- a interface for simples o suficiente para ser usada sem explicação longa.

## Riscos

- Escopo crescer demais para o prazo da disciplina.
- Gastar tempo excessivo em autenticação, ranking online ou backend.
- Misturar regra de negócio diretamente na interface.
- Criar muitas categorias e conquistas antes do fluxo principal funcionar.
- Não demonstrar claramente os conceitos de POO II no código.

## Próximos Passos

1. Confirmar com o professor se JavaFX, Swing ou outra tecnologia é exigida.
2. Escolher o formato de persistência: JSON, CSV ou SQLite.
3. Desenhar wireframes simples das quatro telas.
4. Implementar primeiro as classes de domínio.
5. Criar um pequeno conjunto de dados de teste para a apresentação.

## Ideias Futuras

- Ranking entre colegas.
- Exportação para CSV.
- Estatísticas mensais.
- Tema escuro.
- Conquistas personalizadas.
- Versão web ou mobile depois da entrega acadêmica.
