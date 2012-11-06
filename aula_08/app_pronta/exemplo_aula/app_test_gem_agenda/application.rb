require 'agenda'

contato = Agenda::Contatos.new('Luiz', '(45) 9988-8877', 'lccezinha@gmail.com')
contato_dois = Agenda::Contatos.new('Cezinha', '(45) 9988-8877', 'cezinha@gmail.com')
contato_tres = Agenda::Contatos.new('Cezer', '(45) 9988-8877', 'cezer@gmail.com')

lista_contatos = Agenda::ListaContatos.new
lista_contatos.adicionar(contato)
lista_contatos.adicionar(contato_dois)
lista_contatos.adicionar(contato_tres)

lista_contatos.listar_contatos

