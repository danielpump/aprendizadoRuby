
#Herdando da classe Midia
class DVD < Midia

  def initialize(titulo,  preco, categoria)
    super()#Se não forem colocados os parenteses vazios o método super é chamada passando todos os argumentos recebidos no métodos sobreescrito.
    @titulo = titulo
    @preco = preco
    @categoria = categoria
  end  

  def to_s
    %Q{Título: #{@titulo}, Preço: #{@preco}}
  end  
  
end