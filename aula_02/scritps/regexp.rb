#coding : utf-8


frase = 'Moro na cidade de Medianeira, que fica no paraná seu CEP é 85.884-000 e fica na região Oeste'
regxep_cep = /[0-9]{2}.[0-9]{3}-[0-9]{3}/

frase =~ regxep_cep

puts $~.to_s 

=begin 

/ruby/ # => iguala um valor determinado ao padrão 'ruby'
/[Rr]uby/
/[0-9]/

frase = 'Olá . meu nome .. é Luiz .. e tenho . 22 anos .. . '
frase.sub('.','').sub('..', '')
frase.gsub('.','').gsub('..', '')
frase.gsub(//,'')

cep = 85.875-000
/[0-9]{2}.[0-9]{3}-[0-9]{3}/

=end

