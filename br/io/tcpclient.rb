require "socket"

hash = { um: 1, dois: 2, tres: 3 }

TCPSocket.open("localhost", 8081) do |server|
  server.write [ 
    1,
    "teste".ljust(10),
    Marshal.dump(hash)
  ].pack("LA10A*")
end
