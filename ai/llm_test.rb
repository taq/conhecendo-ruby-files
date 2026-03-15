require 'ruby_llm'

# configurando o agente
RubyLLM.configure do |config|
  config.openai_api_key = ENV['OPENAI_API_KEY']
end

# criando o chat
chat = RubyLLM.chat

# perguntando via texto
puts "Resposta de texto:"
puts chat.ask("Me responda em 1 parágrafo as características da linguagem Ruby").content

# interpretando imagens
puts "\nInterpretando uma imagem:"
puts chat.ask("O que você vê nessa imagem?", with: "ai.jpg").content

# interpretando áudio
puts "\nInterpretando um arquivo de som:"
puts chat.ask("O que está sendo falado nesse áudio?", with: "ai.wav").content
puts RubyLLM.transcribe "ai.wav"

puts "\nExplicando código:"
puts chat.ask("Explique esse código", with: File.basename(__FILE__)).content
