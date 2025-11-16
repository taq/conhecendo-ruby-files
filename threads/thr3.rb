proc = Proc.new do |parametro|
  puts "Loop até #{parametro}"

  parametro.times do |valor|
    print "[em #{Thread.current.object_id}, #{valor + 1} de #{parametro}]"
    sleep 0.5
  end
end

threads = []

5.times do |valor|
  puts "Chamando com #{valor}"
  threads << Thread.new(valor, &proc)
end

threads.map(&:join)
puts "\n\nTerminado!"
