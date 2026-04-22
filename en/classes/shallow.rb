class A
  attr_reader :other

  def initialize(other = nil)
    @other = other
  end

  def show
    puts "I'm in #{self.class.name}, #{object_id}"
    puts "Other: #{@other.object_id}" unless @other.nil?
  end
end

class B < A
end

a = A.new
b = B.new(a)

a.show
b.show

b2 = b.dup
b2.show
