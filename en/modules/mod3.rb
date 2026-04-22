class ScrewBox
  include Comparable
  attr_reader :qty

  def initialize(qty)
    @qty = qty
  end

  def <=>(other)
    self.qty <=> other.qty
  end
end

box1 = ScrewBox.new(10)
box2 = ScrewBox.new(20)
box3 = ScrewBox.new(10)

puts box1 < box2
puts box2 > box3
puts box1 == box3
puts box3 > box2
puts box1.between?(box3, box2)
