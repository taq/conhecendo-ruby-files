f2 = Fiber.new do |value|
  puts "Estou em f2 com #{value}, transferindo para onde vai resumir ..."
  Fiber.yield value + 40
  puts "Cheguei aqui?"
end

f1 = Fiber.new do
  puts "Comecei f1, transferindo para f2 ..."
  f2.resume 10
end

puts "Resumindo fiber 1: #{f1.resume}"
