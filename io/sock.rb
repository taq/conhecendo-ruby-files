require "socket"

TCPSocket.open("mailtrap.io", 465) do |smtp|
  puts smtp.gets
  smtp.puts "EHLO bluefish.com.br"
  puts smtp.gets
end
