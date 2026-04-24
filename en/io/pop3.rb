require "net/pop"

# here are the data we created on the authentication file!
user = 'user'
pass = 'pass'

begin
  Net::POP3.start("localhost", 1110, user, pass) do |pop|
    if pop.mails.empty?
      puts "No emails!"
      return
    end

    pop.mails.each do |msg|
      puts msg.header

      # to delete after reading (optional)
      # msg.delete
    end
  end
rescue StandardError => e
  puts "Error getting e-mails: #{e}"
end
