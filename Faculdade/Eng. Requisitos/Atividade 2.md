

@ = "O sistema deve" 

# Requisitos funcionais

| RF   | Descrição                                                                                                                                                                                   | Prioridade | Clareza/Completude | Observações |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- | ------------------ | ----------- |
| RF01 | @ permitir o cadastro de emprestimo de livros contendo as informaçoes do aluno, com matricula do aluno, email do aluno, nome do livro e data de empréstimo.                                 | Essencial  |                    |             |
| RF02 | @ enviar notificações ao email cadastrado no emprestimo para o aluno um dia anterior ao prazo de entrega                                                                                    | Desejável  |                    |             |
| RF03 | @ permitir a devolução do livro, contendo nome do livro que foi devolvido, matricula do aluno e data de devolução                                                                           | Essencial  |                    |             |
| RF04 | @  permitir o cadastro de alunos contendo email, email institucional, matricula, nome e cpf                                                                                                 | Essencial  |                    |             |
| RF05 | @  verificar se a data de devolução do livro é superior ao prazo de entrega                                                                                                                 | Importante |                    |             |
| RF06 | @  gerar um relatorio contendo todos os livros da biblioteca separados por categoria de livro (romance, ação, aventura...) data de aquisição, quantidade em estoque e quantidade emprestada | Importante |                    |             |
| RF07 | @ calcular o prazo de devolução do livro emprestado sendo 14 dias a frente da data de emprestimo, exemplo: data de emprestimo dia 01/05, data de devolução é portanto 15/05                 | Essencial  |                    |             |
| RF08 | @ possuir sistema de login verificando matricula e senha do usuario                                                                                                                         | Essencial  |                    |             |
# Requisitos não funcionais

| RF    | Descrição                                                                                                                     | Prioridade     | Clareza/Completude | Observações |
| ----- | ----------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------ | ----------- |
| RNF01 | @ ser responsivo, adaptando seu layout para telas de computador, tablet e celular                                             | Usabilidade    |                    |             |
| RNF02 | @ utilizar tokens de sessão para gerenciar a autenticação                                                                     | Segurança      |                    |             |
| RNF03 | @  funcionar durante todo o periodo de funcionamento da universidade,  abrangendo os periodos: matutino verspertino e noturno | Confiabilidade |                    |             |
| RNF04 | @ criptografar as informações sensiveis do aluno: cpf, nome, senha e email utilizando hash                                    | Segurança      |                    |             |
| RNF05 | @ deve gerar relatorios em no maximo 2 segundos                                                                               | Desempenho     |                    |             |
