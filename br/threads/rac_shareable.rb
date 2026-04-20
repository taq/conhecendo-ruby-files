# criando um proc compartilhável
proc_compartilhavel = Ractor.shareable_proc do |x|
  x * 2
end

# posso passar para qualquer Ractor!
ractor = Ractor.new(proc_compartilhavel) do |proc|
  resultado = proc.call(21)
  puts "Resultado: #{resultado}" # 42
end

ractor.join

# lambda compartilhável
lambda_compartilhavel = Ractor.shareable_lambda do |x, y|
  x + y
end

ractor2 = Ractor.new(lambda_compartilhavel) do |lambda|
  puts lambda.call(10, 32) # 42
end

ractor2.join
