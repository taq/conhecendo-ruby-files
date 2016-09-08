require "open3"

Open3.popen3("./nome.sh") do |stdin, stdout, stderr, thread|
  stdin.puts "taq"
  puts stdout.read
  puts "Rodei no processo #{thread.pid}"
  erro = stderr.read
  puts "Ocorreu o erro: #{erro}" if erro.size > 0
end
