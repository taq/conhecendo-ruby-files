traducoes = { original: :br, texto_original: 'Bom dia', destino: :en, texto_traduzido: 'Good morning' }

case traducoes
  in { original: :br, texto_original: texto_original, destino: :es, texto_traduzido: texto_traduzido }
    puts "'#{texto_original}' em Espanhol é '#{texto_traduzido}'"
  in { original: :br, texto_original: texto_original, destino: :en, texto_traduzido: texto_traduzido }
    puts "'#{texto_original}' em Inglês é '#{texto_traduzido}'"
  else
    puts "Sem tradução"
end

