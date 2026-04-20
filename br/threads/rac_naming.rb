# podemos dar nomes aos Ractors para facilitar debugging
worker = Ractor.new(name: "worker-1") do
  puts "Sou o #{Ractor.current.name || 'anonymous'}"
  42
end

worker.join
# output: Sou o worker-1
