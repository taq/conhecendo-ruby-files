proc = Proc.new do |numero|
  loop do
    puts "Proc #{numero}: #{‘date‘}"
  end
end

fifo = Proc.new do
  loop do
    puts File.read("teste.fifo")
  end
end

threads = []
(1..5).each do |numero|
  threads << (numero == 3 ? Thread.new(&fifo) : Thread.new(numero, &proc))
end
threads.each(&:join)
