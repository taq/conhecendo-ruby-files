require 'etc'

manager = Ractor.new do
  tasks = Ractor.receive  # receive task Array first

  loop do
    requester = Ractor.receive  # receive worker asking for job
    tasks.empty? ? requester.send(:stop) : requester.send(tasks.shift)
  end
end

# feed queue BEFORE creating workers
values = (0...20).to_a.shuffle
manager.send(values)

result_port = Ractor::Port.new

# workers get job
workers = Etc.nprocessors.times.map do |id|
  Ractor.new(id, result_port, manager) do |id, result_port, manager|
    loop do
      manager.send(Ractor.current)  # ask for job
      task = Ractor.receive         # wait task
      break if task == :stop

      sleep(rand * 0.1)
      result = task * task

      result_port << { id: id, result: result }
    end
  end
end

# collect results
results = []
values.size.times { results << result_port.receive }

# let's see workers from 0 till Etc.nprocessors working on tasks
results.sort_by { |r| r[:id] }.each do |r|
  puts "Worker #{r[:id]}: #{r[:result]}"
end

workers.each(&:join)
