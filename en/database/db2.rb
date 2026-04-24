require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  puts con[:students].where(id: 4).update(name: "Mario")
end
