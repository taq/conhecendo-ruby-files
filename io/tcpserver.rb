require "socket"

TCPServer.open("localhost", 8081) do |server|
  puts "servidor iniciado"

  loop do
    puts "aguardando conexão ..."
    con = server.accept
    puts "conexão recebida!"
    con.puts Time.now
    con.close
  end
end
