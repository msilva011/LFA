module Anbn
  q0 = "fa"        
  q1 = "faa"       
  q2 = "faaa"      
  q3 = "faaaa"     
  q4 = "faab"      
  q5 = "fb"        

  @a = "sc"        
  @x = "scc"       
  @b = "sccc"      
  @y = "scccc"     
  @branco = "_"     

  esq = "e"        
  dir = "d"        

  @d1 = "#{q0}#{@a}#{q1}#{@x}#{dir}"    
  @d2 = "#{q1}#{@a}#{q1}#{@a}#{dir}"    
  @d3 = "#{q1}#{@b}#{q2}#{@b}#{esq}"    
  @d4 = "#{q2}#{@a}#{q2}#{@a}#{esq}"    
  @d5 = "#{q2}#{@x}#{q0}#{@x}#{dir}"    
  @d6 = "#{q0}#{@b}#{q3}#{@y}#{dir}"    
  @d7 = "#{q3}#{@b}#{q3}#{@b}#{dir}"    
  @d8 = "#{q3}#{@branco}#{q4}#{@branco}#{esq}"  
  @d9 = "#{q4}#{@y}#{q4}#{@y}#{esq}"    
  @d10 = "#{q4}#{@x}#{q5}#{@x}#{dir}"   

  def self.linker
    "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}"
  end

  def self.codificacao_cadeia
    "#{@a}#{@a}#{@a}#{@b}#{@b}#{@b}"
  end
end
