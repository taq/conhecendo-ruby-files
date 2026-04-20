require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "\nInterpretando uma imagem:\n"
puts chat.ask("O que você vê nessa imagem?", with: "ai.jpg").content
