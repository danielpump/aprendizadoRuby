=begin
  High-order functions são funções que recebem ou retornam outras funções, isso é feito utilizando blocos, lambdas ou procs
  bloco: Bloco é o meio mais comum de funções high-order
  lambda: Ou função anonima, é guardado em uma variavel as possui uma checagemde parametros quando utilizado em um método. A chamada
  do return em um lambda volta o método para a sua execução normal e suporta um return especifico, pois se comporta como um método
  proc: Executa um bloco de código, mas pode ser passado como argumento e/ou atribuido a uma variavel, a grande vantagem em relação a proc, é o
  reaproveitamento de funções. A chamada do return em uma proc devolve o retorno da proc para quem a chamou
=end
require File.expand_path("lib/loja_virtual")

#Bloco

#Neste caso é passado um bloco de codigo como argumento para o método each, internamente ele executa este bloco para cada item da lista
numeros = [1,2,3,4]
numeros.each{|numero| p numero} 

#Outro método que recebem um bloco de código como argumento
numeros_ao_quadrado = numeros.collect { |numero| numero ** 2 }
p numeros_ao_quadrado

biblioteca = Biblioteca.new

teste_e_design = Livro.new "Mauricio", "123454", 247, 70.5, :testes
web_responsivo = Livro.new "Tarcio", "452565", 189, 67.9, :web_design

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_responsivo

#Essa flexibilização para passar blocos de código, permite qualquer tipo de implementação e facilita a reutilização de métodos
retorno = biblioteca.livros_por_categoria :testes do |livro|
  p livro.autor#Isso não é a execução da lista, na verdade foi passado como parametro para que o yield execute este bloco de código
end

puts retorno #Esse é o retorno do método


