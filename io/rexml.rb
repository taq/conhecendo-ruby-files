require "rexml/document"

doc  = REXML::Document.new
decl = REXML::XMLDecl.new("1.0", "UTF-8")
doc.add decl

root = REXML::Element.new("alunos")
doc.add_element root

alunos = [ 
  [1, "João"],
  [2, "José"],
  [3, "Antonio"],
  [4,"Maria"]
]

alunos.each do |info|
  aluno = REXML::Element.new("aluno")
  id    = REXML::Element.new("id")
  nome  = REXML::Element.new("nome")

  id.text   = info[0]
  nome.text = info[1]

  aluno.add_element id
  aluno.add_element nome
  root.add_element aluno
end
doc.write(File.open("alunos.xml", "w"))
