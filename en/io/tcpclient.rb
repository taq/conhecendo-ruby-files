require "socket"

hash = { one: 1, two: 2, three: 3 }

TCPSocket.open("localhost", 8081) do |server|
  server.write [ 
    1,
    "test".ljust(10),
    Marshal.dump(hash)
  ].pack("LA10A*")
end
