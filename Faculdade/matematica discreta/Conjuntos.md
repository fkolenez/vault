**Cada** item que compõe o conjunto é chamado de elemento.
##### Representações:

- C = { a, b, c, d}

ou por diagrama de Venn

![[../../img/matematica/matematicaEscondidinha/diagramaDeVenn.png]]

Então: A = {1, 2, 3, 4 } e 9 ∉ A

##### Representação por propriedade:
D = {x | x é ou tem (propriedade)}
Lemos "x tal que x tem (propriedade)"

##### Igualdade de conjuntos:
Dois conjuntos A e B são iguais quando todo elemento de A pertence a B e todo elemento de B pertence a A. 
É indicado por $\text A = B$

Se A e B não tiverem todos os elementos iguais então dizemos que A é diferente de B, A 
É indicado por $\text A \ne B$

##### Conjunto vazio, unitário e universo:

- ***Conjunto vazio*** não possui nenhum elemento e é representado por X = { } ou  $\varnothing$.
- ***Conjunto unitário*** possui apenas um elemento J = { 1 }, { x | x  é natural e primo } = { 2 }
- O ***Conjunto universo*** é formado por todos os elementos de determinado assunto da matemática sendo indicado por ***U***.

---
##### Subconjuntos:
Dizemos que um conjunto A é um subconjunto de um conjunto B se, e somente se, todo o elemento de A pertence também a B.

A notação $\text A \subset  B$   indica que "A é um subconjunto de B", "A está contido em B" ou "A é parte de B"

![[../../img/matematica/matematicaEscondidinha/subconjuntos.png]]

Se A não for subconjunto de B, indicamos que $\text A \not\subset  B$ lemos "A não esta contido em B"

![[../../img/matematica/matematicaEscondidinha/naopertence.png]]

 Exemplos:
- { 1, 2 } $\subset$ { 1, 2, 3, 4, 5 }
- { 1, 2, 3 } $\not\subset$ { 1, 3, 4, 5 }
##### Relação de inclusão:
Todo conjunto contem o conjunto vazio

- **Propriedade reflexiva:** $A \subset A$ 

todo conjunto esta contido em si mesmo pois todo elemento de A pertence a A. 

- **Propriedade antissimétrica:** Se $A \subset B$ e $B \subset A$, então $A = B$

Essa propriedade trata da condição de igualdade de dois conjuntos, ou seja, se todo elemento de A pertence a B e todo elemento de B pertence a A, então os dois conjuntos são iguais.

- Propriedade transitiva: Se $A \subset B$ e $B \subset C$, então $A \subset C$

![[../../img/matematica/matematicaEscondidinha/ABC.png]]

##### Conjunto das partes

Considere os conjuntos *A* = $\varnothing$, *B* = { 1 }, *C* = { 1, 2 }, *D* = { 1, 2, 3 }
Quantos e quais são os subconjuntos de cada um desses conjuntos?

- O conjunto *A* tem um único subconjuntos: $\varnothing$
- O conjunto *B* tem dois subconjuntos: $\varnothing$ e { 1 }
- O conjunto *C* tem quatro subconjuntos:  $\varnothing$, { 1 }, { 2 } e { 1, 2 }
- O conjunto *D* tem oito subconjuntos, $\varnothing$, { 1 }, { 2 }, { 3 }, { 1, 2 }, { 1, 3 }, { 2, 3 }, { 1, 2, 3 }

A quantidade de subconjuntos de um conjunto qualquer é determinada pela formula $2^n$, em que n é o número total de elementos desse conjunto.


---

##### Operações com conjuntos

- ***União***:
Dados dois conjuntos A e B, pode ser obter um conjunto C, tal que C tem todos os elemento de de A e B, esse novo conjunto chamamos de união de A e B. É indicado por $\cup$.

Em termos gerais A $\cup$ B = { x | x $\in$ A  e  x $\in$ B }.

O símbolo $\cup$ pode ser associando com o conectivo **ou** pois os elementos da união de A e B pertencem ao conjunto A ou ao conjunto B.

Exemplo:
A = { 1, 2, 3 },  B = { 2, 3, 4 }
A $\cup$ B = { 1, 2, 3, 4 }

- ***Intersecção***:
Dados dois conjuntos A e B, é possível obter um novo conjunto C, tal que C, é formado pelos elementos que pertencem, simultaneamente, a A e B. Esse novo conjunto chamamos de intersecção de A e B. Indicamos pelo símbolo $\cap$

De maneira mais simples, são os elementos em comum dos dois conjuntos.

Exemplo: 
A = { 1, 2, 3 },  B = { 2, 3, 4 }
A $\cap$ B = { 2, 3 }

- ***Diferença***:
Dados dois conjutos A e B, é possivel obter um novo conjunto C, tal que os elementos de C pertencem a A, mas não pertencem a B, ou seja, os elementos do conjunto C, pertencem exclusivamente, ao conjunto A. Esse novo conjunto chamamos de diferença entre A e B. Indicamos por A - B.

É como uma intersecção, mas será retirado os elementos que são comuns aos dois conjuntos.

Exemplo:

A = { 10, 20, 30, 40 ,50 }, B = { 20, 30, 1, 2 6, 5 }
A - B = { 10, 40, 50 }

- ***Complementar***
Dados dois conjuntos A e B, o conjunto complementar C será formado os elementos que faltam para formar um dos conjuntos. 

Por exemplo A = { 2, 4, 6, 8, 10 }, B = { 2, 6, 10 }

$\overline{C}$ (B complementar com A) = { 4, 6 }

