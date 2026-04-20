require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
  config.default_model  = "gpt-4o-audio-preview"
end

chat = RubyLLM.chat
puts "\nInterpretando um arquivo de som:\n"
wav_rsp = chat.ask("O que está sendo falado nesse áudio?", with: "ai.wav")
puts wav_rsp.content
