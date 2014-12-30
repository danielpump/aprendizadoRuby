=begin
  Para evitar o carregamento repetitivo de classes, o carregamento será centralizado neste arquivo e todas as classes
  novas criadas deverão ser declaradas aqui, permitindo que apenas um arquivo seja declarado nos locais onde ele será utilizado.
=end
#Existe precedencia de classes no load, principalmente de herança
require File.expand_path("lib/midia")
require File.expand_path("lib/formatador_moeda")
require File.expand_path("lib/biblioteca")
require File.expand_path("lib/livro")
require File.expand_path("lib/dvd")
require File.expand_path("lib/relatorio")
require File.expand_path("lib/banco_de_arquivos")