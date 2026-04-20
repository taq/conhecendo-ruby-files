require "socket"

TCPServer.open("localhost", 8081) do |server|
  puts "servidor iniciado"

  loop do
    puts "aguardando conexão ..."
    con = server.accept
    puts "conexão recebida!"
    con.puts "Sua conexão foi recebida!"

    while true
      str = con.gets
      break if str.match?(/sair/)

      con.puts "você digitou: #{str}"
    end

    con.close
  end
end
