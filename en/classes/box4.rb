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
    boxs = Array.new(@qty / qty, qty)
    boxs << @qty % qty if @qty % qty > 0
    @qty = 0
    boxs.map { ScrewBox.new(it) }
  end
end

box1 = ScrewBox.new(10)
box2 = ScrewBox.new(20)
box3 = box1 + box2

puts box3 / 8
