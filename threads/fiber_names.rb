# typed: false
# frozen_string_literal: true
require 'json'
require 'net/http'
require 'fiber_scheduler'

start = Time.now

Thread.new do
  Fiber.set_scheduler(FiberScheduler.new)

  %w[Joao Maria Eustaquio].each do |name|
    Fiber.schedule do
      current      = Time.now
      uri          = URI.parse("https://api.agify.io/")
      http         = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      json         = JSON.parse(http.get("/?name=#{name}").body)
      age          = json['age']
      puts "%s: parece ter %s anos (levei %.3f segundos para calcular)\n" % [name, age, Time.now - current]
    end
  end
end.join

puts "Tempo total: #{Time.now - start}"
