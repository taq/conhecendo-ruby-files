# port para receber o resultado
result_port = Ractor::Port.new

ractor = Ractor.new(result_port) do |p|
  # Recebe do default_port
  obj = Ractor.receive
  obj << "world"

  # envia resultado
  p << obj
end

obj = ["hello"]

# movemos o objeto para o default_port do ractor
ractor.send(obj, move: true)

# Recebemos o resultado modificado
modificado = result_port.receive
puts modificado.join(" ")  # "hello world"

# obj agora está inacessível aqui (movemos ele!)
puts obj.join(" ")

ractor.join
