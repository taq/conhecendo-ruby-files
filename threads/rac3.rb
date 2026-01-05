# consumidor: usa default_port para receber mensagens
consumer = Ractor.new do
  loop do
    items = Ractor.receive  # Do default_port
    puts "Recebidos #{items} itens."
  end
end

# produtor: envia mensagens para o default_port do consumidor
producer = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, 'item')
    puts "Enviando #{items.size}\n"
    consumer << items.size  # Envia para o default_port
    sleep 0.1
  end
end

# esperamos o produtor terminar
producer.join
