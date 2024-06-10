# Projeto Máquina de Turing Universal (MTU)

Este projeto implementa uma Máquina de Turing Universal que pode processar e reconhecer linguagens livre de contexto e sensíveis ao contexto, especificamente as linguagens $a^n b^n$ e $a^n b^n c^n$. A implementação é feita em Ruby e utiliza arquivos para ler os códigos das máquinas de Turing específicas.

### Apresentação Slide
[Apresentação](https://www.canva.com/design/DAGG8HXMxNA/54PWsCryOPiR9tlInNkitQ/edit?utm_content=DAGG8HXMxNA&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)


## Descrição do Funcionamento

A Máquina de Turing Universal simulada neste projeto opera com base em uma série de estados e transições que manipulam uma fita infinita de símbolos. Cada operação depende do estado atual da máquina e do símbolo sob o cursor na fita.

### Componentes da Máquina

- **Fita**: Sequência de símbolos que a máquina lê e escreve. A fita é inicialmente preenchida com o input do usuário e símbolos de preenchimento.
- **Cursor**: Aponta para a posição atual na fita que está sendo lida ou escrita.
- **Estado**: Representa a condição atual da máquina, que determina a próxima ação com base no símbolo lido.
- **Transições**: Regras definidas que descrevem as ações da máquina (escrever, mover o cursor, mudar de estado) com base no estado e no símbolo atual.

### Fluxo de Processamento

1. **Inicialização**: A fita é preparada com a entrada do usuário, e o cursor é posicionado no início.
2. **Leitura e Transição**: A máquina lê o símbolo na posição do cursor e consulta a tabela de transições para determinar a ação apropriada.
3. **Execução da Ação**: A máquina executa a ação, que pode ser escrever um novo símbolo na fita, mover o cursor para a esquerda ou direita, ou mudar o estado da máquina.
4. **Repetição**: O processo se repete até que a máquina alcance um estado de parada ou finalize todas as transições previstas.

### Execução de Submáquinas

Algumas transições podem invocar uma submáquina, permitindo a modularização e execução de tarefas específicas como parte do processo maior. Isso é útil para testar componentes isolados ou para construir máquinas mais complexas a partir de simples.

## Visualizando o Estado da Fita

Durante e após a execução, o estado atual da fita pode ser visualizado para entender as modificações feitas pela máquina. A fita é exibida com marcações que indicam a posição do cursor.

