require "socket"

TCPServer.open("localhost", 8081) do |server|
  puts "servidor iniciado"

  loop do
    puts "aguardando conexão ..."
    con = server.accept
    puts "conexão recebida!"
    con.puts "Sua conexão foi recebida!"
    con.close
  end
end
