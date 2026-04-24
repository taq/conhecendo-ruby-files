require "socket"

TCPServer.open("localhost", 8081) do |server|
  puts "server started"

  loop do
    puts "waiting for connection ..."
    con = server.accept
    puts "connection received!"
    con.puts "Your connection has been received!"

    while true
      str = con.gets
      break if str.match?(/quit/)

      con.puts "you typed: #{str}"
    end

    con.close
  end
end
