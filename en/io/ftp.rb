require "net/ftp"

host = "ftp.gnu.org"
user = "anonymous"
pass = "eustaquiorangel@gmail.com"
file = "README"

begin
  Net::FTP.open(host) do |ftp|
    puts "FTP connection opened."
    ftp.login(user, pass)

    puts "Requesting file..."
    ftp.chdir("pub")
    ftp.get(file)
    puts "Download complete."

    puts File.read(file)
  end
rescue => exception
  puts "ERROR: #{exception}"
end
