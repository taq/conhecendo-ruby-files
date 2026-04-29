translations = { original: :br, original_text: 'Bom dia', destino: :en, translated_text: 'Good morning' }

case translations
in { original: :br, original_text: original_text, destino: :es, translated_text: translated_text }
  puts "'#{original_text}' in Spanish is '#{translated_text}'"
in { original: :br, original_text: original_text, destino: :en, translated_text: translated_text }
  puts "'#{original_text}' in English is '#{translated_text}'"
else
  puts "No translation"
end
