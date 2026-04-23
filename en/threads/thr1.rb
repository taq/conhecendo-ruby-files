thread = Thread.new do
  puts "Thread #{self.object_id} started!"

  5.times do |valor|
    puts valor
    sleep 1
  end
end

puts "Thread already created"
thread.join
