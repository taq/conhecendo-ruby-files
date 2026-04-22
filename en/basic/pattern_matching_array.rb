translations = [:br, 'Bom dia', :en, 'Good morning']

case translations
in [:br, texto_br, :es, texto_es]
  puts "'#{texto_br}' in Spanish is '#{texto_es}'"
in [:br, texto_br, :en, texto_en]
  puts "'#{texto_br}' in English is '#{texto_en}'"
else
  puts "No translation"
end
