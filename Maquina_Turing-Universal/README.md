# Projeto Máquina de Turing Universal (MTU)

Este projeto implementa uma Máquina de Turing Universal que pode processar e reconhecer linguagens livre de contexto e sensíveis ao contexto, especificamente as linguagens $a^n b^n$ e $a^n b^n c^n$. A implementação é feita em Ruby e utiliza arquivos para ler os códigos das máquinas de Turing específicas.

## Funcionalidades

- **Reconhecimento de Linguagem Livre de Contexto**: A máquina pode reconhecer e validar sequências do tipo $a^n b^n$, onde o número de 'a's é igual ao número de 'b's.
- **Reconhecimento de Linguagem Sensível ao Contexto**: A máquina também pode reconhecer e validar sequências do tipo $a^n b^n c^n$, onde o número de 'a's, 'b's, e 'c's são iguais.
- **Leitura de Configuração de Máquina de Arquivo**: O código da máquina de Turing (MT) é lido de um arquivo, permitindo flexibilidade na configuração e teste de diferentes máquinas de Turing.

## Estrutura do Projeto

O projeto é composto por vários módulos e classes principais:

- `CodificacaoAnBn`: Módulo com as transições para a máquina de Turing que processa $a^n b^n$.
- `CodificacaoAnBnCn`: Módulo com as transições para a máquina de Turing que processa $a^n b^n c^n$.
- `MTU`: Classe que implementa a máquina de Turing Universal. Lê a entrada, aplica as transições definidas nos módulos e determina se a cadeia é aceita ou rejeitada.

## Panorâma Geral

A Máquina de Turing Universal (MTU) é capaz de simular outras Máquinas de Turing com base em transições definidas.

- `Simulação de Outras Máquinas de Turing:` A classe MTU é projetada para ser uma plataforma que pode adaptar seu comportamento para simular diferentes Máquinas de Turing. Isso é alcançado através da definição de transições que são especificadas em módulos separados, como CodificacaoAnBn e CodificacaoAnBnCn. Cada módulo define um conjunto específico de regras de transição que correspondem ao comportamento de uma Máquina de Turing particular para uma linguagem específica.

- `Processamento de Cadeias de Entrada:` A classe MTU toma uma cadeia de entrada, a transforma em uma lista de caracteres, e processa essa lista de acordo com as regras de transição definidas. O processamento ocorre em um loop que continua até que não haja mais transições aplicáveis ou até que a máquina atinja um estado de aceitação (qf) ou rejeição (qr).

- `Verificação de Aceitação:` Durante o processamento, a máquina verifica ativamente se a cadeia de entrada é aceita pela máquina simulada. A cadeia é considerada aceita se, ao final do processamento, a máquina estiver no estado de aceitação (qf). Se a máquina alcançar o estado de rejeição (qr), ou se não houver mais transições aplicáveis, a cadeia é considerada não aceita.
