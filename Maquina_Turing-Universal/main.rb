require_relative 'maquina-turing-universal'
require_relative 'mt-codificada'

entrada = File.read('anbn.txt').strip
mt = MTU.new(entrada)

if entrada.include?('c')
  mt.extend(CodificacaoAnBnCn)
  mt.configurar
else
  mt.extend(CodificacaoAnBn)
  mt.configurar
end

result = mt.processar
puts ("================Resultados==============")
puts "Entrada:\n #{entrada}"
puts "Aceita? #{result}"
puts "Fita Resultante:\n #{mt.fita.join}"
puts "Cursor parou em #{mt.cursor}"
puts "Cursor no estado #{mt.estado}"
puts "Cursor está lendo \"#{mt.fita[mt.cursor] || 'nil'}\""
