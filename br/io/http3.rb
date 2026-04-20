require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(URI.open('http://httpforever.com'))
puts doc.search('h2').map { |it| it.text }
