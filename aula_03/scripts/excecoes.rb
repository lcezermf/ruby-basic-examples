#coding : utf-8


def abre_conexao(port)
	if port.eql?(2000)
		puts "Abrindo conexao"
	else
		raise 'OCORREU UM ERRO GRAVE !'
	end
end

def fecha_conexao
	puts "Fechou conexao !!!"
end

def fez_consulta
	puts "Consulta ao banco !"
end


def conexao_completa
		abre_conexao 2000
	rescue => ex
		puts "#{ex.class} #{ex.message}"
	else
		fez_consulta
	ensure
		fecha_conexao
end

conexao_completa

=begin 

num = 5

raise if num > 1
raise 'Ocorreu um erro, exception class => ' if num > 1


begin
	#código dentro desse bloco terá uma/várias exception manipuladas	
end

begin
		#codigo
	rescue 
		puts "Ocorreu um erro"
end

begin
		#código
	rescue ExceptionUm, ExceptionN => ex
		puts "#{ex.class} #{ex.message}"
end


begin
		#código
	rescue => ex
		puts "#{ex.class} #{ex.message} #{ex.backtrace}"
	else
		#executa o código se não houver uma exception
end


begin
		#código
	rescue => ex
		puts "#{ex.class} #{ex.message} #{ex.backtrace}"
	else
		#executa o código se não houver uma exception
	ensure
		#executando ou não a exception o código dentro do ensure sempre é executado
end


def abre_conexao(port)
	if port.eql?(2000)
		puts "Abrindo conexao"
	else
		raise 'OCORREU UM ERRO GRAVE !!'
	end
end

def fecha_conexao
	puts "Fechou conexao !!!"
end

def fez_consulta
	puts "Consulta ao banco !"
end

begin
	abre_conexao 20001
rescue => ex
	puts "ERRO #{ex.class} #{ex.message}"
else
	fez_consulta
ensure
	fecha_conexao
end



=end