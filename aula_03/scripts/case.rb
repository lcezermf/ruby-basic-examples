#coding : utf-8



=begin  


if ano.eql? 1998
	puts "França Campeã"
elsif ano.eql? 2002
	puts "Brasil Campeão"
elsif ano.eql? 2006
	puts "Itália Campeã"
elsif ano.eql? 2010
	puts "Espanha Campeã"
else
	puts "Não sei :( "
end
	


if condicao
	executa
elsif condicao
	executa
elsif condicao
	executa
elsif condicao
	executa
else
	executa
end


case 
	when condicao then executa
	when condicao then executa
	when condicao then executa
	when condicao then executa
	else executa
end

===========

num = 10

case num
	when 1..10 then puts 'está entre 1 e 10'
	when 11..20 then puts 'está entre  11 e 20'
	else puts 'não está no intervalo'
end

case num
	when 1..10 ; puts 'está entre 1 e 10'
	when 11..20 ; puts 'está entre  11 e 20'
	else puts 'não está no intervalo'
end

case num
	when 1..10 then
		puts 'está entre 1 e 10'
	when 11..20 then
		puts 'está entre  11 e 20'
	else 
		puts 'não está no intervalo'
end

=============

num = 10

msg = case num
	when 1..10 then
		'está entre 1 e 10'
	when 11..20 then
		'está entre  11 e 20'
	else 
		'não está no intervalo'
end

puts msg 

=end