require "net/https"

begin
  site = Net::HTTP.new("postman-echo.com", 443)
  site.use_ssl = true

  site.start do |http|
    req = Net::HTTP::Get.new("/get?foo=bar")
    response = http.request(req)
    puts response.body
  end
rescue => exception
  puts "erro: #{e}"
end
