consumer = Ractor.new do
  loop do
    items = Ractor.receive  # Do default_port
    puts "Recebidos #{items.size} itens."
    p items
  end
end

producer = Ractor.new(consumer) do |consumer|
  5.times do
    items = Array.new(rand(10), 'item')
    puts "Enviando #{items}\n"
    consumer << items  # Para o default_port
    sleep 0.1
  end
end

producer.join
