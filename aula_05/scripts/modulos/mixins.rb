module Calculator
  
  def somar(n1, n2)
    n1 + n2
  end

end


class MinhaClasse
  include Calculator
end


=begin

module MeuModulo
  def self.meu_metodo_de_modulo
    puts "Sou um m茅todo de m贸dulo!"
  end
end

MeuModulo.meu_metodo_de_modulo # => Sou um m茅todo de m贸dulo!

##########

module MeuModulo
  def meu_metodo_de_intancia
    puts "Método de instância!"
  end
end

class MinhaClasse
  # Acoplando o MeuModulo
  include MeuModulo
end

# Criando uma instância de MinhaClasse
minha_classe = MinhaClasse.new

# Executando o método de instância que foi criado em MeuModulo
puts minha_classe.meu_metodo_de_intancia # => Método de instância!


=end
