# coding : utf-8

cidades = %w(Medianeira Foz Curitiba Londrina Maringa)

#cidades.each { |cidade| puts "#{cidade} \n" }

hash = { :db => 'mysql', :host => 'localhost', :user => 'root'}

#hash.each { |k, v| puts "#{k} : #{v} \n" }

for k, v in hash do 
	puts "#{k} : #{v}\n"
end

=begin

# => while => avalia para true

x = 0
while x <= 10 do
	puts x
	x += 1
end

x = 0 

puts x += 1 while x <= 10

============

# => until => avalia se não for true (false, nil)

x = 0
until x >= 10 do
	puts x 
	x += 1
end

x = 10
puts x -= 1 until x <= 10

==========

# => for/in
	
for var in collection do
	#laço
end



numeros = (1..10).to_a
for numero in numeros do
	puts "Esse é o número #{numero}"
end

numeros = {:um => 1, :dois => 2, :tres => 3}
for key, value in numeros do 
	puts "#{key} => #{value}"
end
=end

