require "test/unit"
require "./programador"

class CalculaSalarioTest < Test::Unit::TestCase
  
  #Testar se retorna o valor esperado => se for um :junior => 1500.0 OK
  #Retornar as horas extras atuais => 0 OK
  #Acrescentar 15.00 reais por hora extra trabalhada OK
  #Retorna novas horas extras OK 
  #Se o Salario do Programador Junior passar de 1800.00, descontar 5% OK
  #Se o programador fizer mais do que 10 horas extras, dar um bonus de 10% do salário

  def setup
    @junior = Programador.new('Luiz', :junior)
    @pleno  = Programador.new('Cezinha', :pleno)
    @senior = Programador.new('Ceezer', :senior)
    @junior_com_extra = Programador.new('Luiz', :junior)
    @junior_com_extra.adicionar_horas_extras(20)
  end

  def test_deve_retornar_salario_certo
    assert_equal(1500.00, @junior.salario)
    assert_equal(3000.00, @pleno.salario)
    assert_equal(8000.00, @senior.salario)
  end

  def test_horas_extras_iniciais
    assert_equal(0, @junior.horas_extras)  
  end

  def test_deve_retornar_valor_extra
    assert_equal(45, @junior.acrescentar_valor_por_horas_extras(3))
    assert_equal(150, @junior.acrescentar_valor_por_horas_extras(10))  
  end

  def test_deve_retornar_qtd_he
    assert_equal(3, @junior.adicionar_horas_extras(3))
    assert_equal(10, @junior.adicionar_horas_extras(7))  
  end

  def test_salario_maior_descontar
    assert_equal(@pleno.salario * 0.95, @pleno.descontar_cinco_porcento)  
  end

  def test_acrescenta_bonus
    assert_equal(20, @junior_com_extra.horas_extras)
    assert_equal(1650.00, @junior_com_extra.acrescimo_salarial)
  end



end
