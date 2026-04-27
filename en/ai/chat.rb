require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "Text response:\n"
puts chat.ask("Describe the characteristics of the Ruby programming language in one paragraph.").content
