#Os arrays não tem tamanho definido, eles crescem conforme a necessidade

numeros = [1,2,3]

puts numeros.class
puts numeros #print do array é feito linha a linha, como se o objeto fosse iterado
puts "O array começa na posição 0 #{numeros[0]}" #O array começa em 0
puts "Pode ser passada a posição para se escolher o item que deseja recuperar #{numeros[2]}" #Deve ser passado o indice da posição que se deseja
puts "Todo Array possui o métdo first e last(Auto explicativo) first: #{numeros.first} e last:#{numeros.last}"
 
#Para adicionar um objeto ao Array é utilizado o <<
numeros << 4
#O problema é que pelo fato do ruby não ser tipado é possivel adicionar qualquer tipo de objeto a uma lista
numeros << "Eai??"

puts "Deve-se tomar cuidado com a misturas de tipos de acordo com o que será realizado com a lista #{numeros}"

#Array de string
#Pode ser assim
palavras = ["Eai","mina"]

puts palavras

#Ou assim
mina = "mina variavel"
palavras = %w{Eai #{mina}}# A vantagem de utilizar dessa forma é que alem de ser bem mais legivel
palavras = %W{Eai #{mina}}# Com o W permite a interpolação
  
puts palavras


