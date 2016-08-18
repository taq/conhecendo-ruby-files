mutex = Mutex.new
last_result = 1
last_update = Time.now

trap("SIGINT") do
  puts "saindo do programa ..."
  exit
end

Thread.new do
  loop do
    sleep 5
    puts "atualizando em #{Time.now} ..."
    mutex.synchronize do
      # alguma coisa demorada aqui
      sleep 10
      last_result += 1
    end
    last_update = Time.now
    puts "atualizado em #{last_update}."
  end
end

loop do
  puts "aperte ENTER para ver o resultado:"
  gets
  if mutex.try_lock
    begin
      puts "resultado atualizado em #{last_update}: #{last_result}"
    ensure
      mutex.unlock
    end
  else
    puts "sendo atualizado, resultado anterior em #{last_update}: #{last_result}"
  end
end
