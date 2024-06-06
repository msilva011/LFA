# Projeto Máquina de Turing Universal (MTU)

Este projeto implementa uma Máquina de Turing Universal que pode processar e reconhecer linguagens livre de contexto e sensíveis ao contexto, especificamente as linguagens $a^n b^n$ e $a^n b^n c^n$. A implementação é feita em Ruby e utiliza arquivos para ler os códigos das máquinas de Turing específicas.

### Apresentação Slide
[Apresentação](https://www.canva.com/design/DAGG8HXMxNA/54PWsCryOPiR9tlInNkitQ/edit?utm_content=DAGG8HXMxNA&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)


## Estrutura do Código

A classe `MTU` é a principal componente deste projeto. Abaixo está uma descrição de suas principais funcionalidades:

### Atributos

- `fita`: Representa a fita da MTU.
- `estado`: Estado atual da MTU.
- `cursor`: Posição atual do cursor na fita.
- `estado_leitura`, `simbolo_leitura`, `estado_destino`, `simbolo_escrita`, `movimento`, `transicoes`: Variáveis para armazenar as transições durante o processamento.

### Métodos

- `initialize`: Inicializa a MTU com o estado e cursor iniciais.
- `processar(entrada)`: Processa a entrada lida da fita.
- `submaquina(transicoes)`: Executa as transições lidas em uma submáquina.
- `operar(escrever, estado, movimento)`: Realiza operações de escrita e movimentação na fita.
- `fita_com_marca`: Retorna a fita com a posição atual do cursor marcada.
- `fita`: Retorna a fita atual.

## Execução

Para executar a MTU, siga as etapas abaixo:

1. Inicialize a MTU:
    ```ruby
    mtu = MTU.new
    ```

2. Carregue a entrada e processe-a:
    ```ruby
    entrada = 'sua_entrada_aqui'
    mtu.processar(entrada)
    ```

3. Acompanhe a saída na fita:
    ```ruby
    puts mtu.fita
    ```

## Exemplo de Uso

Abaixo está um exemplo de como utilizar a MTU para processar uma entrada específica:

```ruby
mtu = MTU.new
entrada = 'fabcd' # Exemplo de entrada
mtu.processar(entrada)
puts mtu.fita
