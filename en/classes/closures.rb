def create_counter(initial, incr)
  counter = initial
  lambda { counter += incr }
end

my_counter = create_counter(0, 1)

puts my_counter.call
puts my_counter.call
puts my_counter.call
