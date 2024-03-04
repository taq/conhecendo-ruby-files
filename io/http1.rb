require 'net/http'

request  = Net::HTTP.new('httpforever.com', 80)
response = request.get('/')
return unless response.message == 'OK'

puts response.body.scan(/<h2>.*<\/h2>/)
