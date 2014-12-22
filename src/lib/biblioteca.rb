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
  
  #Recebendo um bloco de código para filtrar os livros
  #Blocos de código não precisam ser recebidos como parametro e para executar o metodo só precisa ser chamado o étodo yield
  #Caso um método que recebe um bloco, não receba o bloco na chamada do método, ele lança a seguinte exceção LocalJumpError
  def livros_por_categoria(categoria)
    @livros[categoria].each do |livro|
      yield livro if block_given?#Isso evita que algum erro seja lançado caso nenhum bloco de código seja passado.
    end
  end
  
  #O caracter & no parametro indica que receberemos uma instancia de Proc, e chamamos o bloco de código com o método call.
  def livros_por_categoria_com_proc(categoria, &bloco)
    @livros[categoria].each do |livro|
      bloco.call livro
    end
  end
  
  #Deixado apenas para fins de estudo
  def adicionaComoListaNãoUtilizar(livro)
    @livros << livro
  end

end	