# frozen_string_literal: true

require_relative "portnum/version"

class Numeric
  def par?
    self % 2 == 0
  end

  def impar?
    self % 2 != 0
  end
end
