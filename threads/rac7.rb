# consumidor usa default_port
consumer = Ractor.new do
  loop do
    items = Ractor.receive  # Do default_port
    puts "Recebidos #{items.size} itens."
    p items
  end
end

# produtores enviam para o default_port do consumidor
p1 = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, 'item').freeze
    puts "Enviando #{items}\n"
    consumer << items
    sleep 0.1
  end
end

p2 = Ractor.new(consumer) do |consumer|
  5.times do |num|
    items = Array.new(num, 'new item').freeze
    puts "Enviando #{items}\n"
    consumer << items
    sleep 0.1
  end
end

producers = [p1, p2]

# no Ruby 4.0, Ractor.select retorna o Ractor que terminou
producers.size.times do
  r = Ractor.select(*producers)
  producers.delete(r)
end
