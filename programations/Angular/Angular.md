### instalação e criação da build:
```
npm install -g @angular/cli

ng new <nome do projeto>
```

para abrir o projeto no localhost
```
ng serve
```

dai só abrir o localhost na porta q o bag liberar, pra alterar a página padrão, só exclua tudo no arquivo *app.component.html*

### Estrutura do Angular:

-  node_modules: dependências do projetos;
-  src: aonde será programado o código;
- src/app: pasta principal para os componentes, services, etc;
- Os componentes são divididos em partes: TS, HTML, CSS e testes.

### Criando um componente

ng generate component (diretório components)/(nome do componente)
```
ng g c components/first-component
```

para usar ele tem que pegar o seletor dele, que esta dentro do arquivo .ts dentro do @component,
ai ir em app.components.ts importar ele, e colocar o seletor dele como uma tag html dentro do template

```
import { FirstComponentComponent } from './components/first-component/first-component.component';

imports: [RouterOutlet, FirstComponentComponent],

template: `
  <app-first-component/>
  `
```

Um componente é uma unidade de código responsável por uma única tarefa ou funcionalidade. Ele é composto por três partes principais:  

- **Template:** É o código HTML que define a interface visual do componente.
    
- **Estilo:** É o código CSS que define o estilo visual do componente. [[Estilos no Angular]]
    
- **Classe:** É a classe Java Script que define a lógica de funcionamento do componente.

























[[Template]]