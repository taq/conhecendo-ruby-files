require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
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
