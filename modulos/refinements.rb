module NewHashToS
  refine Hash do
    def to_s
      map do |key, val|
        "[#{key}=#{val}]"
      end.join(',')
    end
  end
end

class Primeira
  def initialize(values)
    puts "primeira: #{values}"
  end
end

class Segunda
  using NewHashToS

  def initialize(values)
    puts "segunda: #{values}"
  end

  def self.used_refinements
    Module.used_refinements
  end
end

class Terceira
  def initialize(values)
    puts "terceira: #{values}"
  end
end

values = { a: 1, b: 2, c: 3 }

Primeira.new(values)
Segunda.new(values)
Terceira.new(values)

puts "no contexto principal: #{values}"
using NewHashToS
puts "no contexto principal, refinado: #{values}"

p NewHashToS.refinements
p NewHashToS.refinements[0].refined_class
p NewHashToS.refinements[0].instance_methods(false)
p Module.used_refinements
p Segunda.used_refinements
