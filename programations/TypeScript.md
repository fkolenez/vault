### Instalação:

-  Primeiro verifique no terminal se o node e o npm estão instalados.

```
node -v
v22.11.0

npm -v
10.9.0
```

-  Em seguida instale o typescript globalmente utilizado o parâmetro *-g*.
```
node i -g typescript
```

A arquitetura utilizada nele é a src/dist,
- SRC: contém o código fonte do projeto;
- DIST: contém o código compilado, TS necessita ser compilado para JS, a ==build== é o código que se constrói na SRC então se compila para a dist;

Todo arquivo em TS necessita um arquivo de configuração, para consegui-lo de forma automática basta digitar no terminal:
```
tsc --init
```

---
#### Como compilar um código em TS?
Primeiro é necessário mudar algumas configurações no arquivo criado pelo --init

1.  Mudar o diretório root e o diretório OutRoot

Basta ir no arquivo de configuração e achar em "*Modules*" o rootDir, em seguida mudar o caminho para pasta SRC criada anteriormente:
 "rootDir": "./src"

Para mudar o OutRoot basta fazer a mesma coisa, porém o caminho agora vai ser o especificado no tag script do html, se por exemplo:

    <script src="js/index.js" defer></script>

então o outRoot vai ser: 
"outDir": "./dist/js",

Agora no seu arquivo TS, abra o terminal e digite '*tsc*', então o código será compilado para um arquivo JS e aparecerá na pasta especificada no OutDir.

Para a compilação ser automática:
```
tsc -w
```

Também é possível tirar os comentários automaticamente
Basta descomentar o "RemoveComments"

---
#### Inferência X Annotation

![[Pasted image 20241105185723.png]]
No caso da inferência, apesar de parecer q não estamos utilizando o TS, se vc tentar atribuir um valor (naquele caso especifico) de uma string por exemplo, o compilador não irá permitir.

##### Tipos básicos de declaração
![[Pasted image 20241105193043.png]]
##### Vetores e tuplas
Vetores:
![[Pasted image 20241105194238.png]]

Tuplas:
A diferença pras tuplas é que você tem que seguir a ordem que colocou, mas ela se comporta igual a um vetor:

![[Pasted image 20241105194252.png]]

--- 
#### Tipos específicos do TS

- Object literals: -> {prop: value}
![[Pasted image 20241105194738.png]]

- Any:
Único do TS, aceita qualquer valor, entretanto ela vai contra a filosofia do TS em casos mais específicos que a variável pode receber diferentes tipos de valor utilize o [[#Union Type]].
![[Pasted image 20241106103950.png]]

 - Union Type:
Separe a tipagem por uma *pipe* ( | ), então a variável pode receber os valores da tipagem especificada.
![[Pasted image 20241106104458.png]]

- Alias Type:
Cria-se um tipo para tipagem, em que você pode definir os tipos de variáveis a partir do que foi defino no alias.
![[Pasted image 20241106110156.png]]


-  Enum type:
Imagine que você tem diferentes tamanhos de camisa para uma mesma camisa, ao invés de ficar repetindo: Size:'pequena', Size: 'médio' ou Size: 'Grande' é mais interessante utilizar o enum, que cria algo semelhante a uma lista com diferentes valores para uma mesma variável.
![[Pasted image 20241106110534.png]]

- Literal Types:
Define-se o valor para algum tipo, logo ele não é alterável porque é o próprio tipo.
![[Pasted image 20241106111519.png]]

---
### Funções

A grande pira é tipar oque esta sendo passado por parâmetro.
![[Pasted image 20241106112045.png]]

Oque função retorna também pode ser tipado.
![[Pasted image 20241106113700.png]]

Função sem retorno
![[Pasted image 20241106114245.png]]

Um parâmetro da função pode ser opcional, para isso se adiciona um '?' antes do parâmetro).

Entretanto isso pode gerar erros lógicos como o parâmetro ser printado mesmo sem ser passado, gerando a necessidade de verificar se ele foi de fato passado.
![[Pasted image 20241106114943.png]]

- Interfaces:
Servem para padronizar diferentes tipos para serem reutilizados em diferentes funções.
![[Pasted image 20241106201332.png]]****

- Narrowing:
Checagem de tipos.
![[Pasted image 20241107224659.png]]
- Generico:
Serve para mostrar qualquer tipo, semelhante ao [[#any]], porém é mais especfico
A tipagem para o 'generic' é com esse menor T maior.
![[Pasted image 20241107225218.png]][

Ai tem tudo a piroca de POO, mas vai se fode q eu vou estudar isso em TS

### Conexões importantes

- Fundamentos de linguagem: [[programations/JS/What is JS]]
- Aplicação prática em front-end: [[programations/Angular/Angular]]
- Organização de software e requisitos: [[Faculdade/Eng. Requisitos/Requisitos]]
- Validação de comportamento: [[Faculdade/Testes de qualidade/Definição e importancia]]