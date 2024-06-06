# Definição dos estados não finais
q0 = "aa"
q1 = "aaaa"
q2 = "aaaaaa"
q3 = "aaaaaaaa"

# Definição do estado final
q4 = "a"

@b = "ba"

@x = "bbba"
@y = "bbbbbba"

# Movimentação do cursor
esq = "c"
dir = "cc"

# Transições
@d1 = "#{q0}#{@x}#{q1}#{@b}#{dir}"    # (q0, x) = (q1, _, dir)
@d2 = "#{q1}#{@x}#{q1}#{@x}#{dir}"    # (q1, x) = (q1, x, dir)
@d3 = "#{q1}#{@y}#{q1}#{@y}#{dir}"    # (q1, y) = (q1, y, dir)
@d4 = "#{q1}#{@b}#{q2}#{@b}#{esq}"    # (q1, _) = (q2, _, esq)
@d5 = "#{q2}#{@y}#{q3}#{@b}#{esq}"    # (q2, y) = (q3, _, esq)
@d6 = "#{q3}#{@x}#{q3}#{@x}#{esq}"    # (q3, x) = (q3, x, esq)
@d7 = "#{q3}#{@y}#{q3}#{@y}#{esq}"    # (q3, y) = (q3, y, esq)
@d8 = "#{q3}#{@b}#{q0}#{@b}#{dir}"    # (q3, _) = (q0, _, dir)
@d9 = "#{q2}#{@b}#{q4}#{@b}#{dir}"    # (q2, _) = (q4, _, dir)
@d10 = "#{q0}#{@b}#{q4}#{@b}#{dir}"   # (q0, _) = (q4, _, dir)

def linker 
  "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}"
end

def codificacao_cadeia 
  "#{@x}#{@x}#{@x}#{@y}#{@y}"
end
