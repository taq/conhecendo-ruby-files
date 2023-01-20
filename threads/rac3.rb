consumer = Ractor.new do
  loop do
    items = Ractor.receive
    puts "Recebidos #{items} itens."
  end
end

producer = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, 'item')
    puts "Enviando #{items.size}\n"
    consumer.send items.size
    sleep 0.1
  end
end

producer.take
