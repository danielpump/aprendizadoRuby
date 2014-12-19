#Para não espalhar pelo sistema um código de atribuicao de livros a uma lista, essa coleção srá encapsulada na biblioteca
#E caso o tipo de coleção qem que os livros são guardados tiver que ser alterada, basta mudar a implementação da biblioteca

#Carregamento da classe centralizadora de classes
require File.expand_path("lib/loja_virtual")

biblioteca = Biblioteca.new

teste_e_design = Livro.new "Mauricio", "123454", 247, 70.5, :testes
web_responsivo = Livro.new "Tarcio", "452565", 189, 67.9, :web_design

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_responsivo

puts biblioteca.livros

#Percorrendo os livros
for livro in biblioteca.livrosComoLista do
  puts "Chamando no for #{livro}"
end

#Percorrendo o hash de livros
for categoria, livros in biblioteca.livros do
  puts "Categoria #{categoria}"
  for livro in livros do
      puts "Autor #{livro.autor}"
  end
    
end

