require "sequel"
require "sqlite3"

Sequel.sqlite(database: "alunos.sqlite3") do |con|
  row = con[:alunos].first
  puts "id: #{row[:id]} nome: #{row[:nome]}"
end
