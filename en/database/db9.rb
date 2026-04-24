require "active_record"

# stablishing connection
ActiveRecord::Base.establish_connection({
  adapter:  "sqlite3",
  database: "course.sqlite3"
})

# creating the object mapping to the table
# (wait, is just this???)
class Student < ActiveRecord::Base; end

# getting collection and using its iterator
Student.order(:id).each do |student|
  puts "id: #{student.id} name: #{student.name}"
end

# searching for a specific student
student = Student.find(3)
puts "Found #{student.name}"

# updating a student name
student.update(name: "Danilo")
