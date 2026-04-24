require "webrick"
require "xmlrpc/server"

server = XMLRPC::Server.new(8081)

# sumndo números
server.add_handler("sum") do |n1, n2|
  { "result" => n1 + n2 }
end

# dividindo e retornando o rest
server.add_handler("divide") do |n1, n2|
  { "result" => n1 / n2, "rest" => n1 % n2 }
end

server.serve
