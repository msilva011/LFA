class MTU
    attr_accessor :fita, :estado, :cursor, :transicoes
  
    def initialize(entrada)
      @fita = entrada.chars + [nil]  # Adiciona nil ao final para marcar o fim da fita
      @estado = 'q0'  # Estado inicial
      @cursor = 0  # Inicia o cursor no início da fita
      @transicoes = {}  # Armazenará as transições definidas pelo módulo específico
    end
  
    def definir_transicoes(transicoes)
      @transicoes = transicoes
    end
  
    def processar
      puts ("-------------------DETALHES---------------")
      while @cursor < @fita.length  # Continua até que o cursor alcance o fim da fita
        char = @fita[@cursor]
        transicao = @transicoes[[@estado, char]]  # Busca a transição para o estado atual e char
  
        break unless transicao  # Se não houver transição definida, interrompe o loop
  
        novo_char, novo_estado, movimento = transicao
  
        puts "Estado atual: #{@estado}, Símbolo: #{char}, Nova transição: #{transicao}"
  
        @fita[@cursor] = novo_char if novo_char  # Substitui o char na fita
        @estado = novo_estado if novo_estado  
        @cursor += (movimento == 'D' ? 1 : -1) if movimento  
  
        puts "Fita atual: #{@fita.join}, Novo estado: #{@estado}, Cursor: #{@cursor}"
  
        break if @estado == 'qf'  # Finaliza se alcançar o estado final
        return false if @estado == 'qr'  # Retorna falso se alcançar o estado de rejeição
      end
  
      @estado == 'qf'  # Retorna true se alcançar o estado final
    end
  end
  