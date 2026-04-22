require 'singleton'

class Test
  include Singleton
end

begin
  Test.new
rescue StandardError => e
  puts "Can't create using new: #{e}"
end

puts Test.instance.object_id
puts Test.instance.object_id
