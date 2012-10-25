#coding : utf-8

class Veiculo
  
  attr_reader :passageiros, :modelo, :marca

  def initialize(modelo, marca)
    @modelo, @marca = modelo, marca
  end  

  def ligar
    puts 'Ligando...'  
  end

  def desligar
    puts 'Desligando...'
  end

end





=begin

class Veiculo
  attr_reader :passageiros

  def initialize(passageiros)
    @passageiros = passageiros
  end

  def ligar
    puts "ligando o veículo..."
  end

  def desligar
    puts "desligando veículo..."
  end

end

=end
