# creating a shared Proc
shared_proc = Ractor.shareable_proc do |x|
  x * 2
end

# can send to any Ractor!
ractor = Ractor.new(shared_proc) do |proc|
  resultado = proc.call(21)
  puts "Result: #{resultado}" # 42
end

ractor.join

# shared lambda
shared_lambda = Ractor.shareable_lambda do |x, y|
  x + y
end

ractor2 = Ractor.new(shared_lambda) do |lambda|
  puts lambda.call(10, 32) # 42
end

ractor2.join
