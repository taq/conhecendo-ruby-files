require "continuation"

def create_continuation
  puts "Creating the continuation and returning ..."
  callcc { |it| return it }
  puts "Hey, look at me back in the continuation!"
end

puts "I will create the continuation."
cont = create_continuation()
puts "Checking if it exists ..."

if cont
  puts "Created, shall we go back to it?"
  cont.call
else
  puts "Now let us go."
end

puts "Done, goodbye."
