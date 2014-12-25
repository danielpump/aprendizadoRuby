#Herdando da classe Midia
class DVD < Midia

  def initialize(titulo,  preco, categoria)
    @titulo = titulo
    @preco = preco
    @categoria = categoria
  end  

  def to_s
    %Q{Título: #{@titulo}, Preço: #{@preco}}
  end  
  
end