require "net/smtp"
require "highline/import"

# if an authentication password is needed, remove the comment below
#pass   = ask("digite sua senha:") { |it| it.echo = "*" }
from    = "taq@eustaquirangel.com"
to      = "taq@eustaquiorangel.com"
subject = "SMTP test"
body    = "Just testing sending e-mails from Ruby"

message = <<~MSG
  From: #{from}
  To: #{to}
  Subject: #{subject}

  #{body}
MSG

begin
  # se o seu servidor requisita autenticação, remova o comentário da linha
  # if uour server needs authentication, remove the comment on the line below
  # and comment the next one
  #Net::SMTP.start("localhost", 1025, "localhost", "user", "pass", :login) do |smtp|
  Net::SMTP.start("localhost", 1025) do |smtp|
    smtp.send_message(message, from, to)
  end
  puts "Message sent!"
rescue StandardError => e
  puts "Error sending message: #{e.message}"
end
