module Enumerable
  def ∑
    self.inject { |memo, val| memo += val }
  end
end

puts [1,2,3].∑
puts (0..3).∑
