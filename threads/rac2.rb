ractor = Ractor.new do
  Ractor.yield Time.now.strftime('%H:%M')
end

puts "A hora corrente no mundo do Ractor é #{ractor.take}"
sleep 1
