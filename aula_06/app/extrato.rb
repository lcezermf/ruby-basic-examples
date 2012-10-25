load 'email.rb'

class Extrato
  
  attr_reader :conta
  
  def initialize(conta)
    @conta = conta 
    gerar_extrato 
  end

  def gerar_extrato
    criar_diretorios_extratos
    File.open("extratos/#{@conta.cliente.nome_para_extrato}/extrato_#{Time.now.strftime("%d%m%y_%H%M%S")}.txt", 'w') do |file|
      file.puts "Extrato do dia : #{Time.now.strftime("%d/%m/%y %H:%M")}"
      file.puts "Cliente : #{@conta.cliente.nome}"
      file.puts "Tipo de Conta : #{@conta.cliente.tipo_conta}"
      file.puts "Saldo Atual : #{saldo}"
      file.puts "------------------" 
      puts "Gerando Extrato..."
      Email::enviar_extrato(@conta)
    end
  end

  def saldo
    @conta.saldo  
  end

  def cliente_nome
    @conta.cliente.nome
  end

protected

  def criar_diretorios_extratos
    Dir.mkdir 'extratos' unless File.directory? 'extratos'  
    Dir.mkdir "extratos/#{@conta.cliente.nome_para_extrato}" unless File.directory?("extratos/#{@conta.cliente.nome_para_extrato}")  
  end

end
