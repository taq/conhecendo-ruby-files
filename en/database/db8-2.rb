require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  con.fetch("select * from students order by name") do |row|
    puts "id: #{row[:id]} name: #{row[:name]}"
  end
end

