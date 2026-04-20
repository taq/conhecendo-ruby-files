maior, menor = 0, 0
log = 0

t1 = Thread.new do
  loop do
    maior += 1
    menor -= 1
  end
end

t2 = Thread.new do
  loop do
    log = menor + maior
  end
end

sleep 3
puts "log vale #{log}"
