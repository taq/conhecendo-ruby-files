class A
  attr_accessor :outro

  def initialize(outro = nil)
    @outro = outro
  end

  def show
    puts "Estou em #{self.class.name}, #{object_id}"
    puts "Outro: #{@outro.object_id}" if !@outro.nil?
  end
end

class B < A
end

a = A.new
b = B.new(a)

a.show
b.show

b2 = Marshal.load(Marshal.dump(b))
b2.show
