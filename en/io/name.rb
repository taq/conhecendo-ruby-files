require "open3"

Open3.popen3("./name.sh") do |stdin, stdout, stderr, thread|
  stdin.puts "taq"
  puts stdout.read
  puts "Ran in process #{thread.pid}"
  error = stderr.read
  puts "Got an error: #{error}" if error.size > 0
end
