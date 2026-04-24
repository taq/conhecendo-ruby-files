require 'socket'

client = UDPSocket.open
client.connect('localhost', 12345)

loop do
  puts "Type your message (quit to exit, kill shuts down server):"
  msg = gets
  client.send(msg, 0)
  break if 'kill,quit'.include? msg.chomp
end

client.close
