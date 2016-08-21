require "nokogiri"

doc = Nokogiri::XML(File.open("alunos.xml"))
doc.search("aluno").each do |node|
  puts node.search("id").text + ":" + node.search("nome").text
end
