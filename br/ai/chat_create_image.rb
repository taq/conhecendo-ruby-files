require "ruby_llm"
require "tmpdir"
require "base64"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

chat = RubyLLM.chat

puts "\nCriando uma imagem:\n"
response = RubyLLM.paint("Uma pessoa com um guarda-chuvas na chuva, onde as gotas são rubís vermelhos")
File.binwrite("#{Dir.tmpdir}/ai_created.png", Base64.decode64(response.data))
