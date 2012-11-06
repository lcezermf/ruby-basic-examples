require "agenda/version"

module Agenda

  class ListaContatos
    
    attr_reader :contatos

    def initialize
      @contatos = []    
    end   
    
    def adicionar(contato)
      @contatos << contato 
    end
  
    def listar_contatos
      @contatos.each { |contato| puts "#{contato.name} - #{contato.phone} - #{contato.email} \n" } unless @contatos.empty?   
    end

  end

  class Contatos
  
    attr_reader :name, :phone, :email

    def initialize(name, phone, email)
      @name, @phone, @email = name, phone, email
    end    

  end

end
