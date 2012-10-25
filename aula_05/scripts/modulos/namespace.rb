module MeuModulo

  def meu_upcase(nome)
    nome.upcase
  end

  def meu_downcase(nome)
    nome.downcase
  end

end

class Pessoa
  include MeuModulo
  attr_accessor :nome
  
  def diga_nome_maiusculo  
    meu_upcase @nome
  end

end

pessoa = Pessoa.new
pessoa.nome = 'Cezer'
puts pessoa.diga_nome_maiusculo


=begin

USADOS COMO NAMESPACE

def criptografar(nome)
  nome.map { |letra| "#{letra}" }.join('#')
end

def descriptografar(nome_cript)
  nome.split('#').join
end


module Criptografia
  
  def criptografar(nome)
   nome.map { |letra| "#{letra}" }.join('#')
  end

  def descriptografar(nome_cript)
    nome.split('#').join
  end

end

=end
