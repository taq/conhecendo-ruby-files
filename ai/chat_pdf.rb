require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "\nFazendo um resumo de um PDF:\n"
puts chat.ask("Faça um resumo desse documento", with: "ai.pdf").content
