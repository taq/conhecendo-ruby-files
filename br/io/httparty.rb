require 'httparty'

query   = { nome: 'Eustáquio', sobrenome: 'Rangel' }
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer <meu token secreto>'
}

HTTParty.get('http://localhost:2000', query: query, headers: headers)
HTTParty.post('http://localhost:2000', query: query, body: query.to_json)
