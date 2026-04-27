require "ruby_llm"

RubyLLM.configure do |config|
  config.gemini_api_key = ENV["GEMINI_API_KEY"]
  config.default_model  = "gemini-2.5-flash"
end

chat = RubyLLM.chat
puts chat.ask("What do you see in this video?", with: "ai.mp4").content
