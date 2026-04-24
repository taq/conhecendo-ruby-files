require "net/http"
require "json"

params  = { nome: "Eustáquio", sobrenome: "Rangel" }
query   = URI.encode_www_form(params)
request = Net::HTTP.new("localhost", 2000)
headers = {
  "Content-Type": "application/json",
  "Authorization": "Bearer <my secret token>"
}
request.post("/", params.to_json, headers)
