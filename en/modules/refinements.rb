module NewHashToS
  refine Hash do
    def to_s
      map do |key, val|
        "[#{key}=#{val}]"
      end.join(',')
    end
  end
end

class First
  def initialize(values)
    puts "first: #{values}"
  end
end

class Second
  using NewHashToS

  def initialize(values)
    puts "second: #{values}"
  end

  def self.used_refinements
    Module.used_refinements
  end
end

class Third
  def initialize(values)
    puts "third: #{values}"
  end
end

values = { a: 1, b: 2, c: 3 }

First.new(values)
Second.new(values)
Third.new(values)

puts "main context: #{values}"
using NewHashToS
puts "main context, refined: #{values}"

p NewHashToS.refinements
p NewHashToS.refinements[0].target
p NewHashToS.refinements[0].instance_methods(false)
p Module.used_refinements
p Second.used_refinements
