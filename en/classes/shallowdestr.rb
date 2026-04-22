class A
  attr_accessor :other

  def initialize(other)
    @other = other
  end
end

other = %w[a b c]

a1 = A.new(other)
a2 = A.new(other)

a1.other << "d"

p a1.other
p a2.other
