#Para não espalhar pelo sistema um código de atribuicao de livros a uma lista, essa coleção srá encapsulada na biblioteca
#E caso o tipo de coleção qem que os livros são guardados tiver que ser alterada, basta mudar a implementação da biblioteca

#Carregamento da classe centralizadora de classes
require File.expand_path("lib/loja_virtual")
require 'set'

=begin
 == retorna true se os objetos forem a mesma instancia
 equal? mesma coisa do ==, mas utilizado em outros momentos
 eql? este método tambem compara as instancia, mas deve ser sobrescrito para identificar que elas são direfentes  
  
 A classe Set utiliza o método hash e não eql para avaliar o objeto 
  
=end

teste_e_design = Livro.new "Mauricio", "123454", 247, 70.5, :testes
web_responsivo = Livro.new "Tarcio", "452565", 189, 67.9, :web_design

livros = Set.new [teste_e_design, web_responsivo]

for livro in livros do
  puts livro
end
