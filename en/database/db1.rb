require "sequel"

Sequel.sqlite(database: "course.sqlite3") do |con|
  con.run("drop table if exists students")

  sql = <<FIM
create table students (
id integer primary key autoincrement not null,
name varchar(50) not null)
FIM
  con.run(sql)

  con[:students].insert(id: 1, name: "John")
  con[:students].insert(id: 2, name: "Joe")
  con[:students].insert(id: 3, name: "Anthony")
  con[:students].insert(id: 4, name: "Mary")
end
