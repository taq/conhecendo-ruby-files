#  Ractor automatically use its default port
ractor = Ractor.new do
  mensagem = Ractor.receive  # Recebe do default_port
  "Message received: #{mensagem}"
end

# Enviamos a mensagem para o default_port do ractor
ractor << "Hello, world of Ractors!"
puts ractor.value

#ractor.join
