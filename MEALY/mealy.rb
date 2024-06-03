class MealyMorseCode
    def currentSymbol
      @index += 1
      if @index < @symbols.count
        @symbols[@index]
      else 
        ''
      end
    end 
  
    def iniciar
      @data = [
        '--- .-.. .- / -- ..- -. -.. --- ',
        '.--- --- --. .- -.. --- .-. / -.. . / .-.. --- .-.. / -. .- --- / .--. .- ... ... .- / -.. --- / ... . --. ..- -. -.. --- / ... . -- . ... - . ',
        '. ..- / -.-. --- -. ..-. .. . .. / . -- / ...- --- -.-. . --..-- / .- -. .- -.- .. -. ',
        '........... -------- ......'
      ]
      @data.each do |code|
        @symbols = code.split(//)
        @index = -1
        q0
        puts 'código original: ' << code
        puts
      end
    end
  
    def q0
      case currentSymbol 
      in '.' then q1
      in '/' then q2
      in '-' then q3
      else
        puts ''
      end
    end
  
    def q1
      case currentSymbol 
      in '.' then q4
      in '-' then q5
      in ' ' then (print "e"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q2
      case currentSymbol 
      in ' ' then (print " "; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q3
      case currentSymbol 
      in '.' then q6
      in '-' then q7
      in ' ' then (print "t"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q4
      case currentSymbol 
      in '.' then q8
      in '-' then q9
      in ' ' then (print "i"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q5
      case currentSymbol 
      in '.' then q10
      in '-' then q11
      in ' ' then (print "a"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q6
      case currentSymbol 
      in '.' then q12
      in '-' then q13
      in ' ' then (print "n"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q7
      case currentSymbol 
      in '.' then q14
      in '-' then q15
      in ' ' then (print "m"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q8
      case currentSymbol 
      in '.' then q16
      in '-' then q17
      in ' ' then (print "s"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q9
      case currentSymbol 
      in '.' then q18
      in '-' then q19
      in ' ' then (print "u"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q10
      case currentSymbol 
      in '.' then q20
      in '-' then q21
      in ' ' then (print "r"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q11
      case currentSymbol 
      in '.' then q22
      in '-' then q23
      in ' ' then (print "w"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q12
      case currentSymbol 
      in '.' then q24
      in '-' then q25
      in ' ' then (print "d"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q13
      case currentSymbol 
      in '.' then q26
      in '-' then q27
      in ' ' then (print "k"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q14
      case currentSymbol 
      in '.' then q28
      in '-' then q29
      in ' ' then (print "g"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q15
      case currentSymbol 
      in '.' then q30
      in '-' then q31
      in ' ' then (print "o"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q16
      case currentSymbol 
      in '.' then q32
      in '-' then q33
      in ' ' then (print "h"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q17
      case currentSymbol 
      in '-' then q34
      in ' ' then (print "v"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q18
      case currentSymbol 
      in '.' then q35
      in ' ' then (print "f"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q19
      case currentSymbol 
      in '.' then q36
      in '-' then q37
      else
        puts 'código inválido'
      end
    end
  
    def q20
      case currentSymbol 
      in ' ' then (print "l"; q0)
      else
        puts 'código inválido'
      end
    end
  
    def q21
      case currentSymbol 
      in '.' then q38
      else
        puts 'código inválido'
      end
    end
  
    def q22
      case currentSymbol  
      in '-' then q39
      in ' ' then
        print "p"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q23
      case currentSymbol       
      in '-' then q23
      in ' ' then
        print "j"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q24
      case currentSymbol 
      in '.' then q41
      in ' ' then
        print "b"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q25
      case currentSymbol 
      in ' ' then
        print "x"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q26
      case currentSymbol 
      in ' ' then
        print "c"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q27
      case currentSymbol 
      in ' ' then
        print "y"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q28
      case currentSymbol 
      in '.' then q42
      in '-' then q43
      in ' ' then
        print "z"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q29
      case currentSymbol 
      in '-' then q44
      in ' ' then
        print "q"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q30
      case currentSymbol 
      in '.' then q45
      else
        puts 'código inválido'
      end
    end
  
    def q31
      case currentSymbol 
      in '.' then q46
      in '-' then q47
      else
        puts 'código inválido'
      end
    end
  
    def q32
      case currentSymbol 
      in ' ' then
        print "5"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q33
      case currentSymbol 
      in ' ' then
        print "4"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q34
      case currentSymbol 
      in ' ' then
        print "v"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q35
      case currentSymbol 
      in ' ' then
        print "é"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q36
      case currentSymbol 
      in '.' then q48
      else
        puts 'código inválido'
      end
    end
  
    def q37
      case currentSymbol 
      in ' ' then
        print "2"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q38
      case currentSymbol 
      in '-' then q49
      else
        puts 'código inválido'
      end
    end
  
    def q39
      case currentSymbol 
      in ' ' then
        print "á"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q40
      case currentSymbol 
      in ' ' then
        print "1"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q41
      case currentSymbol 
      in '-' then q50
      in ' ' then
        print "6"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q42
      case currentSymbol 
      in ' ' then
        print "7"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q43
      case currentSymbol 
      in '-' then q51
      else
        puts 'código inválido'
      end
    end
  
    def q44
      case currentSymbol 
      in ' ' then
        print "ñ"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q45
      case currentSymbol 
      in ' ' then
        print "8"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q46
      case currentSymbol 
      in ' ' then
        print "9"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q47
      case currentSymbol 
      in ' ' then
        print "0"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q48
      case currentSymbol 
      in ' ' then
        print "?"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q49
      case currentSymbol 
      in ' ' then
        print "."
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q50
      case currentSymbol 
      in ' ' then
        print "-"
        q0
      else
        puts 'código inválido'
      end
    end
  
    def q51
      case currentSymbol 
      in ' ' then
        print ","
        q0
      else
        puts 'código inválido'
      end
    end
    
  end
  
  t = MealyMorseCode.new
  t.iniciar