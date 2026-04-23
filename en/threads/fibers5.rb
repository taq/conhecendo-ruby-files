require "fiber"

f1 = Fiber.new do |other|
  puts "Started f1, transferring to f2 ..."
  other.transfer Fiber.current, 10
end

f2 = Fiber.new do |caller, value|
  puts "I am in f2, transferring to f1 ..."
  caller.transfer value + 40
  puts "Got here?"
end

puts "Resuming fiber 1: #{f1.resume(f2)}"
