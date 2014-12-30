#Para acessar um modulo deve utilizar o operador ::(Constant lookup)
require File.expand_path "lib/loja_virtual"
#lista = VendaFacil::Set.new


livro = Livro.new "Daniel", "Teste de herança", "5", 35, 200.0, :minha

puts livro.valor_formatado

dvdComMixing = DVD.new "Testes com", 50.0, :testesCom
dvdSemMixing = DVD.new "Testes sem", 50.0, :testesSem

dvdComMixing extends FormatadorMoeda#Isso garante que apenas esse objeto possa utilizar o Mixing o outro continua sem este comportamento
puts dvdComMixing.valor_formatado
