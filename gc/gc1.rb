class Teste
end

t1 = Teste.new
t2 = Teste.new
t3 = Teste.new

count = ObjectSpace.each_object(Teste) do |object|
  puts object
end
puts "#{count} objetos encontrados."

t2 = nil
GC.start

count = ObjectSpace.each_object(Teste) do |object|
  puts object
end
puts "#{count} objetos encontrados."
