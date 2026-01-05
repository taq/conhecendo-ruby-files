# servidor: processa requisições usando seu default_port
server = Ractor.new do
  loop do
    # recebe do default_port
    request = Ractor.receive
    data = request[:data]
    response_port = request[:response_port]

    # processa e responde
    result = data.upcase
    response_port << result
  end
end

# cliente: envia requisição com port de resposta
client_port = Ractor::Port.new
server << { data: "hello", response_port: client_port }

# recebemos a resposta
response = client_port.receive
puts "Resposta recebida: #{response}" # HELLO

server.join
