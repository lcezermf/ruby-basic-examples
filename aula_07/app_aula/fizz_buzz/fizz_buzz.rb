class FizzBuzz 
  
  def retornar(num)
    if multiplo_de_tres_e_cinco? num
      return 'fizz_buzz'    
    elsif multiplo_de_cinco? num
      return 'buzz'
    elsif multiplo_de_tres? num
      return 'fizz'
    end
    num
  end

protected

  def multiplo_de_tres_e_cinco?(num)
    num.modulo(3).eql?(0) && num.modulo(5).eql?(0)  
  end

  def multiplo_de_cinco?(num)
    num.modulo(5).eql?(0) ? true : false  
  end

  def multiplo_de_tres?(num)
    num.modulo(3).eql?(0) ? true : false  
  end

end
