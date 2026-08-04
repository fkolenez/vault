---
type: source
status: active
created: 2026-08-04
updated: 2026-08-04
aliases: [Pontos notáveis e distâncias]
tags: [matematica, geometria-analitica, triangulos]
sources: []
source_path: my-vault/IFC/Má temática/Distância entre pontos, ponto médio, mediana e baricentro.md
source_type: lecture-notes
source_date:
ingested: 2026-08-04
related: ["[[AI-wiki/wiki/temas/Matemática|Matemática]]"]
---

# Distância, ponto médio, mediana e baricentro

> A geometria analítica traduz posições e relações geométricas em coordenadas e equações.

## Distância entre dois pontos

Para $A(x_A,y_A)$ e $B(x_B,y_B)$:

$$
d(A,B)=\sqrt{(x_B-x_A)^2+(y_B-y_A)^2}
$$

Se os pontos têm a mesma ordenada, $d=|x_B-x_A|$; se têm a mesma abscissa, $d=|y_B-y_A|$. A ordem não altera o resultado devido ao módulo ou ao quadrado.

## Ponto médio

$$
M=\left(\frac{x_A+x_B}{2},\frac{y_A+y_B}{2}\right)
$$

$M$ divide o segmento $\overline{AB}$ em duas partes de mesmo comprimento.

## Mediana de um triângulo

Mediana é o segmento que liga um vértice ao ponto médio do lado oposto. Todo triângulo possui três medianas; a definição não se limita a triângulos retângulos.

![[my-vault/img/matematica/tesao 1.png]]

## Baricentro

O baricentro, ou centroide, é a interseção das três medianas. Para vértices $A$, $B$ e $C$:

$$
G=\left(\frac{x_A+x_B+x_C}{3},\frac{y_A+y_B+y_C}{3}\right)
$$

Ele divide cada mediana na razão $2:1$, com a parte maior junto ao vértice.

![[my-vault/img/matematica/tesao2.png]]

## Conexões

- Tema: [[AI-wiki/wiki/temas/Matemática|Matemática]].
- Retas: [[my-vault/IFC/Má temática/Equação geral, reduzida e determinantes|Equações da reta]].

## Questões em aberto

- Como obter a equação de uma mediana?
- Como calcular área de um triângulo por determinantes?
