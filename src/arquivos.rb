#Caregando um arquivo
#O segundo parametro indica qual tipo de carregamento do arquivo será realizado, pode ser r, w, w+(rw) ou a(
#Este ultimo continua a escrita no final do arquivo os outros sobreescrevem o conteudo do arquivo) 
arquivo = File.new("/home/daniel/2.log", "r")
#Carregando a pasta
arquivo_temp = File.new("/home/daniel")

puts arquivo.size

#Escrevendo em um arquivo
File.open("/home/daniel/2.log", "w") do |io|
  io.puts "Escrevendo com o puts!"
  io.write "Escrevendo com o write"
  io.write "este cara não pula a linha!"
end
  

#Lendo de um arquivo
arquivo.each do |linha| 
  puts linha
end

