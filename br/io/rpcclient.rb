require "xmlrpc/client"

begin
  client = XMLRPC::Client.new("localhost", "/RPC2", 8081)
  resp = client.call("soma", 5, 3)
  puts "O resultado da soma é #{resp['resultado']}"

  resp = client.call("divide", 11, 4)
  puts "O resultado da divisao é #{resp['resultado']} e o resto é #{resp['resto']}"
rescue => exception
  puts "ERRO: #{exception}"
end
