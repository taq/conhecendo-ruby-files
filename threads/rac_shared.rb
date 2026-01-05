# um Port para este cliente/thread
my_response_port = Ractor::Port.new

# worker que processa tarefas
worker = Ractor.new(my_response_port) do |response|
  loop do
    task = Ractor.receive
    break if task == :stop

    result = task[:data] * 2
    response << result
  end
end

# reutiliza o mesmo Port para múltiplas operações
worker << { data: 10 }
puts my_response_port.receive  # 20

worker << { data: 25 }
puts my_response_port.receive  # 50

worker << { data: 100 }
puts my_response_port.receive  # 200

worker << :stop
worker.join
