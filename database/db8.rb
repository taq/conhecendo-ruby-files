require 'sequel'
require 'sqlite3'

Sequel.sqlite(database: 'curso.sqlite3') do |con|
  p con[:alunos].columns
  p con.schema(:alunos)
end
