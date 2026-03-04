require 'sequel'
require 'sqlite3'

Sequel.sqlite(database: 'alunos.sqlite3') do |con|
  con.fetch("select * from alunos order by nome") do |row|
    puts "id: #{row[:id]} nome: #{row[:nome]}"
  end
end

