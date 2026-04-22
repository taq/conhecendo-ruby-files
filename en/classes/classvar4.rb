class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color

  class << self
    attr_accessor :qty
  end
  @qty = 0

  def initialize(brand, model, color, tank)
    @brand = brand
    @model = model
    @color = color
    @tank  = tank
    self.class.qty += 1
  end

  def to_s
    "Brand:#{@brand} Model:#{@model} Color:#{@color} Tank:#{@tank}"
  end
end

corsa   = Car.new(:chevrolet, :corsa, :black, 50)
gol     = Car.new(:volks ,:gol, :blue, 42)
ferrari = Car.new(:ferrari, :enzo, :red, 70)
puts Car.qty

# Isso vai ficar comentado até aprendemos como corrigir, mais à frente
#Car.qty = 10
#puts Car.qty
