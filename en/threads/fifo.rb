proc = Proc.new do |number|
  loop do
    puts "Proc #{number}: #{`date`}"
    sleep 3
  end
end

fifo = Proc.new do
  loop do
    puts File.read('test.fifo')
    sleep 3
  end
end

threads = []

(1..5).each do |number|
  threads << (number == 3 ? Thread.new(&fifo) : Thread.new(number, &proc))
end

threads.each(&:join)
