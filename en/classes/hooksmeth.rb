# typed: false
# frozen_string_literal: true

class Test
  def self.method_added(meth)
    puts "Added method #{meth}"
  end

  def self.method_removed(meth)
    puts "Removed method #{meth}"
  end
end

t = Test.new
t.class.send(:define_method, :test) { puts "test!" }
t.test
t.class.send(:remove_method, :test)
t.test
