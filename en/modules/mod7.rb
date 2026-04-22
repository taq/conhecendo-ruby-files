module TesteMod
  module ClassMethods
    def class_method
      puts "This is a class method!"
    end

    private

    def private_method
      puts "This is a private class method!"
    end
  end

  def self.included(where)
    where.extend(ClassMethods)
  end

  def instance_method
    puts "This is an instance method!"
  end
end

class TestCls
  include TesteMod
end

t = TestCls.new
t.instance_method
TestCls.class_method
TestCls.private_method
