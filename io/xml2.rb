require "rexml/document"

doc = REXML::Document.new(File.open("alunos.xml"))
doc.elements.each("alunos/aluno") do |aluno|
  puts "#{aluno.elements['id'].text}-#{aluno.elements['nome'].text}"
end
