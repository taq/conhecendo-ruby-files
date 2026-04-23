f2 = Fiber.new do |value|
  puts "I am in f2 with #{value}, tranferring to where it will resume ..."
  Fiber.yield value + 40
  puts "Got here?"
end

f1 = Fiber.new do
  puts "Started f1, transferring to f2 ..."
  f2.resume 10
end

puts "Resuming fiber 1: #{f1.resume}"
