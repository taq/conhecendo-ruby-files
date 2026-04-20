require 'net/http'

params  = { nome: 'Eustáquio', sobrenome: 'Rangel' }
query   = URI.encode_www_form(params)
request = Net::HTTP.new('localhost', 2000)
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer <meu token secreto>'
}
request.get("/?#{query}", headers)
