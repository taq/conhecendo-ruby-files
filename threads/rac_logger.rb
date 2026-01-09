logger_proc = Ractor.shareable_proc do |msg|
  puts "[#{Time.now}] [Ractor #{Ractor.current.object_id}] #{msg}"
end

worker = Ractor.new(logger_proc) do |log|
  log.call("Worker iniciado")
  task = Ractor.receive
  log.call("Processando: #{task}")
  result = task * 2
  log.call("Finalizado: #{result}")
  result
end

worker << 21
puts "Resultado: #{worker.value}"
