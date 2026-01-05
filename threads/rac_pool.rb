require 'etc'

# um único Port para coletar todos os resultados - reutilizado!
result_port = Ractor::Port.new

# criamos um pool de workers (um por CPU)
workers = Etc.nprocessors.times.map do |id|
  Ractor.new(id, result_port) do |worker_id, results|
    loop do
      # recebe tarefas do default_port
      task = Ractor.receive
      break if task == :stop

      # processa a tarefa
      result = task * task

      # envia resultado (REUTILIZA o mesmo Port)
      results << { worker_id: worker_id, result: result }
    end
  end
end

# distribuímos 20 tarefas
tasks = (0...20).to_a.shuffle
tasks.each_with_index do |task, idx|
  workers[idx % workers.size] << task
end

# sinalizamos para os workers pararem
workers.each { |w| w << :stop }

# coletamos os 20 resultados do MESMO Port
results = []
20.times do
  results << result_port.receive
end

# mostramos os resultados
results.sort_by { |r| r[:result] }.each do |r|
  puts "Worker #{r[:worker_id]}: #{r[:result]}"
end

# esperamos todos terminarem
workers.each(&:join)
