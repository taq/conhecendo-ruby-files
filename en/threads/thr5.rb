bigger, smaller = 0, 0
log = 0

mutex = Mutex.new
t1 = Thread.new do
  loop do
    mutex.synchronize do
      bigger += 1
      smaller -= 1
    end
  end
end

t2 = Thread.new do
  loop do
    mutex.synchronize do
      log = smaller + bigger
    end
  end
end

sleep 3
puts "log equals #{log}"
