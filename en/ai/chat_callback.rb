require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
chat.on_end_message do |message|
  rsp = {
    provider: chat.model.provider,
    model: chat.model.id,
    input_tokens: message&.input_tokens || 0,
    output_tokens: message&.output_tokens || 0
  }
  puts "Message received, statistics: #{rsp}"
end

puts "\nAsking which is the coolest feature:\n"
puts chat.ask("Of all the features of the Ruby programming language, which one do you find the coolest? Answer in one sentence.").content
