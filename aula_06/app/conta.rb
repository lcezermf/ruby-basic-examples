class Conta
  
  attr_reader :numero, :agencia, :saldo, :cliente

  def initialize(numero, agencia, cliente)
    @numero, @agencia, @cliente = numero, agencia, cliente
    @saldo = saldo_inicial(cliente)
  end

  def depositar(valor)
    @saldo += valor
  end

  def sacar(valor)
    if valor > @saldo
      raise RuntimeError, 'Saldo insuficiente!'    
    else
      @saldo -= valor
    end
  end  

  def to_s
    "Agencia : #{@agencia}, Num #{@numero}, Saldo : #{@saldo}"  
  end

protected
  
  def saldo_inicial(cliente)
    cliente.instance_of?(ClienteComum) ? 0.0 : cliente.credito_especial? 
  end
  

end
