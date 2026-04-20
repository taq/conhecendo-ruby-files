valores = [1, 2, 3]

case valores
in [a, *b]
  puts "O valor de a é #{a}"
  puts "b vale:"
  p b
end
