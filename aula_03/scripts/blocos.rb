#coding : utf-8

=begin 

meu_metodo { bloco }

meu_metodo do 
	#bloco
	executa
	executa
	executa
end

meu_metodo { |var_um, var_dois| executa }

meu_metodo do |var_um, var_dois|
	executa
	executa
end

def exibe_cinco_vezes
	puts "Ola !!!"
	if block_given?
		yield
		yield
		yield
		yield
		yield
	end
end

exibe_cinco_vezes { puts 'Ruby' }


=end