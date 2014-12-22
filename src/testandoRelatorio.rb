require File.expand_path("lib/loja_virtual")

biblioteca = Biblioteca.new

teste_e_design = Livro.new "Mauricio", "Teste e design", "123454", 247, 70.5, :testes
web_responsivo = Livro.new "Tarcio", "Web responsivo", "452565", 189, 67.9, :web_design

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_responsivo

relatorio = Relatorio.new biblioteca

puts relatorio.total
puts relatorio.titulos

#Guardando uma proc em uma variavel
imprime_livro_no_console = Proc.new do |livro|
  p livro.autor
end

#É o & que indica que estamos passando uma Proc como parametro, se ele não for utilizado, estoura um erro de quantidade parametros no método
puts biblioteca.livros_por_categoria_com_proc :testes, &imprime_livro_no_console

imprime_no_console = lambda do |livro|
  p livro.autor
end

#Lambda pode ser utilizado quase que como uma Proc
puts biblioteca.livros_por_categoria_com_proc :testes, &imprime_livro_no_console
