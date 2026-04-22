valores = [1, 2, 3]

case valores
in [a]
  puts "The value is #{a}"
in [a, b]
  puts "The values are: #{a} e #{b}"
in [a, b, c]
  puts "The values are: #{a}, #{b} e #{c}"
end
