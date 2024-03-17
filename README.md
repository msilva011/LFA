# Documento

Este código implementa um transdutor Mealy para converter códigos Morse em caracteres. Vou explicar cada parte e depois discutir por que é um transdutor Mealy.

## Apresentação de Slide
https://www.canva.com/design/DAF_ye2Xcx4/mtdpvP-XS6a8U8dfQCZnXw/edit?utm_content=DAF_ye2Xcx4&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

## Modelagem:
O código define uma classe MealyMorseCode que implementa o transdutor Mealy.
O método iniciar inicializa uma lista de dados, onde cada elemento é uma sequência de código Morse.
A classe contém uma série de métodos (q0, q1, ..., q51) que representam os estados do transdutor.

- Q: {q0, q1, q2, ..., q51} - conjunto de estados representados pelos métodos q0 a q51.
- Σ: {'.' (ponto), '-' (traço)} - alfabeto de entrada que consiste nos símbolos de código Morse.
- δ: Função de transição de estados, implementada pelos métodos de transição de estado (métodos q0, q1, ..., q51).
- q0: Estado inicial, representado pelo método q0.

## Transdutor Mealy:
Este é um transdutor Mealy porque a saída é produzida em resposta à entrada atual e ao estado atual. Cada transição de estado no código imprime uma saída, tornando-o um transdutor Mealy.

## Teoria Envolvida e Escolhas:
Um transdutor Mealy é uma máquina de estados finitos onde as transições de estado são determinadas não apenas pela entrada atual, mas também pela saída atual.
Cada método representa um estado do transdutor, e as transições são baseadas nos símbolos de entrada (pontos, traços, espaços) e nas saídas correspondentes (caracteres).
As escolhas de transição são feitas com base na entrada atual (currentSymbol) e na saída correspondente é impressa diretamente nesse ponto.

## Alfabetos de Entrada e Saída:
Alfabeto de entrada: É composto por pontos (.), traços (-) e espaços (representados implicitamente pelo caso padrão em cada método).
Alfabeto de saída: É composto pelos caracteres correspondentes ao código Morse (representados pelas impressões dos caracteres no método q correspondente).

## Explicação Básica do Código e Funções:
Cada método qX (onde X é um número) representa um estado do transdutor.
Dentro de cada método, há uma série de casos case que correspondem aos diferentes símbolos de entrada possíveis.
Com base no símbolo de entrada atual, o transdutor transita para o próximo estado ou imprime o caractere correspondente e transita para o próximo estado.
O método currentSymbol avança para o próximo símbolo de entrada a ser processado.

