require 'nokogiri'

# carrega os arquivos
xml_doc = Nokogiri::XML(File.read("alunos.xml"))
xsl_doc = Nokogiri::XSLT(File.read("alunos.xsl"))

# aplica a transformação
resultado = xsl_doc.transform(xml_doc)

# salva o resultado
File.write("alunos.html", resultado.to_s)

# exibe o resultado
puts resultado.to_s
