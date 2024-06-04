module CodificacaoAnBn
    def configurar
      transicoes = {
        ['q0', 'a'] => ['X', 'q1', 'D'],  # Substitui 'a' por 'X' e vai para q1
        ['q0', 'X'] => ['X', 'q0', 'D'],  # Passa pelos 'X'
        ['q0', 'Y'] => ['Y', 'q0', 'D'],  # Passa pelos 'Y'
        ['q0', nil] => [nil, 'qf', nil],  # Aceita se todos os 'a's e 'b's foram processados
        ['q0', 'b'] => [nil, 'qr', nil],  # Rejeita se encontrar 'b' no estado q0
        ['q1', 'a'] => ['a', 'q1', 'D'],  # Continua à direita passando pelos 'a's
        ['q1', 'Y'] => ['Y', 'q1', 'D'],  # Continua à direita passando pelos 'Y's
        ['q1', 'b'] => ['Y', 'q2', 'L'],  # Substitui 'b' por 'Y' e volta para a esquerda
        ['q1', nil] => [nil, 'qr', nil],  # Rejeita se encontrar o fim da fita no estado q1
        ['q2', 'a'] => ['a', 'q2', 'L'],  # Continua à esquerda passando pelos 'a's
        ['q2', 'X'] => ['X', 'q2', 'L'],  # Continua à esquerda passando pelos 'X's
        ['q2', 'Y'] => ['Y', 'q2', 'L'],  # Continua à esquerda passando pelos 'Y's
        ['q2', nil] => [nil, 'qr', nil],  # Rejeita se encontrar o fim da fita no estado q2
        ['q2', 'X'] => ['X', 'q0', 'D'],  # Encontra 'X' e volta ao estado q0 para recomeçar
      }
      definir_transicoes(transicoes)
    end
  end
  
  
  module CodificacaoAnBnCn
    def configurar
      transicoes = {
        ['q0', 'a'] => ['X', 'q1', 'D'],  # Substitui 'a' por 'X' e vai para q1
        ['q0', 'X'] => ['X', 'q0', 'D'],  # Passa pelos 'X'
        ['q0', 'Y'] => ['Y', 'q0', 'D'],  # Passa pelos 'Y'
        ['q0', 'Z'] => ['Z', 'q0', 'D'],  # Passa pelos 'Z'
        ['q0', nil] => [nil, 'qf', nil],  # Aceita se todos os 'a's, 'b's e 'c's foram processados
        ['q1', 'a'] => ['a', 'q1', 'D'],  # Continua à direita passando pelos 'a's
        ['q1', 'X'] => ['X', 'q1', 'D'],  # Continua à direita passando pelos 'X's
        ['q1', 'b'] => ['Y', 'q2', 'D'],  # Substitui 'b' por 'Y' e vai para q2
        ['q1', 'Y'] => ['Y', 'q1', 'D'],  # Continua à direita passando pelos 'Y's
        ['q1', 'Z'] => ['Z', 'q1', 'D'],  # Continua à direita passando pelos 'Z's
        ['q1', nil] => [nil, 'qr', nil],  # Rejeita se encontrar o fim da fita no estado q1
        ['q2', 'b'] => ['b', 'q2', 'D'],  # Continua à direita passando pelos 'b's
        ['q2', 'Y'] => ['Y', 'q2', 'D'],  # Continua à direita passando pelos 'Y's
        ['q2', 'c'] => ['Z', 'q3', 'L'],  # Substitui 'c' por 'Z' e volta para q3
        ['q2', 'Z'] => ['Z', 'q2', 'D'],  # Continua à direita passando pelos 'Z's
        ['q2', nil] => [nil, 'qr', nil],  # Rejeita se encontrar o fim da fita no estado q2
        ['q3', 'Y'] => ['Y', 'q3', 'L'],  # Continua à esquerda passando pelos 'Y's
        ['q3', 'b'] => ['b', 'q3', 'L'],  # Continua à esquerda passando pelos 'b's
        ['q3', 'X'] => ['X', 'q0', 'D'],  # Encontra 'X' e volta ao estado q0 para recomeçar
        ['q3', 'Z'] => ['Z', 'q3', 'L'],  # Continua à esquerda passando pelos 'Z's
        ['q3', 'a'] => ['a', 'q3', 'L'],  # Continua à esquerda passando pelos 'a's
        ['q3', nil] => [nil, 'qr', nil],  # Rejeita se encontrar o fim da fita no estado q3
      }
      definir_transicoes(transicoes)
    end
  end
  