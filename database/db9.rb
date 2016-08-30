require "active_record"

# estabelecendo a conexão
ActiveRecord::Base.establish_connection({
  adapter:  "sqlite3",
  database: "alunos.sqlite3",
})

# criando o mapeamento da classe com a tabela
# (espera aí é só isso???)
class Aluno < ActiveRecord::Base
end

# pegando a coleção e usando o seu iterador
for aluno in Aluno.all
  puts "id: #{aluno.id} nome: #{aluno.nome}"
end

# atualizando o nome de um aluno
aluno = Aluno.find(3)
puts "encontrei #{aluno.nome}"
aluno.nome = "Danilo"
aluno.save
