require "nokogiri"

doc = Nokogiri::XML(File.open("students.xml"))

doc.search("student").each do |node|
  puts node.search("id").text + " - " + node.search("name").text
end
