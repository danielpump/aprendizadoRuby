require File.expand_path "lib/loja_virtual"

#Todas as classes estendem a classe Object
puts String.superclass

livro = Livro.new "Daniel", "Teste de herança", "5", 35, 200.0, :minha
dvd = DVD.new "Testes", 50.0, :testes

puts livro.valor_com_desconto
puts dvd.valor_com_desconto
