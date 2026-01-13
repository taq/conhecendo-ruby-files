thread = Thread.new do
  loop do
    begin
      puts "Processamento pesado..."
      sleep(10)
      puts "Terminei! Mas nunca vou mostrar isso, vou ser cancelada."
    rescue StandardError => e
      puts "Thread cancelada: #{e.message}"
      break
    end
  end
end

puts "Thread rodando! Esperando 2 segundos para cancelar ..."
sleep(2)

puts "Cancelando!"
thread.raise(StandardError, "Cancelada pelo usuário")

thread.join
puts "Concluído."
