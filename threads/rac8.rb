# Port para receber o resultado
result_port = Ractor::Port.new

ractor = Ractor.new(result_port) do |p|
  # recebe do default_port
  obj = Ractor.receive
  obj << "world"

  # Envia resultado
  p << obj
end

obj = ["hello"]

# enviamos o objeto para o default_port do ractor
ractor << obj

# recebemos o resultado modificado
modificado = result_port.receive
puts modificado.join(" ")  # "hello world"

# obj continua acessível aqui (foi copiado, não movido)
puts obj.join(" ")  # "hello" (original não modificado)

ractor.join
