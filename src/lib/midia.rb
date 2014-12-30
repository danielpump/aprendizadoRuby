class Midia
  
  attr_reader :titulo
  
  def initialize
    @desconto = 0.1
  end
  
  #A convenção para recuperar o valor de um atributo é criar um método com o mesmo nome do atributo
  def preco
    @preco
  end
  
  #A conveção para criar atribuir um valor(set) é criar um método como nome do atributo seguido do sinal de =
  def preco=(preco)
    @preco = preco
  end
  
  #O atributo preco é acessado no pai, pois os atributos em ruby, são criados quando são invocados por algum método, independente do
  #momento ou se é o pai ou o filho que o cria.
  def valor_com_desconto
    @preco - (@preco* @desconto)
  end
  
end