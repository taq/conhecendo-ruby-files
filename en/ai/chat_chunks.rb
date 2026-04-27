require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
chat.ask("Describe the characteristics of the Ruby programming language in one paragraph.") do |chunk|
  print "#{chunk.content.to_s.ljust(100)}\r"
end

puts "\nText response:\n"
puts chat.messages.last.content
