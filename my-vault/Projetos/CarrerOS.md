---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [CareerOS, Sistema operacional da carreira]
tags: [projeto, carreira, estudos, conhecimento, produto]
sources: []
source_path: my-vault/Projetos/CarrerOS.md
source_type: project-specification
source_date: 2026-08-04
ingested: 2026-08-04
related: ["[[AI-wiki/wiki/temas/Projetos|Projetos]]"]
---

# CareerOS

> Sistema pessoal para organizar estudos, evidências de aprendizagem, projetos e desenvolvimento profissional ao longo do tempo.

## Problema

Informações sobre carreira costumam ficar distribuídas entre agendas, aplicativos de notas, planilhas, plataformas de cursos e repositórios de código. Essa fragmentação dificulta responder:

- o que foi estudado;
- que habilidades foram praticadas;
- quais evidências demonstram domínio;
- quais lacunas devem orientar o próximo ciclo;
- como projetos, livros e certificações se relacionam com os objetivos profissionais.

## Proposta

O CareerOS centraliza planejamento, registro e revisão do desenvolvimento profissional. Ele não é apenas um contador de horas: associa sessões de estudo a resultados observáveis, como questões resolvidas, projetos entregues, laboratórios executados e revisões realizadas.

Essas métricas são **indicadores indiretos**, não uma medição perfeita de conhecimento. Nível de habilidade deve ser sustentado por evidências e revisão periódica, evitando transformar quantidade de atividade em domínio presumido.

## Público inicial

Projeto de uso pessoal, voltado a estudos técnicos de longo prazo, preparação para certificações ou concursos e construção de portfólio.

## Princípios

- **Evidência antes de pontuação:** projetos, explicações e exercícios valem mais que horas isoladas.
- **Baixo atrito:** registrar uma sessão não pode consumir mais esforço que estudar.
- **Histórico preservado:** mudanças de meta não apagam a evolução anterior.
- **Métricas explicáveis:** todo indicador precisa de definição e origem conhecidas.
- **Privacidade:** dados de rotina e carreira pertencem ao usuário e devem ser exportáveis.

## Estrutura do produto

```text
CareerOS
├── Dashboard
├── Mapa de conhecimento
├── Habilidades
├── Sessões de estudo
├── Projetos e laboratórios
├── Questões e revisões
├── Livros e certificações
├── Estatísticas
└── Perfil e configurações
```

## Mapa de conhecimento

O conhecimento pode ser apresentado como uma árvore para facilitar a navegação, mas o modelo de dados deve aceitar múltiplas relações. Um conceito como DNS pode pertencer a Redes, Segurança e Computação Forense simultaneamente; uma hierarquia rígida criaria duplicatas.

Cada tópico pode relacionar:

- habilidades;
- notas e fontes;
- sessões de estudo;
- flashcards e questões;
- projetos e laboratórios;
- pré-requisitos e tópicos relacionados.

## Habilidades e evidências

Escala inicial sugerida:

| Nível | Interpretação | Evidência possível |
| ---: | --- | --- |
| 0 | ainda não estudado | nenhuma |
| 1 | reconhece termos | anotação introdutória |
| 2 | consegue explicar | resumo ou resposta aberta |
| 3 | resolve exercícios | conjunto de questões |
| 4 | aplica em contexto real | projeto ou laboratório |
| 5 | ensina e avalia | material didático e revisão por terceiros |

O nível não deve aumentar automaticamente apenas pelo tempo registrado. O usuário confirma a avaliação e vincula evidências.

## Sessões de estudo

Campos essenciais:

- início, fim e duração;
- tema e habilidade;
- objetivo da sessão;
- material utilizado;
- resultado produzido;
- observação ou dificuldade encontrada.

Exemplo:

```text
Data: 2026-08-03
Tema: DNS
Duração: 1h45
Objetivo: compreender resolução recursiva
Resultado: 15 flashcards e 25 questões
```

## Módulos posteriores

### Revisão e questões

- flashcards e repetição espaçada;
- questões por assunto, origem e dificuldade;
- taxa de acerto por período;
- registro do motivo do erro;
- identificação de tópicos que precisam de revisão.

### Projetos e laboratórios

- objetivo, escopo e estado;
- tecnologias e ambiente;
- entregas, documentação e repositório;
- evidências produzidas;
- aprendizados e decisões.

### Livros e certificações

- metadados e progresso;
- notas e tópicos associados;
- instituição, validade e resultado de certificações;
- evidências anexadas.

## Dashboard

O dashboard deve responder perguntas, não apenas exibir números:

- O que precisa de atenção hoje?
- Qual habilidade recebeu prática recente?
- Que objetivo está parado?
- Quais atividades produziram evidências?
- Como o esforço se distribuiu no período?

Visualizações possíveis incluem atividade semanal, distribuição por área, calendário de estudos, revisões pendentes e evolução de habilidades.

## Gamificação

XP e sequências podem incentivar consistência, mas também estimular registros sem valor. Se implementado, o sistema deve:

- limitar recompensas por ações repetitivas;
- diferenciar atividade de evidência;
- não punir pausas justificadas;
- permitir desativar gamificação;
- manter o cálculo transparente.

Os valores de XP originalmente propostos são hipóteses e precisam de teste antes de se tornarem regra.

## MVP

Primeira versão validável:

1. cadastro de áreas, tópicos e habilidades;
2. registro de sessões de estudo;
3. associação de evidências;
4. cadastro de projetos;
5. dashboard semanal básico;
6. exportação dos dados.

Flashcards, questões, certificações, integrações, IA e gamificação ficam fora do MVP.

## Roadmap

### Fase 2 — Revisão

- flashcards;
- questões;
- revisões pendentes;
- calendário e heatmap.

### Fase 3 — Integrações

- importação ou sincronização com Anki;
- API pública;
- calendário;
- sincronização entre dispositivos.

### Fase 4 — Assistência por IA

- sugestão de revisões;
- rascunho de flashcards sujeito a aprovação;
- sugestão de trilhas;
- identificação de lacunas com explicação das evidências usadas.

## Arquitetura candidata

| Camada | Opção inicial |
| --- | --- |
| Front-end | React e TypeScript |
| API | FastAPI e Python |
| Banco relacional | PostgreSQL |
| Desenvolvimento local | Docker Compose |
| Versionamento | Git e GitHub |

Redis, OAuth e infraestrutura adicional só devem entrar quando houver requisito que justifique sua complexidade.

## Riscos e decisões pendentes

- modelo hierárquico versus grafo de conhecimento;
- critérios confiáveis para evolução de habilidade;
- custo de registrar atividades manualmente;
- privacidade de rotina, desempenho e objetivos;
- importação, exportação e portabilidade;
- escopo excessivo antes da validação do núcleo.

## Próximos passos

1. Definir três jornadas essenciais do usuário.
2. Modelar tópico, habilidade, sessão e evidência.
3. Criar protótipo navegável do MVP.
4. Usar o sistema por duas semanas.
5. Medir atrito de registro e utilidade das visualizações.

## Conexão

- Tema: [[AI-wiki/wiki/temas/Projetos|Projetos]].
