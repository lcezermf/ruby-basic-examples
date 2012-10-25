#coding : utf-8
load 'cliente.rb'

class ClienteComum < Cliente
  
  def initialize(nome, idade, rg, cpf, sexo, telefone, email)
    super(nome, idade, rg, cpf, sexo, telefone, email) 
  end

  def to_s
    "Nome : #{@nome}, Idade : #{@idade}, RG : #{@rg}, CPF : #{@cpf}, Sexo : #{@sexo}, Telefone : #{@telefone}, Email : #{@email}" 
  end

end
