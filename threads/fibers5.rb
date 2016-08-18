require "fiber"

f1 = Fiber.new do |other|
  puts "Comecei f1, transferindo para f2 ..."
  other.transfer Fiber.current, 10
end

f2 = Fiber.new do |caller,value|
  puts "Estou em f2, transferindo para f1 ..."
  caller.transfer value + 40
  puts "Cheguei aqui?"
end

puts "Resumindo fiber 1: #{f1.resume(f2)}"
