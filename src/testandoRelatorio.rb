require File.expand_path("lib/loja_virtual")

biblioteca = Biblioteca.new

teste_e_design = Livro.new "Mauricio", "Teste e design", "123454", 247, 70.5, :testes
web_responsivo = Livro.new "Tarcio", "Web responsivo", "452565", 189, 67.9, :web_design

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_responsivo

relatorio = Relatorio.new biblioteca

puts relatorio.total
puts relatorio.titulos