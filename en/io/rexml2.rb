require "rexml/document"

doc  = REXML::Document.new
decl = REXML::XMLDecl.new("1.0", "UTF-8")
doc.add decl

root = REXML::Element.new("students")
doc.add_element root

students = [
  [1, "John"],
  [2, "Joe"],
  [3, "Anthony"],
  [4, "Mary"]
]

students.each do |info|
  student = REXML::Element.new("student")
  id      = REXML::Element.new("id")
  name    = REXML::Element.new("name")

  id.text   = info[0]
  name.text = info[1]

  student.add_element id
  student.add_element name
  root.add_element student
end

formatter = REXML::Formatters::Pretty.new(2)
formatter.compact = true
formatter.write(doc, File.open("students.xml", "w"))
