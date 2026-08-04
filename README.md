# Vault Sync Hub

Este repositório funciona como um ponto central para organizar e sincronizar dois ambientes distintos:

- uma pasta com os arquivos de anotações pessoais e estudos;
- outra pasta com uma wiki estruturada, pensada para ser consultada e mantida por um modelo de IA.

A ideia é manter a parte de estudo e a parte de organização/consulta separadas, mas conectadas, para que o conteúdo possa ser usado de forma mais limpa e escalável.

## Estrutura do repositório

### 1. my-vault

Pasta principal para os seus arquivos de anotação e estudo.

Aqui ficam os conteúdos mais livres e pessoais, como:

- anotações de aula;
- resumos;
- materiais de disciplinas;
- arquivos de estudo e referências;
- notas diversas sem estrutura rígida.

Em resumo, esta pasta é o seu "campo de conhecimento bruto".

### 2. AI-wiki

Pasta dedicada ao sistema de wiki e instruções para uso com IA.

Ela contém:

- instruções de operação para o modelo;
- arquivos de configuração para orientar a IA;
- templates e scripts;
- a estrutura da wiki de conhecimento.

Em resumo, esta pasta é o "motor de organização e consulta" para transformar o conteúdo do vault em uma base de conhecimento mais útil.

## Qual é a finalidade da sincronização?

A sincronização entre essas pastas serve para:

- manter suas anotações em um lugar claro e organizado;
- permitir que a IA use a wiki como base de consulta;
- separar o conteúdo bruto do conteúdo estruturado;
- evitar misturar instruções operacionais com notas de estudo.

Ou seja, o fluxo ideal é:

1. você escreve e organiza suas anotações em my-vault;
2. a IA usa a estrutura presente em AI-wiki para interpretar, organizar e consultar esse conhecimento;
3. a wiki evolui com base nas informações disponíveis, sem poluir o conteúdo principal de estudo.

## Como usar a IA com a wiki de consulta

A pasta AI-wiki foi preparada para que um modelo de IA possa usar as instruções e a estrutura da wiki de forma disciplinada.

### Arquivos principais de instrução

- [AI-wiki/instructions.md](AI-wiki/instructions.md) — instruções operacionais para o uso do wiki.
- [AI-wiki/AGENTS.md](AI-wiki/AGENTS.md) — orientações para agentes/assistentes.
- [AI-wiki/README.md](AI-wiki/README.md) — visão geral da wiki e do fluxo de uso.

### Caminho recomendado para uso

Use a IA apontando para os seguintes caminhos:

- [AI-wiki/instructions.md](AI-wiki/instructions.md)
- [AI-wiki/AGENTS.md](AI-wiki/AGENTS.md)
- [AI-wiki/wiki](AI-wiki/wiki)

Esses arquivos dizem ao modelo como agir, como organizar o conhecimento e como consultar a base.

## Exemplos de prompts para usar com a IA

### 1. Organizar conteúdo

Prompt exemplo:

> Leia os arquivos em [my-vault](my-vault) e use as instruções de [AI-wiki/instructions.md](AI-wiki/instructions.md) para organizar os conceitos principais em páginas da wiki.

### 2. Criar ou atualizar páginas

Prompt exemplo:

> Use [AI-wiki/AGENTS.md](AI-wiki/AGENTS.md) para criar ou atualizar páginas na wiki com base nos materiais de [my-vault](my-vault).

### 3. Consultar a wiki

Prompt exemplo:

> Consulte a wiki em [AI-wiki/wiki](AI-wiki/wiki) e responda com base nos conteúdos já organizados, apontando as páginas mais relevantes.

### 4. Fazer uma análise ou síntese

Prompt exemplo:

> Faça uma síntese conectando os principais temas presentes em [my-vault](my-vault) e registre a resposta na wiki em [AI-wiki/wiki](AI-wiki/wiki).

## Fluxo recomendado de uso

1. Coloque ou atualize suas anotações em [my-vault](my-vault).
2. Peça à IA para ler o conteúdo e seguir as instruções de [AI-wiki/instructions.md](AI-wiki/instructions.md).
3. A IA organiza e atualiza a wiki em [AI-wiki/wiki](AI-wiki/wiki).
4. Você consulta a wiki para obter respostas mais estruturadas e reutilizáveis.

## Recomendação prática

Use o repositório assim:

- [my-vault](my-vault) para guardar conhecimento e estudo;
- [AI-wiki](AI-wiki) para transformar esse conhecimento em uma base consultável pela IA.

Se quiser, no futuro posso também montar um README mais bonito e mais detalhado para cada uma dessas pastas separadamente.
