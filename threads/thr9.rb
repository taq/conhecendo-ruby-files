require "thread"

queue = Queue.new
limit = 0

produtor = Thread.new do
  loop do
    qtde = rand(50)
    next if qtde == 0

    limit += 1
    break if limit > 5
    puts "produzindo #{qtde} item(s)"
    queue.enq(Array.new(qtde, "item"))
  end
end

consumidor = Thread.new do
  loop do
    obj = queue.deq
    break if obj == :END_OF_WORK
    print "consumindo #{obj.size} item(s)\n"
  end
end

produtor.join
queue.enq(:END_OF_WORK)
consumidor.join
