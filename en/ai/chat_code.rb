require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "\nExplaining code:\n"
code_rsp = chat.ask("Explain this code", with: File.basename(__FILE__))
puts "Explaining:"
puts code_rsp.content
