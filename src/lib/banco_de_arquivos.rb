# coding: utf-8
require 'yaml'

class BancoDeAquivos
  def salva(livro)
    File.open("livros.yml", "a") do |arquivo|
      arquivo.puts YAML.dump(livro)
      arquivo.puts ""
    end
  end
  
  def carrega
    $/ = "\n\n"#Configuração do separador de linhas do arquivo
    File.open("livros.yml", "r").map do |livro_serializado|
      YAML.load livro_serializado
    end
  end
  
end	