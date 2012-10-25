#coding : utf-8

# {} Hash.new # => cria um novo hash

=begin

hash[:chave] = valor # => cria uma nova chave e associa o valor a ela dentro do hash
hash.first # => busca o primeiro elemento no hash => retorna uma chave e seu valor
hash.each { |k, v| puts "#{k}, #{v}" } # => percorrendo um hash exibindo sua chave e respectivo valor
hash[:chave] # => exibe valor da respectiva chave
hash.include? :chave # => true ou false, se o hash conter a chave passada
hash.has_key? :chave # => true ou false, se o hash conter a chave passada
hash.has_value? :value # => true ou false, se o hash conter o valor passado
hash.delete :chave # => delete a chave e o valor associado

=end

