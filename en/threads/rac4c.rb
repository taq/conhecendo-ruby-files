consumer = Ractor.new do
  loop do
    items = Ractor.receive  # from default_port
    puts "Received #{items.size} items."
    p items
  end
end

producer = Ractor.new(consumer) do |consumer|
  5.times do
    items = Array.new(rand(10), "item")
    puts "Sending #{items}\n"
    consumer << items  # Para o default_port
    sleep 0.1
  end
end

producer.join
