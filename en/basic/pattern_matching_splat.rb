values = [1, 2, 3]

case values
in [a, *b]
  puts "The value of a is #{a}"
  puts "b is worth:"
  p b
end
