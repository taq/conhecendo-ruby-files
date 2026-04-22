class ScrewBox
  attr_reader :qty

  def initialize(qty)
    @qty = qty
  end

  def to_s
    "Number of screws in box #{self.object_id}: #{@qty}"
  end

  def +(other)
    ScrewBox.new(@qty + other.qty)
  end
end

box1 = ScrewBox.new(10)
box2 = ScrewBox.new(20)
box3 = box1 + box2

puts box1
puts box2
puts box3
