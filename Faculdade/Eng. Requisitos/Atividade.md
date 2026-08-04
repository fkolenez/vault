Atividade:
"*Desenvolvimento de requisitos funcionas e não funcionas para software de gestão de vendas de produtos relacionados a beleza e cuidado pessoal.*"

#### Requisitos funcionais:

| RF   | Descrição                                                                                         |
| ---- | ------------------------------------------------------------------------------------------------- |
| RF01 | O sistema deve permitir o cadastro de clientes.                                                   |
| RF02 | O sistema deve registrar as vendas ocorridas diariamente.                                         |
| RF03 | O sistema deve gerar relatórios de faturamento identificando perfil de cliente.                   |
| RF04 | O sistema deve controlar o faturamento diario total da empresa.                                   |
| RF05 | O sistema deve analisar a margem de lucro por categoria de produto.                               |
| RF06 | O sistema deve analisar a margem de lucro por canal de venda                                      |
| RF07 | O sistema deve permitir o cadastro de metas diarias de faturamento                                |
| RF08 | O sistema deve comparar o faturamento real com as metas diarias pré estabelecidas                 |
| RF09 | O sistema deve comparar anualmente o faturamento e comparar ele com faturamentos anuais passados. |
| RF10 | O sistema deve comparar mensalmente o faturamento e comparar ele com meses passados.              |
| RF11 | O sistema deve permitir o cadastro de usuarios.                                                   |
| RF12 | O sistema deve possuir autenticação de usuario com nome de usuario e senha.                       |

#### Requisitos não funcionais:

| RNF   | Descrição                                                                                                                                                                                                       |
| ----- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| RNF01 | Os dados do cliente devem ser criptografados usando hash, para proteger informações sensíveis.                                                                                                                  |
| RNF02 | O sistema deve gerar relatorios em menos de 5 segundos.                                                                                                                                                         |
| RNF03 | O sistema deve gerar relatórios precisos, contendo informações reais das vendas ocorridas diariamente, sem inconsistências.                                                                                     |
| RNF04 | O sistema deve exibir gráficos interativos de vendas diárias, mensais e anuais, com tempo de carregamento inferior a 2 segundos, utilizando legendas, cores e rótulos para facilitar a interpretação dos dados. |
| RNF05 | O sistema deve ser responsivo (desktop, tablet e smartphone).                                                                                                                                                   |
| RNF06 | O sistema deve funcionar 99,9% do tempo de um mês.                                                                                                                                                              |
| RNF07 | O sistema deve manter pelo menos 500 usuários autenticados sem perda de desempenho.                                                                                                                             |
| RNF08 | o sistema deve atender à LGPD (Lei Geral de Proteção de Dados) — incluindo registro de consentimentos, possibilidade de exclusão de dados pessoais mediante solicitação em até 7 dias úteis.                    |
| RNF09 | O sistema deve utilizar Token JWT para validação de APIs                                                                                                                                                        |
| RNF10 | O sistema deve ter código padronizado e documentação atualizada a cada implementação para facilitar manutenção e integrações futuras.                                                                           |
