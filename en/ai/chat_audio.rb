require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
  config.default_model  = "gpt-4o-audio-preview"
end

chat = RubyLLM.chat
puts "\nInterpreting a sound file:\n"
wav_rsp = chat.ask("What is being said in this audio?", with: "ai.wav")
puts wav_rsp.content
