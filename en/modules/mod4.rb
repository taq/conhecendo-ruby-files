class Screw
  attr_reader :inches

  def initialize(inches)
    @inches = inches
  end

  def <=>(other)
    self.inches <=> other.inches
  end

  def to_s
    "Screw #{object_id} with #{@inches}\""
  end
end

class ScrewBox
  include Enumerable

  def initialize
    @screws = []
  end

  def <<(parafuso)
    @screws << parafuso
  end

  def each
    @screws.each { yield(it) }
  end
end

box = ScrewBox.new
box << Screw.new(1)
box << Screw.new(2)
box << Screw.new(3)

puts "the smaller screw in the box is: #{box.min}"
puts "the bigger screw in the box is: #{box.max}"
puts "the even screws are: #{box.select { it.inches % 2 == 0}.join(',')}"
puts "duplicating the box: #{box.map { Screw.new(it.inches * 2).to_s }}"
