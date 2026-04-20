traducoes = [:br, 'Bom dia', :en, 'Good morning']

case traducoes
in [:br, texto_br, :es, texto_es]
  puts "'#{texto_br}' em Espanhol é '#{texto_es}'"
in [:br, texto_br, :en, texto_en]
  puts "'#{texto_br}' em Inglês é '#{texto_en}'"
else
  puts "Sem tradução"
end
