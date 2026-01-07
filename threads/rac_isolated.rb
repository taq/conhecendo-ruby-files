# criamos um worker que processa tarefas
worker = Ractor.new do
  loop do
    task = Ractor.receive
    break if task == :stop

    result = task[:data] * 2
    task[:response] << result
  end
end

# múltiplas threads fazendo operações concorrentes
threads = 10.times.map do |i|
  Thread.new do
    # cada thread tem sua própria Port
    my_port = Ractor::Port.new
    worker << { data: rand(100), response: my_port }
    puts "Thread #{i}: #{my_port.receive}"
  end
end

threads.each(&:join)
worker << :stop
worker.join
