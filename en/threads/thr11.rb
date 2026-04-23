mutex       = Mutex.new
last_result = 1
last_update = Time.now

Signal.trap("INT") do
  puts "Exiting program, interrupting with CTRL+C ..."
  exit
end

Signal.trap("TERM") do
  puts "Exiting program, interrupting with SIGTERM ..."
  puts "Doing some basic cleanup ..."
  exit
end

Thread.new do
  loop do
    sleep 5
    puts "Updating ..."

    mutex.synchronize do
      # making some heavy processing here ...
      puts "Mutex synchronized, doing something ..."
      sleep 30
      puts "Finished doing something in mutex, releasing synchronization"
      last_result += 1
    end

    last_update = Time.now
    puts "Mutex released."
  end
end

loop do
  puts "Press ENTER to see the result:"
  gets

  # try get the lock, unless between synchronize and end up there
  if mutex.try_lock
    begin
      puts "Result updated #{(Time.now - last_update).to_i} seconds ago."
    ensure
      mutex.unlock
    end
  # unless successful, is what is up there, processing between synchronize and
  # end
  else
    puts "Being updated, previous result generated #{(Time.now - last_update).to_i} seconds ago"
  end
end
