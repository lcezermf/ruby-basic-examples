class FizzBuzz

  def falar(num)
    if multiplo_cinco_e_tres?(num)
      'fizz_buzz'
    elsif multiplo_cinco?(num)
      'buzz' 
    elsif multiplo_tres?(num)
      'fizz'
    else
      num
    end

  end

protected
  
  def multiplo_cinco?(num)
    num.modulo(5).eql?(0) ? true : false
  end
  
  def multiplo_tres?(num)
    num.modulo(3).eql?(0) ? true : false 
  end

  def multiplo_cinco_e_tres?(num) 
    ( multiplo_cinco?(num) && multiplo_tres?(num) ) ? true : false  
  end
end
