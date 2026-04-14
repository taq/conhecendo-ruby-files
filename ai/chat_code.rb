require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "\nExplicando código:\n"
code_rsp = chat.ask("Explique esse código", with: File.basename(__FILE__))
puts "Explicação:"
puts code_rsp.content
