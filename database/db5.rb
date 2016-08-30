require "sequel"
require "sqlite3"

Sequel.sqlite(database: "alunos.sqlite3") do |con|
  rows = con[:alunos].all
  puts "#{rows.size} registros recuperados"
  rows.each do |row| 
    puts "id: #{row[:id]} nome: #{row[:nome]}"
  end
end
