class Programador

  attr_reader :nome, :experiencia, :salario, :horas_extras
  
  @@cargos_salario = { :junior => 1500.00, :pleno => 3000.00, :senior => 8000.00 }

  def initialize(nome, experiencia)
    @nome, @experiencia, @salario, @horas_extras = nome, experiencia, seleciona_salario(experiencia), 0
  end

  def acrescentar_valor_por_horas_extras(qtd_horas)
    qtd_horas * 15.00
  end

  def adicionar_horas_extras(num)
    @horas_extras += num  
  end

  def descontar_cinco_porcento
    salario * 0.95
  end

  def acrescimo_salarial
    salario + ( salario * 0.1 )  
  end

protected

  def seleciona_salario(experiencia)
    @@cargos_salario[experiencia]
  end

end

