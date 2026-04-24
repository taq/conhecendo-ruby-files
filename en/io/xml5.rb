require "builder"

students = {
  1 => "John",
  2 => "Joe",
  3 => "Anthony",
  4 => "Mary"
}

xml = Builder::XmlMarkup.new(indent: 2)
xml.instruct!

xml.students do
  students.each do |key, value|
    xml.student do
      xml.id key
      xml.name value
    end
  end
end

# para gravar o arquivo
File.open("students.xml", "w") do |file|
  file << xml.target!
end
