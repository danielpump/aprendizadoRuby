#Alterando o encode padrão do código da classe
# coding: utf-8
class Livro < Midia

  
=begin
  Para evitar a criação de vários metodos getters e setters mesmo que no padrão Ruby
  existem maneiras nativas de criar esse tipo de acesso a atributos como abaixo: 
=end
  
  #Os valores identificados com :atributo são objetos um pouco mais leves que string e que são utilizados como identificadores de atributos
  #Todo simbolo é uma string imutavel, simbolos tambem ficam em um dicionario de dados otimizado pelo interpretador
  
  #Cria os métodos getters baseado no simbolo do atributo passado
  attr_reader :isbn, :categoria, :autor
  #Cria os métodos setters baseado no simbolo do atributo passado
  attr_writer :autor
  
  #Caso seja necesario criar as duas forma de acesso existe o meio mais simples que é
  attr_accessor :numero_de_paginas
    
  def initialize(autor, titulo,  isbn = "1", numero_de_paginas, preco, categoria)
    #A declaração com @ indica que este é um atributo da classe. Todo atributo por é privado.
    @titulo = titulo
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
    @categoria = categoria
  end  

  def to_s
    "Titulo:#{@titulo}, Autor: #{@autor}, ISBN: #{@isbn}, Pág: #{@numero_de_paginas}, Preço: #{@preco} e Categoria: #{@categoria}"
  end
  
  #A convenção para recuperar o valor de um atributo é criar um método com o mesmo nome do atributo
  def precoOriginial
    @preco
  end
  
  #A conveção para criar atribuir um valor(set) é criar um método como nome do atributo seguido do sinal de =
  def precoOriginal=(preco)
    @preco = preco
  end
  
  #Por padrão o método eql verifica apenas o object_id
  def eql?(outro_livro)
    @isbn == outro_livro.isbn
  end
  
  #Tomar cuidado ao sobreescrever este metodo, pois isso pode impactar nas consultas da classe hash
  #Sempre chamar o método hash da chave do hash
  def hash
    @isbn.hash
  end

end	