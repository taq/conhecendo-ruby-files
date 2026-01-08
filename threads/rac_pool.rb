require 'etc'

manager = Ractor.new do
  tasks = Ractor.receive  # recebe o Array de tasks primeiro

  loop do
    requester = Ractor.receive  # recebe o worker pedindo trabalho
    tasks.empty? ? requester.send(:stop) : requester.send(tasks.shift)
  end
end

# alimenta a fila ANTES de criar os workers
values = (0...20).to_a.shuffle
manager.send(values)

result_port = Ractor::Port.new

# workers puxam trabalho
workers = Etc.nprocessors.times.map do |id|
  Ractor.new(id, result_port, manager) do |id, result_port, manager|
    loop do
      manager.send(Ractor.current)  # pede trabalho
      task = Ractor.receive         # aguarda a task
      break if task == :stop

      sleep(rand * 0.1)
      result = task * task

      result_port << { id: id, result: result }
    end
  end
end

# coleta resultados
results = []
values.size.times { results << result_port.receive }

# vamos ver os workers de 0 até Etc.nprocessors processando as tarefas
results.sort_by { |r| r[:id] }.each do |r|
  puts "Worker #{r[:id]}: #{r[:result]}"
end

workers.each(&:join)
