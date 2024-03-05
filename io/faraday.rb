require 'faraday'

params  = { nome: 'Eustáquio', sobrenome: 'Rangel' }
query   = URI.encode_www_form(params)
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer <meu token secreto>'
}

host = Faraday.new(url: 'http://localhost:2000')
host.get('/', params, headers)
host.post('/', params.to_json, headers)
