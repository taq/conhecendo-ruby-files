maior, menor = 0, 0
log = 0

mutex = Mutex.new
t1 = Thread.new do
  loop do
    mutex.synchronize do
      maior += 1
      menor -= 1
    end
  end
end

t2 = Thread.new do
  loop do
    mutex.synchronize do
      log = menor+maior
    end
  end
end

sleep 3
puts "log vale #{log}"
