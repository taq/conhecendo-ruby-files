bigger, smaller = 0, 0
log = 0

t1 = Thread.new do
  loop do
    bigger += 1
    smaller -= 1
  end
end

t2 = Thread.new do
  loop do
    log = smaller + bigger
  end
end

sleep 3
puts "log equals #{log}"
