require 'socket'

server = UDPSocket.new
porta  = 12345
server.bind('localhost', porta)
puts "Server connected on port #{porta}, waiting ..."

loop do
  msg, sender = server.recvfrom(256)
  host = sender[3]
  puts "Host #{host} sent an UDP packet: #{msg}"
  break if msg.chomp == 'kill'
end

puts "Kill received, shuttind down server."
server.close
