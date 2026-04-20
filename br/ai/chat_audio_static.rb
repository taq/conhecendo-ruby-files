require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end

# interpretando áudio
puts "\nInterpretando um arquivo de som pelo transcribe:\n"
wav_rsp = RubyLLM.transcribe("ai.wav")
puts "Modelo utilizado para responder: #{wav_rsp.model}"
puts wav_rsp.text
