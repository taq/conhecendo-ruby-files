require 'net/http'

begin
  host = Net::HTTP.new('postman-echo.com', 443)
  host.use_ssl = true
  res = host.get('/get?foo=bar')

  puts res.body if res.is_a?(Net::HTTPSuccess)
rescue => exc
  puts "erro: #{exc}"
end
