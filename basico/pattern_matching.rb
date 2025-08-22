valores = [1, 2, 3]

case valores
in [a]
  puts "O valor é #{a}"
in [a, b]
  puts "Os valores são: #{a} e #{b}"
in [a, b, c]
  puts "Os valores são: #{a}, #{b} e #{c}"
end
