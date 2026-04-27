# This is the base class for *all* the cars we are going to
# create in our program. From it we create cars
# of specific _brands_.
#
# Author:: Eustáquio 'TaQ' Rangel
# Licence:: GPL
class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color

  # Required parameters to create the car.
  # Do not forget that every car will have the costs of:
  # * Registration tax
  # * Mandatory insurance
  # * Insurance
  # * Maintenance
  def initialize(brand,model,color,tank)
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
