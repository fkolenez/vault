
### text interpolation
na classe do elemento vc pode colocar atributos lá ex:
![[Pasted image 20241205213147.png]]
para vc printar eles da pra usar o text interpolation {{  }}

![[Pasted image 20241205213216.png]]
ele também funciona com funções ou validações que podem ser feitas dentro do html, chamando uma função por exemplo

--- 
### propriety binding

Constitui uma propriedade de um elemento html: ```<element [property]='value />'```
é usada para manipular as ações desse elemento, por exemplo

```
html:
<button [disabled]="isDisable">Btn</button>

classe ts:
export class TemplateBindingComponent {
  public isDisable = "false"
}
```

nesse caso a propriedade *disabled* do botão está como falsa, então o botão será exibido.

---
### Class'n Style binding
Serve para alterar as classes/estilo de um elemento

```
html:
<p [class.background-blue]="age >= 18" [class.background-red]="age < 18">
    {{ name }}
</p>

class:
	public textDecoration =  this.age >= 32 ? 'underline' : 'none';
```

se o 'age' for maior que trinta e dois então é aplicado o estilo underline, senão nada é aplicado

---
### Event binding
Serve para dar reatividade as coisas, permite colocar ações nos eventos padrões do html
![[Pasted image 20241206150215.png]]
![[Pasted image 20241206150232.png]]

Quando o botão for clicado ele chama a função atribuída a ele, se fazer uma validação para verificar por exemplo se o usuário é >18y para mudar a cor de um elemento como foi feito Class binding.

Isso é poderoso pra cacete, si liga dada a div:
```
<div (mousemove)="onMouseMove($event)" style="background: red; width: 100px; height: 100px; margin-top: 10px;"></div>
```

a função onMouseMove tem como parâmetro o $event, esse bag ai retorna uma porrada de informação no console, por exemplo a posição do mouse (X, Y) dentro daquela div.
![[Pasted image 20241206151939.png]]

obs importate: o event como parâmetro precisa ser tipado ele vai dar erro se vc deixar vazio e any e mt feio, dentro do console ele vai retornar a tipagem certa.

---
### Two-way binding
*vai e volta*
muda diretamente o valor de uma variavel por isso ele vai e volta tendeu?
```
   <input [(ngModel)]="name">]
   {{ name }}
```

o nome do cara vai estar dentor do input por causa desse ngModel ai quando digitar dentro o valor da variavel vai mudar dentro do código.

obs: tem q importar o '*FormsModule*' no ts.

---
### Diretivas de atributo

![[Pasted image 20241206161755.png]]
é bem parecido com o class binding, a diferença é q vc pode criar um objeto com condicionais e alterar o estilo da div por exemplo por lá.