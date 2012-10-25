load 'email.rb'

class Extrato
  
  attr_reader :conta 
  
  def initialize(conta)
    @conta = conta
    criar_diretorios_extratos
    gerar_extrato  
  end

  def gerar_extrato
    File.open("extratos/#{@conta.cliente.nome_para_extrato}/extrato__#{Time.now.strftime("%d_%m_%y___%H%M%S")}.txt", "w") do |file|
      file.puts "Extrato do dia : #{Time.now.strftime("%d/%m/%y %H:%M")}"
      file.puts "Cliente : #{@conta.cliente.nome}"   
      file.puts "Tipo Conta : #{@conta.cliente.tipo_conta}"
      file.puts "Saldo Atual R$ : #{saldo}"
      file.puts "-----------------\n"
      puts "Gerando Extrato..."
      Email::enviar_extrato(conta)
      sleep(2)
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
    Dir.mkdir "extratos/#{@conta.cliente.nome_para_extrato}" unless File.directory? "extratos/#{@conta.cliente.nome_para_extrato}"
  end


end
