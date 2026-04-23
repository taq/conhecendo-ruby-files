# server: process requests using its default_port
server = Ractor.new do
  loop do
    # receive from default_port
    request = Ractor.receive
    data = request[:data]
    response_port = request[:response_port]

    # process and answer
    result = data.upcase
    response_port << result
  end
end

# client: send request with answer Port
client_port = Ractor::Port.new
server << { data: "hello", response_port: client_port }

# got answer
response = client_port.receive
puts "Received answer: #{response}" # HELLO

server.join
