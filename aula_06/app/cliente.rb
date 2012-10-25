#coding : utf-8

class Cliente
  attr_reader :nome, :idade, :rg, :cpf, :sexo, :telefone, :email, :extratos

  def initialize(nome, idade, rg, cpf,sexo, telefone, email)
    @nome, @idade, @rg, @cpf, @sexo, @telefone, @email, @extratos = nome, idade, rg, cpf, sexo, telefone, email, []
  end
  
  def tipo_conta
    self.instance_of?(ClienteComum) ? 'Cliente Comum' : 'Cliente Vip'   
  end

  def nome_para_extrato
    nome.downcase.gsub(' ', '_')  
  end

  def adicionar_extrato(extrato)
    @extratos << extrato if extrato
  end

  def lista_extratos
    unless @extratos.empty?
      @extratos.each do |extrato|
        puts "\n\nListando Extratos ..."
        puts "Extrato para #{extrato.cliente_nome}"
        puts "Extrato no valor de #{extrato.saldo}"      
      end
    else
      puts "Você ainda não possui extratos"
    end
  end

end
