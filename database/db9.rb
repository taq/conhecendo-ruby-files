require 'active_record'

# estabelecendo a conexão
ActiveRecord::Base.establish_connection({
  adapter:  'sqlite3',
  database: 'alunos.sqlite3'
})

# criando o mapeamento da classe com a tabela
# (espera aí é só isso???)
class Aluno < ActiveRecord::Base; end

# pegando a coleção e usando o seu iterador
Aluno.order(:id).each do |aluno|
  puts "id: #{aluno.id} nome: #{aluno.nome}"
end

# procurando um aluno específico
aluno = Aluno.find(3)
puts "Encontrei #{aluno.nome}"

# atualizando o nome de um aluno
aluno.update(nome: 'Danilo')
