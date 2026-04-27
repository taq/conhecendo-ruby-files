# = Class
# This is the base class for *all* the cars we are going to
# create in our program. From it we create cars
# of specific _brands_. Check the to_s method of this
# Car class for a more readable description.
# ---
#
# == About the author and license
#
# Author:: Eustaquio 'TaQ' Rangel
# Website:: http://eustaquiorangel.com
# Email:: mailto:naoteconto@eustaquiorangel.com
# License:: +GPL+ Click here for more[http://www.fsf.org]
#--
# Hey, nobody should be reading this.
#++
# Thanks for choosing us.
class Car
  attr_reader :brand, :model, :tank
  attr_accessor :color

  # Required parameters to create the car.
  # Do not forget that every car will have the costs of:
  # * Registration tax
  # * Mandatory insurance
  # * Insurance
  # * Maintenance
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
  def registration_tax
    false
  end
end
