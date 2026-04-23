# consumer usa default_port
consumer = Ractor.new do
  loop do
    items = Ractor.receive  # Do default_port
    puts "Received #{items.size} items."
    p items
  end
end

# producers send to the consumer default_port
p1 = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, "item")
    puts "Sending #{items}\n"
    consumer << items
    sleep 0.1
  end
end

p2 = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, "new item")
    puts "Sending #{items}\n"
    consumer << items
    sleep 0.1
  end
end

producers = [p1, p2]

# in Ruby 4.0, Ractor.select returns the finished Ractor
producers.size.times do
  r = Ractor.select(*producers)
  producers.delete(r)
end
