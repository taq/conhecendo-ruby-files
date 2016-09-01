require "#{File.expand_path(File.dirname(__FILE__))}/portnum/version"

class Numeric
  def par?
    self % 2 == 0
  end

  def impar?
    self % 2 == 1
  end
end
