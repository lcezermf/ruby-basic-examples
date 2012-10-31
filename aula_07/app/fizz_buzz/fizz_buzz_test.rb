require "test/unit"
require "./fizz_buzz.rb"

class FizzBuzzTest < Test::Unit::TestCase
  
  #deve retornar 1 OK
  #deve retornar 2 OK
  #deve retornar 'fizz' quando for múltiplo de 3 OK
  #deve retornar 'buzz' quando form múltiplo de 5 OK
  #deve retornar 'fizz_buzz' quando form múltiplo de 3 e de 5 OK

  def setup
    @fizz_buzz = FizzBuzz.new  
  end

  def test_return_1
    assert_equal(1, @fizz_buzz.falar(1) )
  end

  def test_return_2
    assert_equal(2, @fizz_buzz.falar(2), "should return 2")  
  end

  def test_return_fizz
    assert_equal('fizz', @fizz_buzz.falar(3), "should return 'fizz'")  
  end

  def test_return_buzz
    assert_equal('buzz', @fizz_buzz.falar(5), "should return 'buzz'")  
  end

  def test_return_fizz_buzz
    assert_equal('fizz_buzz', @fizz_buzz.falar(15), "should return 'fizz_buzz'")  
  end
    
  
end
