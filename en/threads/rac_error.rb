# Ractor with success
ractor_ok = Ractor.new do
  sleep 0.1
  42
end

puts "Result: #{ractor_ok.value}" # 42

# Ractor throwing exception
ractor_erro = Ractor.new do
  sleep 0.1
  raise "Something went wrong!"
end

begin
  ractor_erro.value
rescue => e
  puts "Captured Ractor error: #{e.message}"
end
