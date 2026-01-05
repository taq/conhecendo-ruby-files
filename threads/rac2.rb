# criamos um Port para receber a resposta
port_resposta = Ractor::Port.new

ractor = Ractor.new(port_resposta) do |p|
  # calcula e envia a hora através do Port
  p << Time.now.strftime('%H:%M')
end

# Recebemos a resposta
puts "A hora corrente no mundo do Ractor é #{port_resposta.receive}"

# Esperamos o Ractor terminar
ractor.join
