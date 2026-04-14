require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "Resposta de texto:\n"
puts chat.ask("Me responda em 1 parágrafo as características da linguagem Ruby").content
