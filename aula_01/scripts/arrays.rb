#coding : utf-8

=begin 

[] # => retorna um []
Array.new # => retorna um []
Array.new(5) # => retorna um [nil, nil, nil, nil, nil]
Array.new(5, 'a') # => retorna um ['a','a','a','a','a']
%w() # => atalho para criar array de strings
[1, 2, 3] - [1, 2] # => [3]
array[0] ou array.first # => retorna a primeira posição
array[-1] ou array.last # => retorna a última posição
array.empty? # => true ou false, indicando se o array está vazio
array.include?(valor) # => true ou false, indicando se o array contem aquele valor passado
array.clear # => limpa o array
array.delete_if { |elemento| elemento.eql? valor } # => deleta o elemento se ele obedecer a condição
array.sort_by {} # => ordena o array
array.reverse # => inverte o array de trás pra frente
array.join(' ') # => gera uma string com os valores do array separados pelo caracater passado para o join
array.uniq # => remove duplicidade entre valores do array
array.inject { |soma, valor| } # => percorre o array e faz a soma dos valores
array.collect { |e| e if e > 2 } # => coleta dados que obedecam a condiçaõ
array.reject { |e| e if e < 2 } # => rejeita dados que obedecam a condição
array.map { |e| e.upcase } # => gera um novo array aplicando o que é passado ao objeto no bloco
 
 =end