require "open-uri"
require "nokogiri"

doc = Nokogiri::HTML(URI.open("http://eustaquiorangel.com"))
puts doc.search("h1").map { |elemento| elemento.text }
