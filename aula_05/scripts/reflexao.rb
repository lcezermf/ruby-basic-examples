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
puts carro.respond_to? :combustivel

=begin

class # => retorna a classe do objeto

instance_of?  # => retorna true/false se o objeto foi uma instancia direta da classe

kind_of? # => retorna true/false se o objeto tive como classe ancestral a classe passada

methods # => métodos da classe

superclass # => retorna a Super Classe

respond_to? # => retorna true/false se um objeto responde a determinado método

instance_variables # => retorna as variaveis de instancia do objeto

public_methods # => retorna os métodos públicos 

public_methods(false) # => retorna os métodos públicos excluindo o herdados

protected_methods  # => retorna os métodos protegidos

private_methods  # => retorna os métodos privados

=end
