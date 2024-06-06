module MtKuroda
    # Estados codificados
    q0 = "fa"        
    q1 = "faa"       
    q2 = "faaa"      
    q3 = "faaaa"     
    q4 = "faaaaa"    
    q5 = "faaaaaa"   
    q6 = "faaaaaaa"  
    q7 = "faaaaaaaa" 
    q8 = "faaaaaaaaa" 
    q9 = "faab"      
    q_a = "fb"  # Estado de aceitação
  
    # Símbolos na fita
    @a = "sc"        
    @x = "scc"       
    @b = "sccc"    
    @y = "scccc"     
    @c = "sccccc"   
    @z = "scccccc"   
    @branco = "_"     
  
    # Movimentos
    esq = "e"        
    dir = "d"    
  
    # a^nb^nc^n
    @d1 = "#{q0}#{@a}#{q1}#{@x}#{dir}"      # (q0, a) -> (q1, x, D)
    @d2 = "#{q1}#{@a}#{q1}#{@a}#{dir}"      # (q1, a) -> (q1, a, D)
    @d3 = "#{q1}#{@b}#{q2}#{@b}#{dir}"      # (q1, b) -> (q2, b, D)
    @d4 = "#{q2}#{@b}#{q2}#{@b}#{dir}"      # (q2, b) -> (q2, b, D)
    @d5 = "#{q2}#{@c}#{q3}#{@c}#{esq}"      # (q2, c) -> (q3, c, E)
    @d6 = "#{q3}#{@b}#{q3}#{@b}#{esq}"      # (q3, b) -> (q3, b, E)
    @d7 = "#{q3}#{@a}#{q3}#{@a}#{esq}"      # (q3, a) -> (q3, a, E)
    @d8 = "#{q3}#{@x}#{q0}#{@x}#{dir}"      # (q3, x) -> (q0, x, D)
    @d9 = "#{q0}#{@b}#{q4}#{@y}#{dir}"      # (q0, b) -> (q4, y, D)
    @d10 = "#{q4}#{@b}#{q4}#{@b}#{dir}"     # (q4, b) -> (q4, b, D)
    @d11 = "#{q4}#{@c}#{q5}#{@c}#{esq}"     # (q4, c) -> (q5, c, E)
    @d12 = "#{q5}#{@b}#{q5}#{@b}#{esq}"     # (q5, b) -> (q5, b, E)
    @d13 = "#{q5}#{@a}#{q5}#{@a}#{esq}"     # (q5, a) -> (q5, a, E)
    @d14 = "#{q5}#{@y}#{q0}#{@y}#{dir}"     # (q5, y) -> (q0, y, D)
    @d15 = "#{q0}#{@c}#{q6}#{@z}#{dir}"     # (q0, c) -> (q6, z, D)
    @d16 = "#{q6}#{@c}#{q6}#{@c}#{dir}"     # (q6, c) -> (q6, c, D)
    @d17 = "#{q6}#{@branco}#{q7}#{@branco}#{esq}" # (q6, _) -> (q7, _, E)
    @d18 = "#{q7}#{@c}#{q7}#{@c}#{esq}"     # (q7, c) -> (q7, c, E)
    @d19 = "#{q7}#{@b}#{q7}#{@b}#{esq}"     # (q7, b) -> (q7, b, E)
    @d20 = "#{q7}#{@a}#{q7}#{@a}#{esq}"     # (q7, a) -> (q7, a, E)
    @d21 = "#{q7}#{@z}#{q0}#{@z}#{dir}"     # (q7, z) -> (q0, z, D)
  
    @d22 = "#{q0}#{@branco}#{q_a}#{@branco}#{dir}" 
  
    def self.linker
      "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}#{@d11}#{@d12}#{@d13}#{@d14}#{@d15}#{@d16}#{@d17}#{@d18}#{@d19}#{@d20}#{@d21}#{@d22}"
    end
  
    def self.codificacao_cadeia
      "#{@a}#{@a}#{@a}#{@b}#{@b}#{@b}#{@c}#{@c}#{@c}"
    end
  end
  