#Existem dois tipo basicos de funçoes as puras e a imperatva
#A pura não altera o estado do objeto
#A imperativa altera o estado do objeto

nome = "Daniel"

#Função pura
puts "Função pura pois não alterou o estado do objeto #{nome.upcase}, #{nome}"

#Função imperativa, por convenção uma função imperativa deve terminar com o caracter !, para indicar que gera a mudança de estado 
puts "Função imperativa pois alterou o estado do objeto #{nome.upcase!}, #{nome}"

#Ao inves de criar trechos de código
valor = nil
numero = "dois"
if numero == "um" then valor = 1
elsif numero == "dois" then valor = 2
else valor =3
end

puts valor
#Podemos atribuir direto o resultado da avaliação da expressão
valor= nil
valor = if numero == "um" then 1
          elsif numero == "dois" then 2
          else 3
        end
puts valor

#Atribuir o mesmo valor a várias variaveis
a = b = c = 0

p a,b,c

#O for retorna um Array com a lista utilizada
numeros = [1,2,3,4]
novos_numeros = for n in numeros do
  n * 2
end
p novos_numeros




