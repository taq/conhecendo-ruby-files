ractor = Ractor.new do
  obj = Ractor.receive
  obj << "world"
end

obj = ["hello"]
ractor.send obj, move: true

modificado = ractor.take
puts modificado.join(" ")
puts obj.join(" ")
