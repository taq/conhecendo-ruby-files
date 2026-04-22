class ScrewBox
  protected
  attr_writer :qty

  public
  attr_reader :qty

  def initialize(qty)
    @qty = qty
  end

  def to_s
    "Number of screws in box #{self.object_id}: #{@qty}"
  end

  def +(other)
    nova = ScrewBox.new(@qty + other.qty)
    @qty = 0
    other.qty = 0
    nova
  end

  def /(qty)
    boxs = Array.new(qty, @qty / qty)
    (@qty % qty).times { boxs[it] += 1 }
    @qty = 0
    boxs.map { ScrewBox.new(it) }
  end

  def -@
    anterior = @qty
    @qty = 1
    ScrewBox.new(anterior - 1)
  end
end

box1 = ScrewBox.new(10)
box2 = -box1

puts box1
puts box2
