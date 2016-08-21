require "open-uri"

resposta = open("http://eustaquiorangel.com")
puts resposta.read.scan(/<h1>.*<\/h1>/)
