load 'cliente_comum.rb'
load 'cliente_vip.rb'
load 'conta.rb'
load 'extrato.rb'


cliente_comum = ClienteComum.new('Luiz Cezer', 22, '998877445566', '112233445566', 'masculino', '45 99858693', 'lccezinha@gmail.com')
conta = Conta.new(1, 111, cliente_comum)
conta.depositar 100
conta.sacar 20
puts conta.saldo
extrato = Extrato.new(conta)
cliente_comum.adicionar_extrato(extrato)
sleep(2)

conta_dois = Conta.new(1, 111, cliente_comum)
conta_dois.depositar 250
conta_dois.sacar 30
puts conta_dois.saldo
extrato_dois = Extrato.new(conta_dois)
cliente_comum.adicionar_extrato(extrato_dois)
sleep(2)

cliente_comum.lista_extratos

puts "\n ----- \n"

cliente_vip = ClienteVip.new('Cezer Filho', 22, '998877445566', '112233445566', 'masculino', '45 99858693', 'lccezinha@gmail.com', false)
conta_tres = Conta.new(2, 111, cliente_vip)
conta_tres.depositar 150
extrato_tres = Extrato.new(conta_tres)
cliente_vip.adicionar_extrato(extrato_tres)
sleep(2)
cliente_vip.lista_extratos

puts "\n ----- \n"

