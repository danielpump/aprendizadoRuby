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

#Valores nulos