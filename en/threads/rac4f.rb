consumer = Ractor.new do
  loop do
    items = Ractor.receive  # from default_port
    puts "Received #{items.size} items."
    p items
  end
end

producer = Ractor.new(consumer) do |consumer|
  5.times do
    items = Ractor.make_shareable Array.new(rand(10), "item")
    puts "Sending #{items}\n"
    puts Ractor.shareable? items
    consumer << items  # to default_port
    sleep 0.1
  end
end

producer.join
