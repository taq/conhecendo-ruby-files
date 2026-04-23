require "thread"

items   = []
lock    = Mutex.new
cond    = ConditionVariable.new
limit   = 0

produtor = Thread.new do
  loop do
    lock.synchronize do
      qtde = rand(50)
      next if qtde == 0

      puts "producing #{qtde} item(s)"
      items = Array.new(qtde,"item")
      cond.wait(lock)
      puts "consumption done!"
      puts "-" * 25
      limit += 1
    end
    break if limit > 5
  end
end

consumidor = Thread.new do
  loop do
    lock.synchronize do
      if items.length>0
        puts "consuming #{items.length} item(s)"
        items = []
      end
      cond.signal
    end
  end
end
produtor.join
