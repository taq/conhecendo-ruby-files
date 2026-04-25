class Test
end

t1 = Test.new
t2 = Test.new
t3 = Test.new

count = ObjectSpace.each_object(Test) do |object|
  puts object
end
puts "#{count} objects found."

t2 = nil

puts "Before:"
p GC.stat

GC.start

puts "After:"
p GC.stat

count = ObjectSpace.each_object(Test) do |object|
  puts object
end
puts "#{count} objects found."
