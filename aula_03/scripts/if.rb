#coding : utf-8

=begin 

if condicao
	executa
end

===============

if condicao
	executa
else
	executa_else
end

===============

if condicao
	executa
elsif condicao_dois 
	executa_dois
elsif condicao_n
	executa_n
else
	executa_else
end  => pode conter inúmeros 'elsif'

===============

(retorna o último valor avaliado)
nome = 'Luiz'

if nome.eql?('Luiz')
	saudacao = "Olá #{nome} !"
else
	saudacao = "Olá estranho!"
end

puts saudacao 

===============

nome = 'Luiz'

saudacao = if nome.eql?('Luiz')
		"Olá #{nome} !"
	else
		"Olá estranho !"
	end

puts saudacao

===============

nome = 'Luiz'

if nome.eql? 'Luiz'
	puts "Olá LUIZ !!!"
end

puts "Olá LUIZ !!!" if nome.eql?('Luiz') # => uso de if como modificador



=end