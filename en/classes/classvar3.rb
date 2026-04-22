@@qty = 10

class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color
  @@qty = 0
  puts self

  def initialize(brand, model, color, tank)
    @brand  = brand
    @model  = model
    @color  = color
    @tank   = tank
    @@qty  += 1
  end

  def to_s
    "brand:#{@brand} model:#{@model} color:#{@color} tank:#{@tank}"
  end

  def self.qty
    @@qty
  end
end

puts self
puts @@qty
