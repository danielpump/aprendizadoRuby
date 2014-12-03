#Refinement é um jeito de melhorar os problemas gerados pelo monkey patch
module Pluralizer
  refine String do
    def plural
      "#{self}s"
    end
  end
end

class Relatorio
  #monkey patch, apenas os locais que declaram o Pluralizer terão a sua classe String alterada
  using Pluralizer
  
  def imprime
    "Relatorio".plural
  end  
end

puts Relatorio.new.imprime