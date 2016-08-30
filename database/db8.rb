require "sequel"
require "sqlite3"

Sequel.sqlite(database: "alunos.sqlite3") do |con|
  p con[:alunos].columns
  p con.schema(:alunos)
end
