require 'open-uri'

response = URI.open('http://httpforever.com')
puts response.read.scan(/<h2>.*<\/h2>/)
