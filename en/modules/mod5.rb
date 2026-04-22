module Brazilian
  class Person
    def preferred_food
      "feijoada"
    end
  end
end

module Italian
  class Person
    def preferred_food
      "pizza"
    end
  end
end

person1 = Brazilian::Person.new
person2 = Italian::Person.new

puts person1.preferred_food  
puts person2.preferred_food
