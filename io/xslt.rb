require "xml/xslt"

xslt = XML::XSLT.new
xslt.xsl = "alunos.xsl"
xslt.xml = "alunos.xml"
xslt.save("alunos.html")
puts xslt.serve
