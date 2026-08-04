É uma linguagem de programação para a WEB
### Variables

-  *Var*: Define variáveis globalmente ou no escopo de uma função
-  Let: declaração de variável com escopo em bloco
- *Const*: é constante, não da pra se alterar

---
### Hoisting

Move as declarações de funções e variáveis para o começo do código fazendo com que mesmo que você use a função e depois escreva ela, isso não vai gerar um bug.

![[Pasted image 20241216111014.png]]

---
### Escopo
Define aonde variáveis, funções e objetos estão acessíveis em código. Delimita o contexto em que as variáveis podem ser acessadas. Existem três principais escopos:

##### 1. Escopo Global
- Variáveis ou funções declaradas fora de qualquer bloco ou função possuem **escopo global**.
- Estão acessíveis em qualquer parte do código.

![[Pasted image 20241216114150.png]]

##### 2. Escopo de função
- Variáveis ou funções declaradas dentro de funções possuem o **escopo de função** mesmo que seja **Var**.
- Ou seja não da pra acessar ela de fora.

##### 3. Escopo de Bloco
- Variáveis declaradas com `let` ou `const` têm escopo limitado ao bloco onde foram definidas.
- **var** não respeita escopo de bloco, apenas escopo de função.

![[Pasted image 20241216115137.png]]

Se for var dai o bagulho roda ne pq esse var ai é um tchola




