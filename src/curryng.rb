#Curryng é uma técnica funcional que transforma uma função multiparametros em uma função com um unico parametro em cadeia, algo como uma 
#cadeia de responsabilidade, ou execução de commands

#Muda isso

executa_comando = lambda {|conexao, comando| conexao.executa comando}
#Repete o primeiro parametro
executa_comando.call Conexao.new Update.new
executa_comando.call Conexao.new Inserto.new


#Para isso
#Ele basicamente quebra o lambda em dois fixando o primeiro argumento e apenas alterando o segundo
#Muito utilizado para reaproveitamento de parametros quando reutilizaremos o mesmo método várias com vezes com os mesmo parametros.
executa_comando = lambda {|conexao, comando| conexao.executa comando}.curry
#Repete o primeiro parametro
executa_comando_com_conexao = executa_comando.call Conexao.new

executa_comando_com_conexao.call Conexao.new Update.new
executa_comando_com_conexao.call Conexao.new Inserto.new