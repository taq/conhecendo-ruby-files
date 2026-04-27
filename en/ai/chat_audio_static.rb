require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

puts "\nInterpreting a sound file using transcribe:\n"
wav_rsp = RubyLLM.transcribe("ai.wav")
puts "Model used to respond: #{wav_rsp.model}"
puts wav_rsp.text
