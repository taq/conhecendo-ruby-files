proc = Proc.new do |parametro|
  parametro.times do |valor|
    print "[#{valor + 1}/#{parametro}]"
    sleep 0.5
  end
end

thread = nil
5.times do |valor|
  thread = Thread.new(valor, &proc)
end

thread.join
puts "Terminado!"
