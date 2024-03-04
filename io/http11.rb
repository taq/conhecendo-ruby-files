require 'net/http'
require 'json'

params  = { nome: 'Eustáquio', sobrenome: 'Rangel' }
query   = URI.encode_www_form(params)
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer <meu token secreto>'
}

Net::HTTP.start('localhost', 2000) do |request|
  request.open_timeout = 10
  request.read_timeout = 10
  request.get("/?#{query}", headers)
  request.post('/', params.to_json, headers)
end
