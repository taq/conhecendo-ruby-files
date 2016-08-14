require "singleton"

class Teste
  include Singleton
end

begin
  Teste.new
rescue => exception
  puts "Não consegui criar usando new: #{exception}"
end

puts Teste.instance.object_id
puts Teste.instance.object_id
