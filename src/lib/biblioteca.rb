# coding: utf-8
class Biblioteca
  
  attr_reader :livros 
  
  def initialize
    #@livros = [] Era uma lista e virou um hash
    @livros = {}#As chaves indicam que a coleção agora é um hash
  end
  
  #O mais comum para a chave de um hash é um Symbol, mas pode ser um objeto de qualquer tipo
  def adiciona(livro)
    @livros[livro.categoria] ||= []#Atribui uma lista vazia apenas se o valor dessa chave for Nil
    @livros[livro.categoria] << livro
  end
    
  
  #Retorna o mapa de livros como lista e não quebra nenhuma implementação
  def livrosComoLista
    #values Retorna todos os valores da lista, independente da chave
    #flatten Como o valor da lista é um Array o método flatten unifica todos os arrays do retorno em um unico Array, o flatten é recurisivo
    #se um dos valores for uma lista ele itera sobre ele e assim por diante até que todas as listas tenham sido unificadas
    @livros.values.flatten
  end
  
  #Deixado apenas para fins de estudo
  def adicionaComoListaNãoUtilizar(livro)
    @livros << livro
  end

end	