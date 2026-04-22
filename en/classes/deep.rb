class A
  attr_accessor :other

  def initialize(other = nil)
    @other = other
  end

  def show
    puts "I'm in #{self.class.name}, #{object_id}"
    puts "Other: #{@other.object_id}" if !@other.nil?
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
