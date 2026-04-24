require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  p con[:students].columns
  p con.schema(:students)
end
