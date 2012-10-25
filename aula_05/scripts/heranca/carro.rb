#coding : utf-8
class Veiculo
  @@contador = 0
  attr_reader :passageiros, :modelo, :marca

  def initialize(modelo, marca)
    @modelo, @marca = modelo, marca
    @@contador += 1  
  end  

  def self.quantos
    @@contador  
  end

  def ligar
    puts 'Ligando...'  
  end

  def desligar
    puts 'Desligando...'
  end

end

##################


class Moto < Veiculo
 
  attr_reader :cilindrada
  
  def initialize(modelo, marca, cilindrada)
    super(modelo, marca)
    @cilindrada = cilindrada  
  end

  def ligar
    puts 'ligando a minha moto....'  
  end
 
end

class Carro < Veiculo
  
  attr_reader :ano, :kilometragem, :passageiros
  
  def initialize(modelo, marca, ano, kilometragem, passageiros)
    super(modelo, marca)
    @ano, @kilometragem, @passageiros = ano, kilometragem, passageiros  
  end
  
end

carro = Carro.new('Gol', 'VW', 2002, 1000, 5)
puts carro.ano
puts carro.modelo
carro.ligar

moto = Moto.new('Biz', 'honda', 25)
puts moto.modelo
puts moto.ligar

puts Veiculo.quantos



=begin 

load 'veiculo.rb'

class Carro < Veiculo
  
  attr_reader :modelo

  def initialize(passageiros, modelo)
    super(passageiros)
    @modelo = modelo
  end

end

carro = Carro.new('monza', 5)

puts carro.modelo
puts carro.passageiros

=end
