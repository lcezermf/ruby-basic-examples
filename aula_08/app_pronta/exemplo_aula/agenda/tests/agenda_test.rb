require 'test/unit'
require 'agenda'

class AgendaTest < Test::Unit::TestCase

  def setup
    @contato = Agenda::Contatos.new('Luiz', '(45) 9988-8899', 'lccezinha@gmail.com') 
    @lista_contatos = Agenda::ListaContatos.new 
  end

  def test_should_be_kind_of_module
    assert_kind_of Module, Agenda  
  end  

  def test_should_be_instance_of
    assert_instance_of Agenda::Contatos, @contato
    assert_instance_of Agenda::ListaContatos, Agenda::ListaContatos.new  
  end

  def test_should_return_values
    assert_equal 'Luiz', @contato.name
    assert_equal '(45) 9988-8899', @contato.phone
    assert_equal 'lccezinha@gmail.com', @contato.email
  end

  def test_should_have_this_patterns
    assert_match /\([0-9]{2}\)\s[0-9]{4}-[0-9]{4}/, @contato.phone, 'incorrect format for phone'
    assert_match /([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})/, @contato.email, 'incorrect format for email'
  end

  def test_should_be_an_empty_array
    assert_equal [], @lista_contatos.contatos
  end

  def test_should_respond_to_adicionar
    assert_respond_to @lista_contatos, :adicionar, 'do not respond to method'
  end

  def test_should_add_contact
    assert @lista_contatos.adicionar(@contato)  
  end
    

end
