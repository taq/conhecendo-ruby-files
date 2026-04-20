require "net/pop"

# aqui são os dados que criamos no arquivo de autenticação!
user = 'user'
pass = 'pass'

begin
  Net::POP3.start("localhost", 1110, user, pass) do |pop|
    if pop.mails.empty?
      puts "Sem emails!"
      return
    end

    pop.mails.each do |msg|
      puts msg.header

      # para deletar após ler (opcional)
      # msg.delete
    end
  end
rescue StandardError => e
  puts "Erro ao recuperar emails: #{e}"
end
