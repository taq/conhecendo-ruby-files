require "sequel"
require "sqlite3"

Sequel.sqlite(database: "alunos.sqlite3") do |con|
  con[:alunos].insert(id: 5, nome: "Teste")
  puts con[:alunos].where(id: 5).delete
end
