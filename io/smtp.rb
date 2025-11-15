require "net/smtp"
require "highline/import"

# se precisar digitar uma senha para autenticação, remova o comentário da linha
# abaixo
#pass   = ask("digite sua senha:") { |it| it.echo = "*" }
from    = 'taq@eustaquirangel.com'
to      = 'taq@eustaquiorangel.com'
subject = 'Teste de SMTP'
body    = 'Apenas um teste de envio de email no Ruby'

message = <<~MSG
  From: #{from}
  To: #{to}
  Subject: #{subject}

  #{body}
MSG

begin
  # se o seu servidor requisita autenticação, remova o comentário da linha
  # abaixo e comente a próxima
  #Net::SMTP.start("localhost", 1025, 'localhost', 'user', 'pass', :login) do |smtp|
  Net::SMTP.start("localhost", 1025) do |smtp|
    smtp.send_message(message, from, to)
  end
  puts "Mensagem enviada!"
rescue StandardError => e
  puts "Erro ao enviar: #{e.message}"
end
