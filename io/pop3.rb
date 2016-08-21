require "net/pop"
    require "highline/import"

user = "eustaquiorangel@gmail.com"
pass = ask("digite sua senha:") { |q| q.echo = "*" }

pop = Net::POP3.new("pop.gmail.com", 995)
pop.enable_ssl(OpenSSL::SSL::VERIFY_NONE)

begin
  pop.start(user, pass) do |pop|
    if pop.mails.empty?
      puts "Sem emails!"
      return
    end
    pop.each do |msg|
      puts msg.header
    end
  end
rescue => exception
  puts "ERRO: #{exception}"
end
