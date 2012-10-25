#coding : utf-8

=begin

meu_proc_new = Proc.new { puts 'ola' }
puts meu_proc.class

meu_lambda = lambda { puts 'ola' }
puts meu_lambda.class

meu_proc = proc { puts 'ola' }
puts meu_proc.class

# => 

meu_proc_new = Proc.new { |num, num_2| puts num + num2 }
puts meu_proc.call

meu_lambda = lambda { |num, num_2| puts num + num2 }
puts meu_lambda.call

meu_proc = proc { |num, num_2| puts num + num2 }
puts meu_proc.call

# => 

meu_proc = proc { |num, num_2| puts num + num2 }
puts proc.arity

# =>

lambdas => fazem checagem de argumentos
Proc.new || proc => não fazem


minha_lambda = lambda do |arg, arg2| 
	puts arg
	puts arg2
end

minha_lambda.call 1, 2 # => retorna 3
minha_lambda.call 1, 2, 3 # => erro de argumentos
	
minha_proc = Proc.new do |arg, arg2| 
	puts arg
	puts arg2
end

minha_proc.call 1, 2 # => retorna certo
minha_proc.call 1 # => retorna 1 e depois nil
minha_proc.call 1, 2, 3 # => retorna 1 e 2 e descarta o 3
=end