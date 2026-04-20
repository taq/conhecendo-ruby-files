require 'net/http'

params  = { c1: 'v1', c2: 'v2', c3: 'v3' }
query   = URI.encode_www_form(params)
request = Net::HTTP.new('localhost', 2000)
request.get("/?#{query}")
