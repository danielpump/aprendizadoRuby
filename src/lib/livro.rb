#Alterando o encode padrão do código da classe
# coding: utf-8

class Livro
	def initialize(autor, isbn = "1", numero_de_paginas)
		puts "Autor: #{autor}, ISBN: #{isbn} e Pág: #{numero_de_paginas}"
	end
end	