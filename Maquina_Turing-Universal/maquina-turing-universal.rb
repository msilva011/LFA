class MTU
  attr_accessor :fita, :estado, :cursor, :estado_leitura, :simbolo_leitura, :estado_destino, :simbolo_escrita,
                :movimento, :transicoes

  # Inicializa o estado inicial e a posição do cursor na fita
  def initialize
    @estado = :qi 
    @cursor = 0
  end

  # Processa a entrada e executa as transições da máquina de Turing
  def processar(entrada)
    @fita = '#' + entrada + '_' * entrada.size * 2 + ' '
    estado_leitura = ''
    simbolo_leitura = ''
    estado_destino = ''
    simbolo_escrita = ''
    movimento = :D
    transicoes = {}
    @fita_cadeia = []

    loop do
      transicao_atual = [@estado, @fita[@cursor]]

      case transicao_atual
      when [:qi, '#']
        executar_operacao('#', :q0, :D)

      when [:q0, 'f']
        estado_leitura << 'f'
        executar_operacao('f', :q1, :D)
      when [:q1, 'a']
        estado_leitura << 'a'
        executar_operacao('a', :q1, :D)
      when [:q1, 'b']
        estado_leitura << 'b'
        executar_operacao('b', :q1, :D)

      when [:q1, '_']
        simbolo_leitura << '_'
        executar_operacao('_', :q2, :D)
      when [:q1, 's']
        simbolo_leitura << 's'
        executar_operacao('s', :q2, :D)
      when [:q2, 'c']
        simbolo_leitura << 'c'
        executar_operacao('c', :q2, :D)

      when [:q2, 'f']
        estado_destino << 'f'
        executar_operacao('f', :q5, :D)
      when [:q5, 'a']
        estado_destino << 'a'
        executar_operacao('a', :q5, :D)
      when [:q5, 'b']
        estado_destino << 'b'
        executar_operacao('b', :q5, :D)

      when [:q5, '_']
        simbolo_escrita << '_'
        executar_operacao('_', :q6, :D)
      when [:q5, 's']
        simbolo_escrita << 's'
        executar_operacao('s', :q6, :D)
      when [:q6, 'c']
        simbolo_escrita << 'c'
        executar_operacao('c', :q6, :D)

      when [:q6, 'd']
        movimento = :D
        executar_operacao('d', :q8, :D)
      when [:q6, 'e']
        movimento = :E
        executar_operacao('e', :q8, :D)

      when [:q8, 'f']
        transicao = [estado_leitura, simbolo_leitura]
        transicoes[transicao] = [simbolo_escrita, estado_destino, movimento]
        puts("Transição lida: (#{estado_leitura},#{simbolo_leitura})->(#{simbolo_escrita},#{estado_destino},#{movimento})")

        estado_leitura = 'f'
        simbolo_leitura = ''
        estado_destino = ''
        simbolo_escrita = ''

        executar_operacao('f', :q1, :D)

      when [:q8, '$']
        transicao = [estado_leitura, simbolo_leitura]
        transicoes[transicao] = [simbolo_escrita, estado_destino, movimento]
        puts("Transição lida: (#{estado_leitura},#{simbolo_leitura})->(#{simbolo_escrita},#{estado_destino},#{movimento})")
        puts("==========================================\n\n")

        puts('---------------Leitura dos símbolos: ----------')

        executar_operacao('$', :q20, :D)
        simbolo_leitura = ''

      when [:q20, '_']
        simbolo_leitura << '_'
        executar_operacao('_', :q21, :D)
      when [:q20, 's']
        simbolo_leitura << 's'
        executar_operacao('s', :q21, :D)
      when [:q21, 'c']
        simbolo_leitura << 'c'
        executar_operacao('c', :q21, :D)

      when [:q21, 's']
        @fita_cadeia << simbolo_leitura
        simbolo_leitura = 's'
        executar_operacao('s', :q21, :D)

      when [:q21, '_']
        @fita_cadeia << simbolo_leitura
        simbolo_leitura = '_'
        executar_operacao('_', :q21, :D)

      when [:q21, ' ']
        @fita_cadeia << simbolo_leitura
        puts("------------- Fita de símbolos: ----------\n")
        print(@fita_cadeia)

        return executar_submaquina(transicoes) 
      else
        puts "(#{estado_leitura},#{simbolo_leitura}) = (#{estado_destino},#{simbolo_escrita},#{movimento})"
        return false
      end
    end
  end

  # Executa a submáquina com as transições lidas
  def executar_submaquina(transicoes)
    estado_mt = 'fa'
    @cursor_le = 0
    # Ajuste de Stella
    loop do
      simbolo_leitura = @fita_cadeia[@cursor_le]
      transicao = [estado_mt, simbolo_leitura]
      puts "(#{estado_mt}, #{simbolo_leitura})"
      resultado = transicoes[transicao]

      if resultado.nil?
        puts 'Finalizando a leitura na máquina principal'
        puts "Estado final da máquina: #{estado_mt}"
        puts "*****************************************\n\n"
        return false
      end

      simbolo_escrita, estado_destino, movimento = resultado
      puts "-> (#{estado_destino},#{simbolo_escrita},#{movimento})"

      estado_mt = estado_destino
      @fita_cadeia[@cursor_le] = simbolo_escrita

      if estado_mt.start_with?('fb')
        puts 'Finalizando a leitura na máquina principal'
        puts "Estado final da máquina: #{estado_mt}"
        puts "*************************************\n\n"
        return true
      end

      @cursor_le += (movimento == :D) ? 1 : -1
    end
  end

  # Realiza operações na fita
  def executar_operacao(escrever, estado, movimento = :D)
    @fita[@cursor] = escrever
    @estado = estado
    @cursor += (movimento == :D) ? 1 : -1
  end

  def fita_com_marca
    fita_dup = @fita.dup
    fita_dup.insert(@cursor, "[")
    fita_dup.insert(@cursor + 1, "]")
    fita_dup
  end

  def fita
    @fita_cadeia
  end

  attr_reader :cursor
end
