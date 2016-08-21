require "net/smtp"
require "highline/import"

from = "eustaquiorangel@gmail.com"
pass = ask("digite sua senha:") { |q| q.echo = "*" }
to   = "eustaquiorangel@gmail.com"

msg =<<FIM
From: #{from}
Subject: Teste de SMTP no Ruby
Apenas um teste de envio de email no Ruby.
Falou!
FIM

smtp = Net::SMTP.new("smtp.gmail.com", 587)
smtp.enable_starttls

begin
  smtp.start("localhost", from, pass, :plain) do |smtp|
    puts "conexão aberta!"
    smtp.send_message(msg, from, to)
    puts "mensagem enviada!"
  end
rescue => exception
  puts "ERRO: #{exception}"
  puts exception.backtrace
end
