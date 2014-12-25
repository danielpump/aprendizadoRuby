class Midia
  
  attr_reader :titulo
  
  #A convenção para recuperar o valor de um atributo é criar um método com o mesmo nome do atributo
  def preco
    @preco
  end
  
  #A conveção para criar atribuir um valor(set) é criar um método como nome do atributo seguido do sinal de =
  def preco=(preco)
    @preco = preco
  end
  
end