#coding : utf-8

=begin 

unless condicao
	executa
end

===============

unless condicao
	executa
else
	executa_else
end

===============

(retorna o último valor avaliado)
nome = 'Luiz'

unless nome.eql?('Luiz')
	saudacao = "Olá estranho!"
else
	saudacao = "Olá #{nome} !"a
end

puts saudacao 

===============

nome = 'Luiz'

saudacao = unless nome.eql?('Luiz')
		"Olá #{nome} !"
	else
		"Olá estranho !"
	end

puts saudacao

===============

nome = 'Luiz'

unless nome.eql? 'Luiz'
	puts "Olá LUIZ !!!"
end

puts "Olá LUIZ !!!" unless nome.eql?('Luiz') # => uso de unless como modificador



=end