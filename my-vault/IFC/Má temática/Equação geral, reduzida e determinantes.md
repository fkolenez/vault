---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Equações da reta]
tags: [matematica, geometria-analitica, retas]
sources: []
source_path: my-vault/IFC/Má temática/Equação geral, reduzida e determinantes.md
source_type: lecture-notes
source_date:
ingested: 2026-08-04
related: ["[[AI-wiki/wiki/temas/Matemática|Matemática]]"]
---

# Equações da reta

> Uma reta no plano pode ser representada por diferentes equações; a forma escolhida depende das informações disponíveis.

## Forma geral

$$
Ax+By+C=0
$$

$A$ e $B$ não podem ser simultaneamente zero. Retas equivalentes podem ter coeficientes proporcionais.

## Forma reduzida

Para uma reta não vertical:

$$
y=mx+n
$$

- $m$ é o coeficiente angular;
- $n$ é a ordenada do ponto onde a reta cruza o eixo $y$.

Retas verticais têm equação $x=c$ e não possuem coeficiente angular finito, portanto não admitem forma reduzida $y=mx+n$.

## Reta por dois pontos

Os pontos $A(x_A,y_A)$, $B(x_B,y_B)$ e um ponto genérico $P(x,y)$ são colineares quando:

$$
\begin{vmatrix}
x_A & y_A & 1\\
x_B & y_B & 1\\
x & y & 1
\end{vmatrix}=0
$$

Se $x_A\ne x_B$, também é possível calcular:

$$
m=\frac{y_B-y_A}{x_B-x_A}
$$

## Exemplos

- $2y+1=0\Rightarrow y=-\frac12$: reta horizontal.
- $-x+3=0\Rightarrow x=3$: reta vertical.
- $2x-1-y=0\Rightarrow y=2x-1$: $m=2$ e $n=-1$.

![[my-vault/img/matematica/Pasted image 20241030213655.png]]
![[my-vault/img/matematica/Pasted image 20241030213739.png]]
![[my-vault/img/matematica/Pasted image 20241030213157.png]]

## Inclinação

Quando $\alpha$ é o ângulo orientado da reta com o semieixo positivo de $x$:

$$m=\tan\alpha$$

## Posição relativa

Para retas não verticais:

- **paralelas distintas:** $m_1=m_2$ e interceptos diferentes;
- **concorrentes:** $m_1\ne m_2$;
- **perpendiculares:** $m_1m_2=-1$;
- **coincidentes:** coeficientes gerais proporcionais.

Casos com retas verticais devem ser avaliados separadamente.

## Conexões

- Tema: [[AI-wiki/wiki/temas/Matemática|Matemática]].
- Coordenadas: [[my-vault/IFC/Má temática/Distância entre pontos, ponto médio, mediana e baricentro|Distância e pontos notáveis]].

## Questões em aberto

- Como calcular a distância de um ponto a uma reta?
- Como converter entre formas geral, reduzida e paramétrica?
