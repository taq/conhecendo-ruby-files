# O Ractor usa seu default_port automaticamente
ractor = Ractor.new do
  mensagem = Ractor.receive  # Recebe do default_port
  puts "Recebida mensagem: #{mensagem}"
end

# Enviamos a mensagem para o default_port do ractor
ractor << "Olá, mundo dos Ractors!"

# Esperamos o Ractor terminar (similar ao Thread#join)
ractor.join
