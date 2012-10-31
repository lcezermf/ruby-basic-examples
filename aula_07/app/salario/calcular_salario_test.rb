require "test/unit"
require "./programador"

class CalculaSalarioTest < Test::Unit::TestCase
  
  #Testar se retorna o valor esperado => se for um :junior => 1500.0 OK
  #Retornar as horas extras atuais OK
  #Acrescentar 15.00 reais por hora extra trabalhada OK
  #Retorna novas horas extras OK
  #Se o Salario do Programador Junior passar de 1800.00, descontar 5%
  #Se o programador fizer mais do que 10 horas extras, dar um bonus de 10% do salário

  def setup
    @junior = Programador.new('Luiz', :junior)
    @pleno  = Programador.new('Cezinha', :pleno)
    @senior = Programador.new('Ceezer', :senior)
    @junior_com_hora_extra = Programador.new('Luiz', :junior)
    @junior_com_hora_extra.adicionar_hora_extra(15)
  end

  def test_deve_retornar_valores_corretos
    assert_equal(1500.00, @junior.salario, 'deve retornar 1500.00')
    assert_equal(3000.00, @pleno.salario, 'deve retornar 3000.00')
    assert_equal(8000.00, @senior.salario, 'deve retornar 8000.00')
  end

  def test_horas_extras_iniciais
    assert_equal(0, @junior.horas_extras)
  end

  def test_acrescenta_hora_extra
    assert_equal(3, @junior.adicionar_hora_extra(3))
    assert_equal(10, @junior.adicionar_hora_extra(7))  
  end

  def test_acrescimo_no_salario
    assert_equal(60.00, @junior.acrescimo_salario_por_hora(4))
  end
    
  def test_horas_extras_finais
    assert_equal(3, @junior.adicionar_hora_extra(3))
    assert_equal(3, @junior.horas_extras)
  end
  
  def test_desconta_valor_salario
    assert_equal(2850.00, @pleno.salario_desconto_5_porcento)
  end

  def test_bonus_salario
    assert_equal(15, @junior_com_hora_extra.horas_extras)
    assert_equal(1650, @junior_com_hora_extra.salario_com_bonus)
  end

end
