proc = Proc.new do |param|
  puts "Loop up #{param}"

  param.times do |value|
    print "[in #{Thread.current.object_id}, #{value + 1} of #{param}]"
    sleep 0.5
  end
end

threads = []

5.times do |value|
  puts "Calling with #{value}"
  threads << Thread.new(value, &proc)
end

threads.map(&:join)
puts "\n\nFinished!"
