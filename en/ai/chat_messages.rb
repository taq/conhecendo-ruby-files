require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
chat.ask "Which programming language uses a red ruby as its symbol?"
chat.ask "And who is the creator of the language?"
chat.ask "Since we talked about the language and its creator, what does MINASWAN mean?"

chat.messages.each do |msg|
  puts "[#{msg.role.upcase}] #{msg.content.lines.join}"
end

total_tokens = chat.messages.sum { |msg| (msg.input_tokens || 0) + (msg.output_tokens || 0) }
puts "\n#{total_tokens} tokens were processed."
