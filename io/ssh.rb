require 'net/ssh'
require 'highline/import'

host = 'eustaquiorangel.com'
user = 'taq'
pass = ask('digite sua senha') { |it| it.echo = "*" }

begin
  Net::SSH.start(host, user, password: pass) do |session|
    puts 'Sessão SSH aberta!'

    session.open_channel do |channel|
      puts 'Canal aberto!'

      channel.on_data do |ch, data|
        puts "> #{data}"
      end

      puts 'Executando comando ...'
      channel.exec "ls -lah"
    end
    session.loop
  end
rescue StandardError => exception
  puts "ERRO:#{exception}"
  puts exception.backtrace
end
