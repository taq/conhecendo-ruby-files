require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "\nInterpreting an image:\n"
puts chat.ask("What do you see in this image?", with: "ai.jpg").content
