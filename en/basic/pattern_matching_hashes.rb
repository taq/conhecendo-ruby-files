translations = { original: :br, texto_original: 'Bom dia', destino: :en, texto_traduzido: 'Good morning' }

case translations
in { original: :br, texto_original: texto_original, destino: :es, texto_traduzido: texto_traduzido }
  puts "'#{texto_original}' in Spanish is '#{texto_traduzido}'"
in { original: :br, texto_original: texto_original, destino: :en, texto_traduzido: texto_traduzido }
  puts "'#{texto_original}' in English is '#{texto_traduzido}'"
else
  puts "No translation"
end
