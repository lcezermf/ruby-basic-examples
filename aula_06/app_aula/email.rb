#coding : utf-8
require 'gmail'

module Email
  
  def self.enviar_extrato(conta)
    config   = load_config(conta)
    mensagem = montar_mensagem(config, conta)
    enviar_email(config, mensagem)
  end

private 

  def self.enviar_email(config, mensagem)
    Gmail.connect(config[:usuario], config[:senha]) do |gmail|
      gmail.deliver do 
        to config[:to_email]
        subject config[:assunto]
        text_part { body(mensagem) }      
      end
    end
  end   

  def self.montar_mensagem(config, conta)
      <<-EOF      
        From : #{config[:from_nome]} #{config[:from_email]}
        To   : #{config[:to_nome]} #{config[:to_email]}
        Subject : #{config[:assunto]}
        Content-type: text/plain
        Date: #{Time.new.strftime("%d/%m/%Y")}
        
        Ola Cliente : #{conta.cliente.nome}, você retirou um novo extrato, e seu saldo atual é #{conta.saldo}
      EOF
  end

  def self.load_config(conta)
    {
      :from_nome => 'Gerente Master',
      :from_mail => 'gerente@master.com.br',
      :to_nome   => conta.cliente.nome,
      :to_email  => conta.cliente.email,
      :servidor  => 'smtp.gmail.com',
      :porta     => 587,
      :dominio   => 'gmail.com',
      :usuario   => 'lccezinha@gmail.com',
      :senha     => 'aaa',
      :assunto   => 'Seu saldo no Banco Ruby'
    }
  end


end
