require "open-uri"

resposta = URI.open("http://eustaquiorangel.com")
puts resposta.read.scan(/<h1>.*<\/h1>/)
