ractor = Ractor.new do
  puts "Recebida mensagem: #{Ractor.receive}"
end

ractor.send "Olá, mundo dos Ractors!"
ractor.take
