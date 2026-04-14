require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat
chat.ask "Qual é a linguagem de programação que tem como símbolo um rubí vermelho?"
chat.ask "E quem é o criador da linguagem?"
chat.ask "Já que falamos da linguagem e do criador dela, o que significa MINASWAN?"

chat.messages.each do |msg|
  puts "[#{msg.role.upcase}] #{msg.content.lines.join}"
end

total_tokens = chat.messages.sum { |msg| (msg.input_tokens || 0) + (msg.output_tokens || 0) }
puts "\nForam processados #{total_tokens} tokens."
