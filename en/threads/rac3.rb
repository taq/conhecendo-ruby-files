# consumer: se default_port to get messages
consumer = Ractor.new do
  loop do
    items = Ractor.receive  # Do default_port
    puts "Received #{items} items."
  end
end

# producer: send messages to consumer default_port
producer = Ractor.new(consumer) do |consumer|
  5.times do
    items = Array.new(rand(10), "item")
    puts "Sending #{items.size}\n"
    consumer << items.size  # send to default_port
    sleep 0.1
  end
end

# wait producer finish
producer.join
