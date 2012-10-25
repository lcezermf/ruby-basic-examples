#coding : utf-8
require 'socket'

server = TCPServer.open(2000)
puts "Servidor iniciado..."
loop do
	cliente = server.accept #aceita conexão de um cliente
	puts "Mensagem do cliente : #{cliente.gets} \n"
	cliente.puts 'Conectado por Socket!!!' #envia msg pro cliente
	cliente.close
end
