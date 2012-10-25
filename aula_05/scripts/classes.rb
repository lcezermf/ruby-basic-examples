#coding : utf-8
class Pessoas
  attr_reader :nome, :idade, :sexo
  @@contador = 0
  
  def initialize(nome, idade, sexo = 'masculino')
    @nome, @idade, @sexo = nome, idade, sexo
    @@contador += 1
  end

  def andar
    puts "Estou andando..."  
  end

  def comer 
    puts 'Estou comendo...'  
  end
  
  def maior_idade?
    puts (@idade > 18) ? 'Sim' : 'Não'  
  end
  
  def andei_kilometros(quantos)
    puts "Hoje andei #{quantos} kilometros !"  
  end

  def self.quantas_pessoas
    puts @@contador  
  end
  
end



=begin

# => definindo classes

class MinhaClasse
end

# => instanciando classes

minha_classe = MinhaClasse.new


# => definindo acessores para atributos

=> attr_writer
=> attr_reader

=> attr_accessor

# => método initialize

classe MinhaClasse

  def initalize(args)
    @var = args
  end

end


# => criando comportamentos (métodos, ações) para a classes

class MinhaClasse

  def saudacao
    "IAI meu amigo"
  end

  def ola_nome(nome)
    "Olá, #{nome}"  
  end  

end


# => métodos e atributo tem podem escopo diferente

$var => variavel global
@var => variavel de instancia 
@@var => variavel de classe
var => variavel local


class MinhaClasse
  attr_reader :nome
  @@contador = 0

  def initialize(nome)
    @nome = nome
    @@contador += 1
  end


  def algum_metodo(valor)
    "esse foi o #{valor}"
  end

  #valor

  def self.quantos
    @@contador
  end

end


=end
