# coding: utf-8
module VendaFacil #Modulos funcionam como pacotes em Java, ou seja definem um caminha especifico 
  class Set
    
    attr_reader :livros 
    
    def initialize
      #@livros = [] #Era uma lista e virou um hash
      #@livros = {}#As chaves indicam que a coleção agora é um hash
      @banco_de_arquivos = BancoDeAquivos.singleton_class
    end
    
    #O mais comum para a chave de um hash é um Symbol, mas pode ser um objeto de qualquer tipo
    def adiciona(livro)
      salva livro do
        @livros[livro.categoria] ||= []#Atribui uma lista vazia apenas se o valor dessa chave for Nil
        @livros[livro.categoria] << livro
      end
      
    end
    
    #Carrega os livros gravados em arquivo
    def livros_do_banco
      @livros ||= @banco_de_arquivos.carrega
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
    
    #O comando select do array, realizada uma filtragem nos itens da lista dado o bloco de código utilizado 
    def livros_por_categoria_com_select(categoria)
      @livros.select{|livro| livro.categoria == categoria}
    end
    
    #O caracter & no parametro indica que receberemos uma instancia de Proc, e chamamos o bloco de código com o método call.
    def livros_por_categoria_com_proc(categoria, &bloco)
      @livros[categoria].each do |livro|
        bloco.call livro
      end
    end
    
    #Dois ou mais blocos de código, os blocos devem ser passados como instancia de Proc e parametros normais de um método e ter o método
    #call invocado dentro da execução.
    def livros_por_categoria_com_mais_de_um_bloco_de_codigo(categoria, bloco1, bloco2)
      @livros[categoria].each do |livro|
        bloco1.call livro
        bloco2.call livro
      end
    end
    
    #Deixado apenas para fins de estudo
    def adicionaComoListaNãoUtilizar(livro)
      @livros << livro
    end
  
    #métodos privados    
    private
    
    #Salva o livro no arquivo e recebe um bloco de código indicando o que deve ser feito depois
    def salva(livro)
      @banco_de_arquivos.salva livro
      yield
    end
  
  end	
end