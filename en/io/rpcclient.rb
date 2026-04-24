require "xmlrpc/client"

begin
  client = XMLRPC::Client.new("localhost", "/RPC2", 8081)
  resp = client.call("sum", 5, 3)
  puts "The result of the addition is #{resp['result']}"

  resp = client.call("divide", 11, 4)
  puts "The result of the division is #{resp['result']} and the remainder is #{resp['rest']}"
rescue => exception
  puts "ERROR: #{exception}"
end
