#Existem duas formas de se criar carregar uma classe para o interpretador do Ruby
=begin
	A primeira é adicionar na constante $LOAD_PATH o caminho dos arquivos das classes que serão carregados.
	Essa constante é um objeto do tipo Array. Ex:
	$LOAD_PATH << "caminho dos arquivos das classes/lib"
	Fazendo isso as classes podem ser carregadas utilizando a chamada da função require com o nome do arquivo se a extensão.
	require 'livro'
=end

$LOAD_PATH << "/ruby/teste/lib"
require 'livro'

=begin
	A segunda maneira é declarar o caminho completo do arquivo no require.
	require "/ruby/teste/lib/livro"
	Para não declarar o caminho absoluto, pode ser utilizando o comando que recupera o caminho relativo ao arquivo.
	require File.expand_path("lib/livro")
=end

require File.expand_path("lib/livro")

