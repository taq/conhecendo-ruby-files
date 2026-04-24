require "rexml/document"

doc = REXML::Document.new(File.open("students.xml"))

doc.elements.each("students/student") do |student|
  puts "#{student.elements['id'].text} - #{student.elements['name'].text}"
end
