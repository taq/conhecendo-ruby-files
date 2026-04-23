logger_proc = Ractor.shareable_proc do |msg|
  puts "[#{Time.now}] [Ractor #{Ractor.current.object_id}] #{msg}"
end

worker = Ractor.new(logger_proc) do |log|
  log.call("Worker started")
  task = Ractor.receive
  log.call("Processing: #{task}")
  result = task * 2
  log.call("Finished: #{result}")
  result
end

worker << 21
puts "Result: #{worker.value}"
