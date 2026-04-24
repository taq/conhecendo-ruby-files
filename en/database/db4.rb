require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  con[:students].each do |row|
    puts "id: #{row[:id]} name: #{row[:name]}"
  end
end
