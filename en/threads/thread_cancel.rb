thread = Thread.new do
  loop do
    begin
      puts "Heavy processing ..."
      sleep(10)
      puts "Finished! But I will never show this, I'll be canceled."
    rescue StandardError => e
      puts "Thread canceled: #{e.message}"
      break
    end
  end
end

puts "Thread running! Wait 2 seconds to cancel ..."
sleep(2)

puts "Canceling!"
thread.raise(StandardError, "Canceled by user")

thread.join
puts "Done."
