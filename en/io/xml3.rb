require "rexml/document"

doc = REXML::Document.new(File.open("students.xml"))

doc.elements.to_a("//student").each do |student|
  puts "#{student.elements['id'].text} - #{student.elements['name'].text}"
end
