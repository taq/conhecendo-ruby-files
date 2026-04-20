# O Ractor usa seu default_port automaticamente
ractor = Ractor.new do
  mensagem = Ractor.receive  # Recebe do default_port
  "Recebida mensagem: #{mensagem}"
end

# Enviamos a mensagem para o default_port do ractor
ractor << "Olá, mundo dos Ractors!"
puts ractor.value

#ractor.join
