require 'webrick'
require 'json'
include WEBrick

server = WEBrick::HTTPServer.new Port: 2_000, DocumentRoot: Dir.pwd
server.mount_proc '/' do |req, res|
  puts "\nURI: #{req.request_uri}"
  puts "Request method: #{req.request_method}"

  req.header.slice('content-type', 'authorization').each do |key, value|
    puts "#{key}: #{value.join}"
  end

  if req.body
    json = JSON.parse(req.body)
    p json
  end
  puts "\n"

  res.body = 'Hello!'
end

trap("INT") { server.shutdown }
server.start
