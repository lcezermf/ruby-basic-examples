class Programador

  attr_reader :nome, :experiencia, :salario, :horas_extras
  
  @@cargos_salario = { :junior => 1500.00, :pleno => 3000.00, :senior => 8000.00 }

  def initialize(nome, experiencia)
    @nome, @experiencia, @salario, @horas_extras = nome, experiencia, seleciona_salario(experiencia), 0
  end

  def adicionar_hora_extra(qtd)
    @horas_extras += qtd  
  end

  def acrescimo_salario_por_hora(horas)
    15.00 * horas  
  end

  def salario_desconto_5_porcento
    salario * 0.95
  end

  def salario_com_bonus
    salario + ( salario * 0.1 )  
  end

protected

  def seleciona_salario(experiencia)
    @@cargos_salario[experiencia.to_sym]
  end

end

