# = Class
# This is the base class for *all* the cars we are going to
# create in our program. From it we create cars
# of specific _brands_. Check the to_s method of this
# Car class for a more readable description.
#
# @author Eustaquio Rangel
#
# Required parameters to create the car.
# Do not forget that every car will have the costs of:
# * Registration tax
# * Mandatory insurance
# * Insurance
# * Maintenance
#
# @!attribute [r] brand
#   @return [Symbol] returns the car's brand
#
# @!attribute [r] model
#   @return [Symbol] returns the car's model
#
# @!attribute [r] tank
#   @return [Integer] returns the car's tank capacity, in liters
#
# @!attribute [rw] color
#   @return [Symbol] assigns and returns the car's color
#
class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color

  # @param brand [Symbol] the car's brand
  # @param model [Symbol] the car's model
  # @param color [Symbol] the car's color
  # @param tank [Integer] the car's tank capacity, in liters
  #
  # @return a new Car object
  def initialize(brand, model, color, tank)
    @brand = brand
    @model = model
    @color = color
    @tank  = tank
  end

  # Converts the car into a more readable representation
  def to_s
    "Brand:#{@brand} Model:#{@model} Color:#{@color} Tank:#{@tank}"
  end
end

# A _Beetle_ class, derived from the Car class.
class Beetle < Car
  # @return [Boolean] whether registration tax is due this year
  def registration_tax
    false
  end
end
