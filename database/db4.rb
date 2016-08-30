require "sequel"
require "sqlite3"

Sequel.sqlite(database: "alunos.sqlite3") do |con|
  con[:alunos].each do |row|
    puts "id: #{row[:id]} nome: #{row[:nome]}"
  end
end
