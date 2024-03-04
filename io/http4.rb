require 'net/http'

request = Net::HTTP.new('localhost', 2000)
request.get('/?chave=valor')
