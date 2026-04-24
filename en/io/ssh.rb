require "net/ssh"
require "highline/import"

host = "eustaquiorangel.com"
user = "taq"
pass = ask("type your password") { |it| it.echo = "*" }

begin
  Net::SSH.start(host, user, password: pass) do |session|
    puts "SSH session opened!"

    session.open_channel do |channel|
      puts "Channel opened!"

      channel.on_data do |ch, data|
        puts "> #{data}"
      end

      puts "Executing command ..."
      channel.exec "ls -lah"
    end
    session.loop
  end
rescue StandardError => exception
  puts "ERROR: #{exception}"
  puts exception.backtrace
end
