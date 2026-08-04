
### Estilos

Os estilos CSS podem ser definidos de várias maneiras, incluindo:

- No próprio elemento HTML usando a tag `style`
- Em um arquivo CSS externo    
- No componente Angular usando a propriedade `styles`

```
stylesUrls: []  // é um vetor de caminhos para os estilos
styleUrl: ''    // é apenas um caminho para o estilo
style: h1 {}    // muda apenas o estilo daquele escopo
```

##### Ordem de hierarquia para estilos:
Decorator > estilo sccs > estilo global

##### Seletores especiais
###### :host
Se refere apenas ao componente que esta sendo usado.

```
:host{
	h2{
		color: red;
	}
}
```
nesse caso ele só vai mudar o color do h2 do componente especifico.


#### :host-context()

Muda a formatação conforme a classe dentro do elemento.

Por exemplo:
```
<div class="dark-theme"></div>

:host-context(.dark-theme){
	h2{
		background-color: #000;
		color: #fff;
	}
}
```

ele muda a cor de fundo apenas dessa div, ele também sobrescreve oque estiver dentro do :host