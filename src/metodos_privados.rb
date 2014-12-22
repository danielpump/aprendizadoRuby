# coding: utf-8
#Classe que msotra maneiras de se declarar e chamar um metodo privado
class MetodosPrivados
  
  #Na versão 2 em diante do Ruby, pode ser utilizada na declaração do metodo o private
  
  private def privado3
  
  end
  
  def privado2
    
  end
  
  #Todos os métodos declarados abaixo da chamada do private são método privados
  #Chamar o private e passar como parametro simbolo o nome do método tambem o torna privado
  private :privado2
  
  def privado1
    
  end
  
end

puts "Só interprea a classe"
