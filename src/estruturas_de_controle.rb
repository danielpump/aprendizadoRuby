#Conhecendo o IF 

idade = 23
nome = "Daniel"

#Assim pode
if(idade > 18)
	#puts nome
end

#Mas assim é mais legivel, é chamado de syntax sugar
if idade > 18
	#puts nome
end

#Quando for apenas uma linha de if utilizar essa sintaxe para melhorar a legibilidade
puts nome if idade > 18

#If com valores nulos

#O metodo nil? faz a validação caso o objeto esteja nulo

nome = nil

puts "Olá #{nome} que não aparece porque é nulo" if not nome.nil?

nome = "Daniel"

puts "Olá #{nome} com if not" if not nome.nil?

#Unless funciona como o if not só que mais semantico na leitura
nome = "Daniel"

puts "Olá #{nome} com unless e nil" unless nome.nil?

nome = "Daniel"

#Se o if for feito só com o objeto ele faz a validação para verificar se ele é nulo por padrão
puts "Olá #{nome} com unless e só a variavel" unless nome

#Iterações

#For
#A grande mudança neste for é a forma como é declarado o range de iteração, ainda temos que ver o for encadeado
for numero in (1..15)
	puts "Este é o numero #{numero} no for"
end

#While sem grandes mudanças executa até que a condição passada seja falsa
numero = 0
while numero <= 15
	puts "Este é o numero #{numero} no while"
	#Sempre lembrar que é legar poder usar um espeço " " para a chamanda do metodo, como no comando abaixo
	numero += 1
end

#Until (Seria o repita) executa até que a condição passada seja falsa
numero = 0
until numero == 15
	puts "Este é o numero #{numero} no until"
	numero += 1
end	










