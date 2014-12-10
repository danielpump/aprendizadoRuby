#Sobre a string em ruby, ela é mutavel e qualquer declaração interpretada retornará uma nova string
#Isso pode acarretar em problemas de performance e memória

#Existem dois tipos de declarações de strings como abaixo
#Já foram feitos alguns teste e validadas algumas diferença, olhar  na classe variaveis o resultado
nome_simples = 'Daniel'
nome_duplo = "Daniel"

#Escape em string \
escape_simples = 'Isso funfa "normal" e isso com \'escape\''
escape_duplo = "Isso funfa com \"escape\" e isso 'normal'"

puts escape_simples
puts escape_duplo

#Notação especial baseada em Perl para facilitar a leitura com caracteres especiais
notacao_especial_com_barra = %{Isso funfa "normal" e isso 'tambem', tudo graças a notação especial}

puts notacao_especial_com_barra

#A notação especial pode ser utilizada com qualquer caractere não alfa numérico
notacao_especial_com_colchete = %[Isso funfa "normal" e isso 'tambem', tudo graças a notação especial com colchete]

notacao_especial_com_interrogacao = %?Isso funfa "normal" e isso 'tambem', tudo graças a notação especial com interrogação?

notacao_especial_com_traco = %-Isso funfa "normal" e isso 'tambem', tudo graças a notação especial com traço-

puts notacao_especial_com_colchete
puts notacao_especial_com_interrogacao
puts notacao_especial_com_traco

#Mas isso não evita o escape caso o caracter delimitador vá ser utilizado
notacao_especial_com_interrogacao = %?Como você está\? só funciona por causa do escape na interrogação?

puts notacao_especial_com_interrogacao

#Caso seja utilizado os delimitadores (), [], {}, <> eles podem ser usados em pares sem escape
pensamento = %(Nossa (que legal sem escape o parenteses aparece) que bacana)

puts pensamento

#Interpolação em notação especial
nome = "Daniel"

meu_nome_interpolado = %Q{Meu nome é #{nome}} #A letra 'Q' que indica que é permitida a interpolação
meu_nome_nao_interpolado = %q{Meu nome é #{nome}} #A letra 'q' que indica que não é permitida a interpolação, e garante que não seja quebrada a string

puts meu_nome_interpolado
puts meu_nome_nao_interpolado

#Quebra de linha com string
quebra_linha_normal = "Como é feito sem\nnotação especial atrapalhando a leitura no código"
quebra_linha_com_notacao = %{Como é feito com
notação especial, melhorando a legibilidade no código, veja que a quebra é feita do mesmo jeito}

puts quebra_linha_normal
puts quebra_linha_com_notacao

#Freeze
=begin 
Como dito no começo uma string é mutavel, para torna-la imutavel pode ser realizada a declaração freeze
O resultado do teste abaixo mostra que sempre que o freeze é utilizado ele busca a mesma instancia do objeto, mas se for declarado novamente
sem o freeze a string sempre retorna um objeto diferente, mas caso a declaração volte a utilizar o freeze, ele busca novamente a string 
criada anteriormente.
=end

teste_sem_freeze = "Daniel"
teste_com_freeze = "Daniel".freeze
teste_outro_freeze = "Daniel".freeze
teste_outro_sem_freeze = "Daniel"
teste_ultimo_freeze = "Daniel".freeze

puts "Avaliando os ids dos objeto string com freeze"
puts "teste_sem_freeze #{teste_sem_freeze.object_id}"
puts "teste_com_freeze #{teste_com_freeze.object_id}"
puts "teste_outro_freeze #{teste_outro_freeze.object_id}"
puts "teste_outro_sem_freeze #{teste_outro_sem_freeze.object_id}"
puts "teste_ultimo_freeze #{teste_ultimo_freeze.object_id}"

#Testes performance
class Time
  def milli
    (self.to_f * 1000.0).to_i
  end  
end   


#Notação especial X declaração comum
=begin
O resultado dos testes para declaração estatica criando 100_000_000 de vezes a mesma string foram
declaração comum: 13246 millis
Notação especial: 13498 millis
O resultado dos testes para declaração dinamica criando 100_000_000 de vezes as strings com interpolação foram
declaração comum: 35936 millis
Notação especial: 36074 millis
Resultado: A variação entre notação especial e declaração comum é praticamente inexiste, 
podendo até variar de uma execução para outra
=end
#Notação especial X declaração comum ambas strings estaticas
puts "Notação especial X declaração comum ambas strings estaticas"
inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = "String de teste"
end
fim = Time.new.milli

puts "Resultado do teste de declaração comum estatica #{fim - inicio}"

inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = %{String de teste}
end
fim = Time.new.milli

puts "Resultado do teste de Notação especial estatica #{fim - inicio}"

#Notação especial X declaração comum ambas strings dinamica com interpolação
puts "Notação especial X declaração comum ambas strings dinamica com interpolação"
inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = "String de teste#{vezes}"
end
fim = Time.new.milli

puts "Resultado do teste de declaração comum dinamica #{fim - inicio}"

inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = %{String de teste#{vezes}}
end
fim = Time.new.milli

puts "Resultado do teste de Notação especial dinamica #{fim - inicio}"

#String mutavel X String freeze
=begin
Apesar de ser bem óbivio que uma string freeze estatica criada repetidas vezes seja mto mais rapida que a mutavel
serão feitos os testes para fim de estudo, assim como a criação de string uma quantidade absurda de strings estaticas mas
que variam seus valores criando 100_000_000 de string freeze
O resultado dos testes para declaração estatica criando 100_000_000 de vezes a mesma string foram
String mutavel: 12768 millis
String freeze: 6000 millis
O resultado dos testes para declaração dinamica criando 100_000_000 de vezes as strings com interpolação foram
String mutavel: 34386 millis
String freeze: 36304 millis

Resultado: Como esperado a reutilização de uma string freeze é muito mais rápida que criar novamente a mesma string, e isso
era esperado dado a diferença de conceitos.
Já com a criação das strings dinamicas praticamente não houve diferença no custo de criação entre a freeze e a mutavel.

=end

#String mutavel X String freeze estaticas
puts "String mutavel X String freeze estaticas"
inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = "String de teste"
end
fim = Time.new.milli

puts "Resultado do teste de String mutavel estatica #{fim - inicio}"

inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = "String de teste".freeze
end
fim = Time.new.milli

puts "Resultado do teste de String freeze estatica #{fim - inicio}"

#String mutavel X String freeze dinamica com interpolação
puts "String mutavel X String freeze dinamica com interpolação"
inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = "String de teste#{vezes}"
end
fim = Time.new.milli

puts "Resultado do teste de String mutavel dinamica #{fim - inicio}"

inicio = Time.new.milli
for vezes in (1..100_000_000)
	objeto_de_teste = "String de teste#{vezes}".freeze
end
fim = Time.new.milli

puts "Resultado do teste de String freeze dinamica #{fim - inicio}"












