require 'sequel'
require 'sqlite3'

Sequel.sqlite(database: 'curso.sqlite3') do |con|
  puts con[:alunos].where(id: 4).update(nome: 'Mário')
end
