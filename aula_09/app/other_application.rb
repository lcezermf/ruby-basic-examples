load 'classes/customer.rb'

def criar_novo
  customer = Customer.new
  puts "Digite o Nome : "
  customer.name = gets.chomp
  puts "Digite a Idade : "
  customer.age = gets.chomp.to_i
  puts "Digite o Telefone no formato (00) 0000-0000 : "
  customer.phone = gets.chomp
  customer.save if customer.valid?
end

def listar_todos
  Customer.all.each do |customer| 
    puts "Nome : #{customer.name} \n Idade : #{customer.age} \n Email : #{customer.phone}"  
  end
end

puts "1 - Para novo Registro \n2 - Para listar todos registros"
escolha = gets.chomp

case escolha.to_i
  when 1 then criar_novo 
  when 2 then listar_todos
end


