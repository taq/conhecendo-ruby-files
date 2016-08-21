require "net/ftp"

host = "ftp.mozilla.org"
user = "anonymous"
pass = "eustaquiorangel@gmail.com"
file = "README"

begin
  Net::FTP.open(host) do |ftp|
    puts "Conexão FTP aberta."
    ftp.login(user, pass)

    puts "Requisitando arquivo ..."
    ftp.chdir("pub")
    ftp.get(file)
    puts "Download efetuado."

    puts File.read(file)
  end
rescue => exception
  puts "ERRO: #{exception}"
end
