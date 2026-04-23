# we can give Ractors names to make debug easier
worker = Ractor.new(name: "worker-1") do
  puts "I am #{Ractor.current.name || 'anonymous'}"
  42
end

worker.join
# output: I am worker-1
