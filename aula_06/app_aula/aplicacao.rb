load 'cliente_comum.rb'
load 'cliente_vip.rb'
load 'conta.rb'
load 'extrato.rb'

cliente_comum = ClienteComum.new('Luiz Cezer', 22, '99999999', '8888888', 'masculino', '459988774455', 'lccezinha@gmail.com')
cliente_vip = ClienteVip.new('Luiz Cezer', 22, '99999999', '8888888', 'masculino', '459988774455', 'lccezinha@gmail.com', true)

conta_comum = Conta.new(1, 1111, cliente_comum)
conta_comum.depositar 100
conta_comum.depositar 50
conta_comum.sacar 30
puts conta_comum.saldo
extrato = Extrato.new(conta_comum)
cliente_comum.adicionar_extrato(extrato)

conta_comum_dois = Conta.new(1, 1111, cliente_comum)
conta_comum_dois.depositar 1000
conta_comum_dois.depositar 100
extrato_dois = Extrato.new(conta_comum_dois)
cliente_comum.adicionar_extrato(extrato_dois)

cliente_comum.lista_extratos


