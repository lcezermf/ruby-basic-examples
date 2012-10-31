require 'test/unit'
require './fizz_buzz'

class FizzBuzzTest < Test::Unit::TestCase

  # Deve retornar 1, quando passar 1 como arg OK
  # Deve retornar 2, quando passar 2 como arg OK
  # Deve retornar 'fizz', quando passar 3 como arg OK
  # Deve retornar 'buzz', quando passar 5 como arg OK 
  # Deve retornar 'fizz_buzz', quando passar 15 como arg OK

  def setup
    @fizz_buzz = FizzBuzz.new  
  end

  def test_deve_retornar_um
    assert_equal(1, @fizz_buzz.retornar(1), "deveria retornar 1")
  end

  def test_deve_retornar_dois
    assert_equal(2, @fizz_buzz.retornar(2), "deveria retornar 2")
  end

  def test_deve_retornar_fizz
    assert_equal('fizz', @fizz_buzz.retornar(3), "deveria retornar 'fizz'") 
  end

  def test_deve_retornar_buzz
    assert_equal('buzz', @fizz_buzz.retornar(5), "deveria retornar 'buzz'") 
  end

  def test_deve_retornar_fizz_buzz
    assert_equal('fizz_buzz', @fizz_buzz.retornar(15), "deveria retornar 'fizz_buzz'")   
  end
   

end
