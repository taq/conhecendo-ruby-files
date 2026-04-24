require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  rows = con[:students].all
  puts "#{rows.size} records retrieved"
  rows.each do |row|
    puts "id: #{row[:id]} name: #{row[:name]}"
  end
end
