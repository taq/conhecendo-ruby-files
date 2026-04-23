consumer = Ractor.new do
  loop do
    items = Ractor.receive # da default_port
    puts "Received #{items.size} items."
    p items
  end
end

producer = Ractor.new(consumer) do |consumer|
  5.times do
    items = Array.new(rand(10), "item").freeze
    puts "Sending #{items}\n"
    consumer << items # para a default_port
    puts "Sent #{items}\n"
    sleep 0.1
  end
end

producer.join
