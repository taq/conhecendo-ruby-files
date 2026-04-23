# typed: false
# frozen_string_literal: true

require 'json'
require 'net/http'
require 'async'

start = Time.now

Async do
  %w[Joao Maria Eustaquio].each do |name|
    Async do
      current = Time.now
      uri = URI.parse("https://api.agify.io/")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      json = JSON.parse(http.get("/?name=#{name}").body)
      age = json['age']
      puts "%s: appears to be %s years old (it took %.3f seconds to calculate)\n" % [name, age, Time.now - current]
    end
  end
end

puts "Total time: #{Time.now - start}"
