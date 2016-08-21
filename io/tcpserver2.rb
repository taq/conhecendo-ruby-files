require "socket"

TCPServer.open("localhost", 8081) do |server|
  puts "servidor iniciado"

  loop do
    puts "aguardando conexão ..."
    con = server.accept
    rst = con.recv(1024).unpack("LA10A*")
    fix = rst[0]
    str = rst[1]

    hash = Marshal.load(rst[2])
    puts "#{fix.class}\t: #{fix}"
    puts "#{str.class}\t: #{str}"
    puts "#{hash.class}\t: #{hash}"
    con.close
  end
end
