require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
puts "\nSummarizing a PDF:\n"
puts chat.ask("Summarize this document", with: "ai.pdf").content
