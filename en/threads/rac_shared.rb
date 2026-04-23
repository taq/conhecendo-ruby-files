# a Port to this client/thread
my_response_port = Ractor::Port.new

# multiple tasks worker
worker = Ractor.new(my_response_port) do |response|
  loop do
    task = Ractor.receive
    break if task == :stop

    result = task[:data] * 2
    response << result
  end
end

# reuse the same Port to multiple operations
worker << { data: 10 }
puts my_response_port.receive  # 20

worker << { data: 25 }
puts my_response_port.receive  # 50

worker << { data: 100 }
puts my_response_port.receive  # 200

worker << :stop
worker.join
