mutex       = Mutex.new
last_result = 1
last_update = Time.now

trap('SIGINT') do
  puts 'Saindo do programa ...'
  exit
end

Thread.new do
  loop do
    sleep 5
    puts 'Atualizando ...'

    mutex.synchronize do
      # fazendo alguma coisa demorada aqui
      puts 'Mutex sincronizado, vou fazer algo ...'
      sleep 10
      puts 'Terminei de fazer algo no mutex, vou liberar a sincronização'
      last_result += 1
    end

    last_update = Time.now
    puts 'Liberado o mutex.'
  end
end

loop do
  puts 'Aperte ENTER para ver o resultado:'
  gets

  # tenta adquirir o lock, se não estiver entre o synchronize e o end
  # lá em cima
  if mutex.try_lock
    begin
      puts "Resultado atualizado #{(Time.now - last_update).to_i} segundos atrás."
    ensure
      mutex.unlock
    end
  # se não conseguiu, é que está lá em cima, processando entre
  # o synchronize e o end!
  else
    puts "Sendo atualizado, resultado anterior gerado #{(Time.now - last_update).to_i} segundos atrás"
  end
end
