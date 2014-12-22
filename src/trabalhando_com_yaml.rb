require 'yaml'
require File.expand_path("lib/loja_virtual")

teste_e_design = Livro.new "Mauricio", "Teste e design", "123454", 247, 70.5, :testes

objeto_serializado = YAML.dump teste_e_design

puts objeto_serializado

livro_deserializado = YAML.load objeto_serializado

puts livro_deserializado.autor
puts livro_deserializado.class