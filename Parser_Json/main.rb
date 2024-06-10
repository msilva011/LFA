class JsonValidator
    attr_reader :stack, :parsed_result
  
    def initialize
      reset_state
    end
  
    # Função que valida múltiplos JSONs separados por '$'.
    def validate(json_string)
      segments = json_string.split('$').map(&:strip)
      outcomes = []
  
      segments.each_with_index do |segment, index|
        begin
          reset_state
          result = parse_segment(segment)
          outcomes << { index: index + 1, result: result, valid: true }
        rescue RuntimeError => e
          outcomes << { index: index + 1, error: e.message, valid: false }
        end
      end
  
      outcomes
    end
  
    private
  
    # Reseta o estado do analisador para processar um novo segmento JSON.
    def reset_state
      @stack = []
      @parsed_result = nil
      @last_key = nil
      @expect_comma = false
    end
  
    # Analisa um segmento JSON individual.
    def parse_segment(segment)
      tokens = tokenize(segment)
      context = []
  
      tokens.each do |token|
        raise "JSON inválido: esperava vírgula" if @expect_comma && token != ',' && token != '}' && token != ']'
  
        case token
        when '{', '['
          @stack.push(token)
          new_structure = token == '{' ? {} : []
          if context.empty?
            @parsed_result = new_structure
          else
            append_to_context(context.last, new_structure)
          end
          context.push(new_structure)
          @expect_comma = false
        when '}', ']'
          raise "JSON inválido" unless matches?(@stack.pop, token)
          context.pop
          @expect_comma = true
        when ':'
          raise "JSON inválido: chave não entre aspas" if @last_key.nil?
          @expect_comma = false
        when ','
          @expect_comma = false
          @last_key = nil
        else
          if context.last.is_a?(Hash)
            if @last_key.nil?
              raise "JSON inválido: chave não entre aspas" unless token =~ /^"(.*)"$/
              @last_key = parse_value(token)
            else
              append_to_context(context.last, parse_value(token, true))
              @expect_comma = true
            end
          else
            append_to_context(context.last, parse_value(token))
            @expect_comma = true
          end
        end
      end
  
      raise "JSON inválido" unless @stack.empty?
      @parsed_result
    end
  
    # Divide a string JSON em tokens.
    def tokenize(segment)
      segment.scan(/[\{\}\[\]]|"(?:\\.|[^"\\])*"|\d+\.?\d*|true|false|null|[:\,]/)
    end
  
    # Analisa o valor de um token.
    def parse_value(token, is_value = false)
      case token
      when /^"(.*)"$/
        $1.gsub(/\\"/, '"')
      when /^\d+\.?\d*$/
        token.to_f % 1 == 0 ? token.to_i : token.to_f
      when 'true', 'false'
        token == 'true'
      when 'null'
        nil
      else
        raise "JSON inválido: valor não entre aspas onde esperado" if is_value
        token
      end
    end
  
    # Adiciona um valor ao contexto atual.
    def append_to_context(context, value)
      if context.is_a?(Array)
        context.push(value)
      elsif @last_key
        context[@last_key] = value
        @last_key = nil
      end
    end
  
    # Verifica se os tokens de abertura e fechamento combinam.
    def matches?(opening, closing)
      (opening == '{' && closing == '}') || (opening == '[' && closing == ']')
    end
  end
  
  begin
    json_input = File.read("input.json")
    validator = JsonValidator.new
    results = validator.validate(json_input)
    results.each do |result|
      if result[:valid]
        puts "JSON #{result[:index]} válido"
        puts result[:result]
      else
        puts "JSON #{result[:index]} inválido: #{result[:error]}"
      end
    end
  rescue RuntimeError => e
    puts "Erro durante a leitura do arquivo: #{e.message}"
  end