require 'erb'

class User
  def initialize
    @name = 'taq'
  end

  def resolve_binding
    binding
  end
end

user = User.new
erb  = ERB.new "Hello, <%= @name %>!"

puts erb.result(user.resolve_binding)
