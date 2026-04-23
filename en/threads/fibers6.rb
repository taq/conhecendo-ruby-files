require "fiber"

produtor = Fiber.new do |cons|
  5.times do
    items = Array.new((rand * 5).to_i + 1, "hi!")
    puts "Produced #{items} ..."
    cons.transfer Fiber.current, items
  end
end

consumidor = Fiber.new do |prod, items|
  loop do
    puts "Consumed #{items}"
    prod, items = prod.transfer
  end
end

produtor.resume consumidor
