## estados não finais 
## a^{2(i+1)}
#anbncn

q0 = "aa"
q1 = "aaaa"
q2 = "aaaaaa"
q3 = "aaaaaaaa"
q4 = "aaaaaaaaaa"

## estados finais
## a^{2i + 1}
q5 = "aaaaaaaaaaa" 

# símbolo branco
@b = "ba"

@x = "bbba"
@y = "bbbbbba"
@z = "bbbbbbbbba"
@X = "bbbbbbbbbbbba"
@Y = "bbbbbbbbbbbbbbba"
@Z = "bbbbbbbbbbbbbbbbbba"

## movimentacao do cursor
esq = "c"
dir = "cc"

# transição d(qi,sm) = (qj,sn,E)
## Máquina de Turing que aceita x^n y^n
@d1 = "#{q0}#{@x}#{q1}#{@X}#{dir}"
@d2 = "#{q1}#{@x}#{q1}#{@x}#{dir}"
@d3 = "#{q1}#{@Y}#{q1}#{@Y}#{dir}"
@d4 = "#{q1}#{@y}#{q2}#{@Y}#{dir}"
@d5 = "#{q2}#{@y}#{q2}#{@y}#{dir}"
@d6 = "#{q2}#{@Z}#{q2}#{@Z}#{dir}"
@d7 = "#{q2}#{@z}#{q3}#{@Z}#{esq}"
@d8 = "#{q3}#{@x}#{q3}#{@x}#{esq}"
@d9 = "#{q3}#{@Y}#{q3}#{@Y}#{esq}"
@d10 = "#{q3}#{@y}#{q3}#{@y}#{esq}"
@d11 = "#{q3}#{@Z}#{q3}#{@Z}#{esq}"
@d12 = "#{q3}#{@X}#{q0}#{@X}#{dir}"
@d13 = "#{q0}#{@Y}#{q4}#{@Y}#{dir}"
@d14 = "#{q4}#{@Y}#{q4}#{@Y}#{dir}"
@d15 = "#{q4}#{@Z}#{q4}#{@Z}#{dir}"
@d16 = "#{q4}#{@b}#{q5}#{@b}#{dir}"

def linker
  "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}#{@d11}#{@d12}#{@d13}#{@d14}#{@d15}#{@d16}"
end

def codificacao_cadeia
  "#{@x}#{@x}#{@y}#{@y}#{@z}#{@z}#{@b}"
end