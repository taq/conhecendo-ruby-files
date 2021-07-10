consumer = Ractor.new do
  loop do
    items = Ractor.receive
    puts "Recebidos #{items.size} itens."
    p items
  end
end

p1 = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, 'item').freeze
    puts "Enviando #{items}\n"
    consumer.send items
    sleep 0.1
  end
end

p2 = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, 'new item').freeze
    puts "Enviando #{items}\n"
    consumer.send items
    sleep 0.1
  end
end

producers = [p1, p2]
producers.size.times do
  r, n = Ractor.select *producers
  producers.delete(r)
end
