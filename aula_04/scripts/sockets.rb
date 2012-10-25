# coding : utf-8
require 'socket'

TCPSocket.open('localhost', 2000) do |socket|
	mensagem = gets
	socket.puts(mensagem) # enviar uma mensagem pro servidor
	puts socket.gets # mensagem recebida do servidor
end
