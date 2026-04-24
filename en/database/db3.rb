require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  con[:students].insert(id: 5, name: "Test")
  puts con[:students].where(id: 5).delete
end
