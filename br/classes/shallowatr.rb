class A
  attr_accessor :outro

  def initialize(outro)
    @outro = outro
  end
end

outro = %w[a b c]

a1 = A.new(outro)
a2 = A.new(outro)

a1.outro = %w[d e f]

p a1.outro
p a2.outro
