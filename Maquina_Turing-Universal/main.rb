require_relative 'mt-universal'
require_relative 'anbn'

# Função para ler o conteúdo do arquivo
def arquivo_entrada(input)
  File.read(input).strip
end

# Nome do arquivo contendo a entrada
input = 'input.txt'
entrada = arquivo_entrada(input)
entrada = linker + "$" + entrada

mt = MTU.new

puts "Entrada:\n #{entrada}"
puts "Decidiu? #{mt.processar(entrada)}"
puts "Fita Resultante:\n #{mt.fita}"
puts "Cursor parou em #{mt.cursor}"
puts "Cursor no estado #{mt.estado}"
puts "Cursor está lendo \"#{mt.fita[mt.cursor]}\""