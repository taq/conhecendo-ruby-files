consumer = Ractor.new do
  loop do
    items = Ractor.receive
    puts "Recebidos #{items.size} itens."
    p items
  end
end

producer = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, 'item').freeze
    puts "Enviando #{items}\n"
    consumer.send items
    sleep 0.1
  end
end

producer.take
