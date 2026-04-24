require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  row = con[:students].first
  puts "id: #{row[:id]} name: #{row[:name]}"
end
