# coding: utf-8
require 'yaml'

class BancoDeAquivos
  def salva(livro)
    File.open("livros.yml", "a") do |arquivo|
      arquivo.puts YAML.dump(livro)
      arquivo.puts ""
    end
  end
end	