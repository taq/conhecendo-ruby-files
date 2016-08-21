require "builder"

alunos = { 
  1 => "João",
  2 => "José",
  3 => "Antonio",
  4 => "Maria"
}

xml = Builder::XmlMarkup.new(indent: 2)
xml.instruct!

xml.alunos do
  alunos.each do |key, value|
    xml.aluno do
      xml.id key
      xml.nome value
    end
  end
end

# para gravar o arquivo
File.open("alunos.xml", "w") do |file|
  file << xml.target!
end
