require "rexml/document"

doc   = REXML::Document.new(File.open("students.xml"))
root  = doc.root
student = root.elements["student[2]"]

puts "#{student.elements['id'].text} - #{student.elements['name'].text}"
