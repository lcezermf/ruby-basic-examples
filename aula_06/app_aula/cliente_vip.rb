#coding : utf-8
load 'cliente.rb'

class ClienteVip < Cliente
  
  attr_reader :credito_especial

  def initialize(nome, idade, rg, cpf, sexo, telefone, email, credito_especial)
    super(nome, idade, rg, cpf, sexo, telefone, email)
    @credito_especial = credito_especial
  end
  
  def to_s
    "Nome : #{@nome}, Idade : #{@idade}, RG : #{@rg}, CPF : #{@cpf}, Telefone : #{@telefone}, Email : #{@email}, Credito Especial ? #{@credito_especial}"  
  end
  
  def credito_especial?
    @credito_especial ? 100.0 : 50.0    
  end  
  
end
