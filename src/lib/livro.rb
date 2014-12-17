#Alterando o encode padrão do código da classe
# coding: utf-8
class Livro

  
=begin
  Para evitar a criação de vários metodos getters e setters mesmo que no padrão Ruby
  existem maneiras nativas de criar esse tipo de acesso a atributos como abaixo: 
=end
  
  #Os valores identificados com :atributo são objetos um pouco mais leves que string e que são utilizados como identificadores de atributos
  #Todo simbolo é uma string imutavel, simbolos tambem ficam em um dicionario de dados otimizado pelo interpretador
  
  #Cria os métodos getters baseado no simbolo do atributo passado
  attr_reader :autor
  #Cria os métodos setters baseado no simbolo do atributo passado
  attr_writer :autor
  
  #Caso seja necesario criar as duas forma de acesso existe o meio mais simples que é
  attr_accessor :numero_de_paginas
    
  def initialize(autor, isbn = "1", numero_de_paginas, preco)
    #A declaração com @ indica que este é um atributo da classe. Todo atributo por é privado.
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
  end  

  def to_s
    "Autor: #{@autor}, ISBN: #{@isbn}, Pág: #{@numero_de_paginas} e Preço: #{@preco}"
  end
  
  #A convenção para recuperar o valor de um atributo é criar um método com o mesmo nome do atributo
  def preco
    @preco
  end
  
  #A conveção para criar atribuir um valor(set) é criar um método como nome do atributo seguido do sinal de =
  def preco=(preco)
    @preco = preco
  end

end	