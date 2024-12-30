module TesteMod
  module ClassMethods
    def class_method
      puts "Esse é um método da classe!"
    end

    private

    def private_method
      puts "Esse é um método privado de classe!"
    end
  end

  def self.included(where)
    where.extend(ClassMethods)
  end

  def instance_method
    puts "Esse é um método de instância!"
  end
end

class TesteCls
  include TesteMod
end

t = TesteCls.new
t.instance_method
TesteCls.class_method
TesteCls.private_method
