require 'net/http'
require 'json'

params  = { nome: 'Eustáquio', sobrenome: 'Rangel' }
query   = URI.encode_www_form(params)
request = Net::HTTP.new('localhost', 2000)
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer <meu token secreto>'
}
request.open_timeout = 10
request.read_timeout = 10
request.post('/', params.to_json, headers)
