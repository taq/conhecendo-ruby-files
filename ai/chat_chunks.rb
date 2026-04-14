require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
chat.ask "Me responda em 1 parágrafo as características da linguagem Ruby" do |chunk|
  print "#{chunk.content.to_s.ljust(100)}\r"
end

puts "\nResposta de texto:\n"
puts chat.messages.last.content
