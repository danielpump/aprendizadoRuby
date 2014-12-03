#Declarações

#1 = "Daniel" Nao funciona pois as veriaveis não podem começar com letras
nome = "Daniel"
$nome = "Daniel"
_nome = "Daniel"

#Não usa Camel Case, separa as palavras por "_"
telefone_celular = "(12) 99999-9999"


=begin
 Comentarios de multiplas linhas 
=end

#Numeros

idade = 27 #Fixnum
idade.class#Fixnum

habitantes = 700000000 #Normal de escrever(Ruim de ler)

habitantes = 7_000_000_000 #Ruby permite separa com "_" para facilitar a letura dos numeros no código

peso = 77.9#Flutuante continua normal, sendo separado por ponto = Float

#Strings

nome_completo = "Daniel Ferraz"#Pode ser criada com aspas duplas ", a diferença que com " é permitida a interpolação
twiter = '@Daniel'# ou/mas tambem pode ser criada com aspas simples ', não permite interpolação
#Não tem diferença em qual usar, apenas a necessidade caso tenha ' na string q se está criando

#Jeito normal de concatenar String
nome = "Erika"
bem_vinda = "Bem vinda " + nome
#puts bem_vinda

#Interpolação, jeito ruby de concatenar
#Priorize " quando for criar a String e a interpolação quando for concatenar
bem_vinda = "Bem vinda #{nome}" 
#puts bem_vinda

=begin
 As aspas simples são mais rapidas que as aspas duplas, pois não permitem interpolação, mas esse ganho só ocorre no parse do código e não
 na execução, ou seja use as ". Se você sempre usar a ", não vai se preocupar caso tenh que interpolar por qualquer razão.
 Tempos em millisegundos com 100_000_000 de registros fixos:
 Interpolação: 23703
 Com + : 29086
 Tempos em millisegundos com 100_000_000 de registros variaveis:
 Interpolação: 46496
 Com +, para funcionar teve que chamar o metodo to_s: 55045
 A performance da interpolação é sempre melhor 
=end

#Time
#Colocando milli segundos na class
class Time
  def milli
    (self.to_f * 1000.0).to_i
  end  
end   
inicio = Time.new.milli

#Thread
sleep 1#Para por um segundo a execução da thread

  


























