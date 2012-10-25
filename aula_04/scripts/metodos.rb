#coding : utf-8


def meu_metodo(msg)
	puts msg
	yield if block_given?
end

meu_metodo('Ola') { puts "Ruby!" }


=begin

# => definindo um método
def meu_metodo
end
	

# => definindo um método que recebe N argumentos, separador por vírgula	
def meu_metodo(arg1, arg2, arg3, ....)
end

def meu_metodo(nome)
	"Olá, #{nome}" # =>  == return "Olá, #{nome}" não é necessário o uso de 'return'
end


def retorna_muitos_valores
	return 1, 2, 3, 4
end

OU

def retorna_muitos_valores
	[1, 2, 3, 4]
end

NUNCA => retornarMuitosValores

def meu_metodo(nome, sobrenome, idade)
end

# => pode ser chamado :
	meu_metodo('Luiz', 'Cezer', 22) OU
	meu_metodo 'Luiz', 'Cezer', 22


def meu_metodo(nome = 'Luiz', idade = 22)
	"Olá, meu nome é #{nome} e tenho #{idade} anos."
end

# => meu_metodo() OU meu_metodo('Cezinha', 26)
# => meu_metodo('Cezinha')

def meu_metodo(*args)
	#args é um array
	args.each { |arg| puts "#{arg}\n" }
end

meu_metodo('Luiz', 'Cezer', 22, 'Filho', 'Marrone', 'Ruby', .....)


def meu_metodo(args)
	nome = args[:nome]
	idade = args[:idade]
	puts "Nome : #{nome} \n Idade : #{idade}"
end

meu_metodo(:nome => 'Luiz', :idade => 22) OU meu_metodo(:idade => 22, :nome => 'Luiz')


# => dessa maneira o bloco passa a ser obrigatório na chamda método
def meu_metodo(msg, &block)
	puts msg
	block.call
end

meu_metodo('Ola') { puts 'Chamando Block' }

def meu_metodo(msg)
	puts msg
	yield # if block_given?
end

meu_metodo('Ola') OU meu_metodo('Ola') { puts 'Chamando Bloco' }

=end