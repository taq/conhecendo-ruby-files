consumer = Ractor.new do
  loop do
    items = Ractor.receive # da default_port
    puts "Recebidos #{items.size} itens."
    p items
  end
end

producer = Ractor.new(consumer) do |consumer|
  5.times do
    items = Array.new(rand(10), 'item').freeze
    puts "Enviando #{items}\n"
    consumer << items # para a default_port
    puts "Enviandos os itens #{items}\n"
    sleep 0.1
  end
end

producer.join
