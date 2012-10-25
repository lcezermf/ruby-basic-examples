#coding : utf-8

=begin 
'Meu nome é Luiz' # => criação de String
"Meu nome é Luiz" # => criação de String
nome = Luiz
idade = Luiz
"Menu nome é : #{nome} e tenho #{idade} anos" # => interpolação de String com código Ruby
%-Minha String- # => criação de String com delimitadores comuns
%[Minha String]
"Olá meu nome é %s tenho %d anos e peso %.2f" % ['Luiz', 22, 74.6] # => criação de String com outra maneira de interpolar valores

<<EOF # => criação de HereDocs (strings muito grandes, como documentos)
	Minha stringona
EOF

'minha string'.split(' ') # => separa a string pelo espaço em braco gerando um array => ['minha', 'string']
'string'.slice(0, 2) # => retorna 'st'
string << 'string' # => concatena
'string'.upcase # => retorna 'STRING' 
'STRING'.downcase # => retorna 'string'

=end