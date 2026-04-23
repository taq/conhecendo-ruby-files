class Test
  def initialize
    puts "Default behavior"
  end
end

load("load2.rb", true)

puts "-" * 50
puts "Inside load1:"
Test.new
