thread = Thread.new do
  puts "Thread #{self.object_id} iniciada!"

  5.times do |valor|
    puts valor
    sleep 1
  end
end

puts "Já criei a thread"
thread.join
