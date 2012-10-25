#coding : utf-8


=begin
	
# => modos de operação

'r'  => Abre para leitura, modo padrão.
'r+' => Abre para leitura e edição, começa no início do arquivo, falha se o arq não existe
'w'  => Abre para edição, cria um novo arquivo ou truca um existente
'w+' => O mesmo que 'w', mas tambem abre para leitura do arquivo
'a'  => Abre para edição, mas anexa ao final do arquivo
'a+' => O mesmo que 'a', mas tambem permite leitura

# => Classe : Dir

Dir.mkdir # => cria um novo diretório
Dir.rmdir # => deleta um diretório
Dir.pwd # => exibe o diretório atual
Dir.chdir['dir'] # => muda para o diretório informado
Dir.entries
Dir.foreach(dir) { } # => percore o diretório passando um bloco


# => Classe : File

File.file?(file) # => o arquivo é existente ?
File.directory?(dir) # => é um diretório existente ?

File.zero?(file) # => true se o arquivo estiver vazio
File.size(file) # => tamanho do arquivo

File.readable?(file) # => permissão de leitura
File.writeable?(file) # => permissão de escrita
File.executable?(file) # => permissão de execução

File.mtime(file) # => última hora de modificação
File.atime(file) # => última hora de acesso

File.rename('nome_atual', 'novo_nome')

File.delete('arquivo')

File.open('exemplo.txt', 'w') do |file|
	file.puts "Olá Ruby !!!"
end


File.open('exemplo.txt', 'a') do |file|
	10.times { |num| file.puts "Olá amigo : #{num}" }
end

File.open('exemplo.txt', 'r') do |file|
	puts file.read
end

File.readlines('exemplo.txt', 'r').each do |line|
	puts line
end

=end

