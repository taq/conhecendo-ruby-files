require "nokogiri"

# carrega os arquivos
xml_doc = Nokogiri::XML(File.read("students.xml"))
xsl_doc = Nokogiri::XSLT(File.read("students.xsl"))

# aplica a transformação
resultado = xsl_doc.transform(xml_doc)

# salva o resultado
File.write("students.html", resultado.to_s)

# exibe o resultado
puts resultado.to_s
