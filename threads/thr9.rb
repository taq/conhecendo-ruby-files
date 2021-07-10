require "thread"

queue = Queue.new
limit = 0

produtor = Thread.new do
  loop do
    qtde = rand(50)
    next if qtde.zero?

    limit += 1

    if limit > 5
      queue.enq :END_OF_WORK
      break
    end

    puts "produzindo #{qtde} item(s)"
    queue.enq Array.new(qtde, 'item')
    sleep 1
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
consumidor.join
