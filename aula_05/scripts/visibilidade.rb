#coding : utf-8

class Pessoa
  attr_accessor :nome, :sobrenome ,:idade
  
  def initialize(nome, idade, sobrenome)
    @nome, @idade, @sobrenome = nome, idade, sobrenome  
  end

  def saudacao
    puts "Olá #{@nome}"
    puts "É maior de idade ? : #{maior_idade?}"  
  end

protected

  def adeus
    puts "Adeus #{@nome}"
  end

  def maior_idade?
    (@idade > 18) ? 'Sim' : 'Não'  
  end
  
end


pessoa = Pessoa.new('Luiz', 22, 'Marrone')
pessoa.saudacao
#pessoa.maior_idade?
#pessoa.adeus

=begin 

class MinhaClasse
  
  def diga_oi
    puts "Dizendo oi...."
  end

protected 
  
  def diga_adeus
   puts "Dizendo adeus..."
  end

private
  #nao aceita um receiver explicito .. no caso o self
  def dizendo_amem
    puts "Dizendo amem..."
  end


end

mc = MinhaClasse.new

mc.oi

=end
