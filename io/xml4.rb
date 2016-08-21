require "rexml/document"

doc   = REXML::Document.new(File.open("alunos.xml"))
root  = doc.root
aluno = root.elements["aluno[2]"]
puts "#{aluno.elements['id'].text}-#{aluno.elements['nome'].text}"
