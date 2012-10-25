#coding : utf-8


for i in 1..100 do 
	next if i.even?
	puts i
end

=begin

if condicao
	return valor
elsif
	return valor
else
	return valor
end

===========

1.upto(10) do |num|
	next if num.even?
	puts num
end

===========

%w(Medianeira Foz Smi).each do |city|
	puts city
	#break
end



=end