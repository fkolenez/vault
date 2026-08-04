---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Coffee Counter IoT, Contador de café]
tags: [projeto, iot, esp32, observabilidade]
sources: []
source_path: my-vault/Projetos/Coffe Counter.md
source_type: project-specification
source_date: 2026-08-04
ingested: 2026-08-04
related: ["[[AI-wiki/wiki/temas/Projetos|Projetos]]"]
---

# Coffee Counter IoT

> Laboratório educacional de IoT que registra eventos de consumo de café e os utiliza para praticar firmware, comunicação, persistência, aplicações web e observabilidade.

_The most overengineered way to count how many coffees I drink._

## Problema e propósito

O comportamento básico é simples: pressionar um botão para registrar um café. A complexidade é intencional e serve ao aprendizado. Cada etapa deve introduzir uma tecnologia porque ela permite estudar um requisito concreto, e não apenas para aumentar a arquitetura.

O projeto também funciona como portfólio, desde que as decisões, alternativas, testes e limitações sejam documentados.

## Objetivos

- registrar eventos por botão físico;
- manter histórico após reinicializações;
- operar temporariamente sem rede;
- sincronizar eventos sem duplicação;
- exibir estado local;
- consultar histórico e estatísticas;
- observar saúde do dispositivo e dos serviços.

## Escopo do MVP

1. ESP32 com botão e tratamento de debounce.
2. Relógio sincronizado por NTP quando houver rede.
3. Identificador único por evento.
4. Persistência local em NDJSON.
5. Contador diário no display.
6. Sincronização HTTP com API.
7. API idempotente e armazenamento do histórico.

Dashboard avançado, MQTT, filas, machine learning e CI/CD ficam fora do MVP.

## Arquitetura inicial

```text
botão e display
      │
      ▼
    ESP32 ─── NTP
      │
      ├── estado atual
      └── fila local de eventos
              │
          HTTPS/JSON
              │
              ▼
             API
              │
              ▼
        banco de dados
              │
              ▼
          dashboard
```

MQTT poderá substituir ou complementar HTTP quando houver necessidade de comunicação assíncrona, múltiplos dispositivos ou telemetria contínua.

## Hardware

| Quantidade | Componente |
| ---: | --- |
| 1 | ESP32 DevKit V1 |
| 1 | display IPS ST7789 240×240 |
| 1 | LED RGB difuso |
| 3 | botões de pressão |
| 1 | protoboard |
| diversos | jumpers e resistores |

Antes da montagem, devem ser documentados pinagem, tensão, resistores, consumo e bibliotecas compatíveis.

## Modelo de evento

Cada registro precisa de identidade própria para que reenvios não gerem duplicatas:

```json
{
  "eventId": "device-01:00000142",
  "deviceId": "device-01",
  "occurredAt": "2026-08-04T12:43:00-03:00",
  "recordedAt": "2026-08-04T12:43:01-03:00",
  "type": "coffee_registered",
  "schemaVersion": 1
}
```

Se o relógio ainda não estiver sincronizado, o evento precisa registrar essa condição e preservar uma ordem monotônica local.

## Persistência local

### Estado derivado

`state.json` pode acelerar a inicialização, mas não deve ser a única fonte do histórico:

```json
{
  "today": 6,
  "record": 11,
  "lastEventId": "device-01:00000142",
  "lastSyncAt": "2026-08-04T12:40:00-03:00"
}
```

### Fila de eventos

`history.ndjson` registra um evento por linha. Gravação append-only reduz sobrescritas, mas exige estratégia para corrupção, limite de armazenamento e compactação após confirmação do servidor.

### Configuração

`config.json` contém apenas configurações não secretas. Credenciais devem usar armazenamento apropriado e nunca ser registradas em logs ou no repositório.

## Sincronização

Fluxo proposto:

1. o dispositivo grava o evento localmente;
2. atualiza a interface sem depender da rede;
3. tenta enviar eventos pendentes em lote;
4. a API aceita `eventId` uma única vez;
5. o servidor confirma os identificadores persistidos;
6. o dispositivo marca ou compacta eventos confirmados.

Retentativas devem usar atraso crescente e não bloquear a interação local.

## Interface do dispositivo

O display pode mostrar:

```text
Coffee Counter

Hoje: 6
Último: 09:43
Sincronização: pendente (2)
Wi-Fi: -56 dBm
```

O LED representa estados documentados e não substitui mensagens no display:

- verde: operação normal;
- azul: sincronização;
- amarelo: operação offline ou atenção;
- vermelho: falha que exige ação.

Estimativas de cafeína são aproximadas, pois variam por bebida, volume e preparo. Não devem ser apresentadas como medição clínica nem orientação de saúde.

## Backend

Responsabilidades:

- autenticar dispositivos;
- validar versão e formato do evento;
- garantir idempotência;
- persistir histórico;
- consultar agregações;
- registrar erros e latência sem expor segredos.

Node.js com Express ou Fastify é uma opção candidata. A escolha deve considerar familiaridade, testes e simplicidade do MVP.

## Banco de dados

MongoDB pode armazenar eventos flexíveis; PostgreSQL também atende bem e oferece restrição única para `eventId`. A decisão deve ser tomada após definir consultas, consistência e estratégia de agregação. Redis e bancos de séries temporais não são necessários no início.

## Dashboard

#### Primeira versão:
- histórico diário;
- totais por semana e mês;
- intervalo médio entre registros;
- estado da última sincronização;
- exportação dos eventos.

Tempo real por WebSocket deve entrar somente se atualização periódica não atender ao uso.

## Observabilidade

Comece com sinais que respondam a problemas reais:

- uptime e reinicializações;
- espaço livre e falhas de escrita;
- eventos pendentes;
- última sincronização bem-sucedida;
- latência e erros da API;
- intensidade do sinal Wi-Fi.

Prometheus e Grafana são candidatos para fases posteriores. Zabbix só deve ser adicionado se houver objetivo específico de estudo ou monitoramento que ele atenda.

## Segurança

- transporte criptografado quando suportado pela implantação;
- credencial individual por dispositivo;
- validação de payload e limites de requisição;
- segredos fora do código-fonte;
- mecanismo seguro de atualização OTA;
- inventário e possibilidade de revogar dispositivos.

## Roadmap

### Fase 1 — Dispositivo local

- botões, display e LED;
- relógio e debounce;
- persistência e testes de reinicialização.

### Fase 2 — Sincronização

- API idempotente;
- autenticação do dispositivo;
- retentativas e modo offline;
- banco de dados.

### Fase 3 — Visualização

- dashboard;
- exportação;
- métricas operacionais básicas.

### Fase 4 — Experimentos técnicos

- MQTT e WebSockets;
- Docker e pipeline de CI/CD;
- monitoramento com Prometheus e Grafana;
- atualização OTA.

Machine learning só deve ser considerado com histórico suficiente, pergunta útil e comparação com uma linha de base simples.

## Critérios de sucesso do MVP

- nenhum evento perdido em teste de reinicialização;
- nenhum evento duplicado após retentativas;
- registro local disponível sem Wi-Fi;
- sincronização retomada automaticamente;
- histórico exportável e verificável;
- documentação permite reproduzir a montagem.

## Estado atual

**Em definição:** arquitetura e componentes selecionados; firmware, persistência e interface ainda precisam ser implementados e testados.

## Próximos passos

1. documentar pinagem e circuito;
2. implementar botão com debounce e contador local;
3. testar LittleFS sob reinicialização e falta de energia;
4. definir schema versionado do evento;
5. criar uma API mínima com idempotência;
6. validar sincronização offline antes do dashboard.

## Conexão

- Tema: [[AI-wiki/wiki/temas/Projetos|Projetos]].
