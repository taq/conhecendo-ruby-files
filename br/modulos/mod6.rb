require 'singleton'

class Teste
  include Singleton
end

begin
  Teste.new
rescue StandardError => e
  puts "Não consegui criar usando new: #{e}"
end

puts Teste.instance.object_id
puts Teste.instance.object_id
