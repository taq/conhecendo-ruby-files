# create Port to get the answer
port_resposta = Ractor::Port.new

ractor = Ractor.new(port_resposta) do |p|
  # calculate and send time through Port
  p << Time.now.strftime('%H:%M')
end

# Recebemos a resposta
puts "The current time in Ractors world is #{port_resposta.receive}"

# Esperamos o Ractor terminar
ractor.join
