#Carrega os arquivo livro no contexto das classes
require File.expand_path("lib/livro")

livro = Livro.new "Daniel", 153, 55.6

puts $LOAD_PATH 

#mostra o to_s de um objeto
puts "Chamando to_s do objeto #{livro} com a saida puts"

#mostra os inspect de um objeto()Todos os atributos com valores a chamada com p
puts "A chamada com o p só pode ser executada com o objeto sem mais nenhuma string ou ele entende q o objeto é uma string"
p livro

puts "Preço na criação #{livro.preco}"

#Atribuindo um novo valor 
livro.preco= 60

puts "Preço novo #{livro.preco}"

#Como existe o sinal no fim do método é possivel chama-lo com um espaçamento entre o nome e o sinal, melhorando a legibilidade. 
livro.preco = 62

puts "Preço novo espaçado #{livro.preco}"

#Chamando os getters criados de forma misteriosa
puts "Autor chamado com getters attr_reader #{livro.autor}"

puts "Paginas chamada com getters attr_accessor #{livro.numero_de_paginas}"

#Burlando o acesso aos métodos privados
#Conhecendo a estrutura de uma classe, é possivel acessar seus métodos mesmo sem a declaração dos getters
puts "Acessando um atributo que não possui get com o comando instance_variable_get #{livro.instance_variable_get "@isbn"}"

#O problema de permitir esse acesso é que tambem é possivel atribuir valor a uma variavel

livro.instance_variable_set "@isbn", 5

puts "Olhando o novo valor do ISBN instance_variable_get #{livro.instance_variable_get "@isbn"}"

#Essa facilidade na manipulação dos objetos é um dos fortes da linguagem, a meta-programação
#O cuidado com esses comandos deve ser grande, pois quando um atributo não existe e é realizado o meta-set 
#esse atributo é criado no objeto, tornando assim muito dificil a identificação de erros.


