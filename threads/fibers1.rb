enum1 = 3.times
enum2 = %w(zero um dois).each
puts enum1.class

loop do
  puts enum1.next
  puts enum2.next
end
