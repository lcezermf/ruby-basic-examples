#coding : utf-8
class Cliente
  
  attr_reader :nome, :idade, :rg, :cpf, :sexo, :telefone, :email, :extratos

  def initialize(nome, idade, rg, cpf, sexo, telefone, email)
    @nome, @idade, @rg, @cpf, @sexo, @telefone, @email, @extratos = nome, idade, rg, cpf, sexo, telefone, email, []
  end
  
  def nome_para_extrato
    nome.downcase.gsub(' ', '_')  
  end

  def tipo_conta 
    self.instance_of?(ClienteComum) ? 'Cliente Comum' : 'Cliente Vip'
  end

  def adicionar_extrato(extrato)
    @extratos << extrato if extrato
  end

  def lista_extratos
    unless @extratos.empty?
      @extratos.each do |extrato|
        puts "Listando extratos..."
        puts "Extrato para cliente : #{extrato.cliente_nome}"
        puts "Saldo do extrato : #{extrato.saldo}"
      end
    else
      puts "Não possui extratos..."
    end  
  end

end
