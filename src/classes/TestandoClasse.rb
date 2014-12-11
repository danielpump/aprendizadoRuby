#O nome das classes utiliza o padrão CamelCase Ex:
#Livro, Carro, PedidoDeVenda, EntradaEmEstoque
class Livro

	def initialize(autor = "Padrão", numero_de_paginas = -1, isbn = "N\\A")
		puts "Inicialiado com os valores #{autor}, #{numero_de_paginas}, #{isbn}"
	end
	
	def metodoSemOrdem(param1, param2=-1, param3="Padrão", param4="Padrão", param5)
		puts "Parametros em ordem #{param1}, #{param2}, #{param3}, #{param4}, #{param5},"
	end

end

#Lista de métodos de um objeto classe
#puts Livro.methods Comando que exibe todos os método de um objeto
=begin
allocate
new
superclass
freeze
===
==
<=>
<
<=
>
>=
to_s
inspect
included_modules
include?
name
ancestors
instance_methods
public_instance_methods
protected_instance_methods
private_instance_methods
constants
const_get
const_set
const_defined?
const_missing
class_variables
remove_class_variable
class_variable_get
class_variable_set
class_variable_defined?
public_constant
private_constant
singleton_class?
include
prepend
module_exec
class_exec
module_eval
class_eval
method_defined?
public_method_defined?
private_method_defined?
protected_method_defined?
public_class_method
private_class_method
autoload
autoload?
instance_method
public_instance_method
nil?
=~
!~
eql?
hash
class
singleton_class
clone
dup
taint
tainted?
untaint
untrust
untrusted?
trust
frozen?
methods
singleton_methods
protected_methods
private_methods
public_methods
instance_variables
instance_variable_get
instance_variable_set
instance_variable_defined?
remove_instance_variable
instance_of?
kind_of?
is_a?
tap
send
public_send
respond_to?
extend
display
method
public_method
singleton_method
define_singleton_method
object_id
to_enum
enum_for
equal?
!
!=
instance_eval
instance_exec
__send__
__id__
=end

#Criando um objeto de Livro o método new do objeto da classe livro cria um objeto de Livro
livro = Livro.new

#Algumas das informações de um objeto
puts "Sou um objeto e minha classe é #{livro.class} e meu id de objeto é #{livro.object_id}"

#Lista de métodos de um objeto sem nada especifico do negócio ou seja um objeto sem atributos e nem métodos próprios.
#puts livro.methods Comando que mostra todos os métodos de um objeto
=begin
nil?
===
=~
!~
eql?
hash
<=>
class
singleton_class
clone
dup
taint
tainted?
untaint
untrust
untrusted?
trust
freeze
frozen?
to_s
inspect
methods
singleton_methods
protected_methods
private_methods
public_methods
instance_variables
instance_variable_get
instance_variable_set
instance_variable_defined?
remove_instance_variable
instance_of?
kind_of?
is_a?
tap
send
public_send
respond_to?
extend
display
method
public_method
singleton_method
define_singleton_method
object_id
to_enum
enum_for
==
equal?
!
!=
instance_eval
instance_exec
__send__
__id__
=end

=begin
É possivel reparar que um objeto do tipo classe possui muitos métodos espeficos alem dos padrões como é mostrado 
na segunda listagem de métodos
Para carregarmos informações em um objeto no momento da criação deve ser utilizado o método initialize
Sobreescrever o método initialize, elimina a criação padrão sem argumentos.
O interpretador Ruby não suporta a sobrecarga de métodos ele sempre considera o ultimo método criado como o existente e 
ignora os anteriores, para que possa ser feito algo como a sobrecarga deve ser utilizado a funcionalidade de parametros default 
em métodos.
A ordem dos parametros não importa para os parametro padrões, pois o Ruby consegue inferir o valor passado ao tipo de parametro.
Existem três tipos de argumento em Ruby:
Obrigatórios;
Com valroes padrões;
Opcionais.
Para definir qual parametro será atribuido, o Ruby faz um esquema de precedencia onde os parametros que são passados são colocados
por ordem nos parametros sem valor padrão(Oberigatórios) e depois caso sobre parametros ele passa atribuindo aos parametros
com valores padrões restantes, de forma ordenada tambem.
Realizando alguns testes foi possivel perceber que após se utilizar um parametro padrão, não é possivel voltar, utilizar 
um parametro sem valor e voltar novamente a utilizar um parametro com valor, o interpretador quebra na leitura do código.
=end

livro_com_parenteses = Livro.new( "Daniel com parenteses", 5, "285") 
livro_sem_parenteses = Livro.new "Daniel sem parenteses", 6, "286"

puts "Foram criados livros com e sem parenteses!"

#Com todos dois parametros(Todos os obrigatórios)
livro.metodoSemOrdem "1","5"

#Com todos três parametros
livro.metodoSemOrdem "1","2","5"

#Com todos quatro parametros
livro.metodoSemOrdem "1","2", "3","5"

#Com todos os parametros
livro.metodoSemOrdem "1","2","3","4","5"