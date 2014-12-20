# coding: utf-8
class Relatorio
  
  def initialize(biblioteca)
    @biblioteca = biblioteca
  end
  
  #Utilizando os métodos da API Enumerable
  #O inject recebe um parametro que é colocado na primeira variavel do bloco e a segunda variavel é o objeto da iteração
  def total
    @biblioteca.livrosComoLista.inject(0){|total, livro| total += livro.preco}
  end
  
  def totalNormal
    soma = 0.0
    @biblioteca.livrosComoLista.each do |livro| 
      soma += livro.preco
    end
    soma
  end
  
  #Utilizando Enumerable
  #O método map executa o bloco de código para cada item da lista e o retorno do bloco é guardado em uma outra lista que é retornada no final
  def titulos
   @biblioteca.livrosComoLista.map { |livro| livro.titulo }
  end
  
  #É possivel utilizar a notação simplificada
  #basicamente esta declaração executa o mesmo código do método lista
  #O caracter & invoca o método to_proc no objeto e passa o bloco para o método map
  def titulosComNotacaoSimplificada
    @biblioteca.livrosComoLista.map &:titulo
  end
  
  def titulosComoBloco
    titulos = []    
    @biblioteca.livrosComoLista.each { |livro| titulos << livro.titulo  }    
    titulos
  end

end	