require 'test/unit'
require 'hello_world'

class HelloWorldTest < Test::Unit::TestCase
  
  def test_should_say_hello_world
    assert_equal 'Hello World, my first gem', HelloWorld.say  
  end

end
