require 'base64'
require 'ruby_llm'

# configurando o agente
RubyLLM.configure do |config|
  config.openai_api_key = ENV['OPENAI_API_KEY']
end

# criando o chat, vamos usar o modelo padrão
chat = RubyLLM.chat

# perguntando via texto
puts "Resposta de texto:\n"
puts chat.ask("Me responda em 1 parágrafo as características da linguagem Ruby").content

# perguntando e recebendo informações no callback
chat.on_end_message do |message|
  rsp = {
    provider: chat.model.provider,
    model: chat.model.id,
    input_tokens: message&.input_tokens || 0,
    output_tokens: message&.output_tokens || 0
  }
  puts "Mensagem recebida, estatísticas: #{rsp}"
end

puts "\nPerguntando qual a característica mais legal:\n"
puts chat.ask("Das características da linguagem Ruby, qual você acha mais legal? Responda em 1 frase.").content

# interpretando imagens
puts "\nInterpretando uma imagem:\n"
puts chat.ask("O que você vê nessa imagem?", with: "ai.jpg").content

# interpretando vídeos - se estiver utilizando o Gemini
#puts "\nInterpretando um vídeo:\n"
#puts chat.ask("O que tem nesse vídeo?", with: "ai.mp4").content

puts "\nFazendo um resumo de um PDF:\n"
puts chat.ask("Faça um resumo desse documento", with: "ai.pdf").content

puts "\nExplicando código:\n"
code_rsp = chat.ask("Explique esse código", with: File.basename(__FILE__))
puts "Explicação:"
puts code_rsp.content

# criando o chat, vamos usar o modelo com suporte para som
chat = RubyLLM.chat(model: 'gpt-4o-audio-preview')

# interpretando áudio
puts "\nInterpretando um arquivo de som:\n"
wav_rsp = chat.ask("O que está sendo falado nesse áudio?", with: "ai.wav")
puts wav_rsp.content

# daqui para baixo, não está no chat criado

# interpretando áudio
puts "\nInterpretando um arquivo de som pelo transcribe:\n"
wav_rsp = RubyLLM.transcribe("ai.wav")
puts "Modelo utilizado para responder: #{wav_rsp.model}"
puts "Duração do arquivo de som: #{wav_rsp.duration}"
puts wav_rsp.text

# criando uma imagem
# se estiver utilizando a OpenAI, tem que ter sido verificado em
# https://platform.openai.com/settings/organization/general
puts "\nCriando uma imagem:\n"
response = RubyLLM.paint("Uma pessoa com um guarda-chuvas na chuva, onde as gotas são rubís vermelhos")
File.binwrite("ai_created.png", Base64.decode64(response.data))
