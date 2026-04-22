class Primate
  def eat
    puts "Nham!"
  end

  def sleep 
    puts "Zzzzzz..."
  end
end

class Human < Primate
  def sign_in
    puts "Login ... password ..."
  end
end

module Bird
  def fly
    puts "Up, up and away!"
  end
end

class Mutant < Human
end

mutant = Mutant.new
mutant.extend(Bird)
mutant.eat
mutant.sleep
mutant.sign_in
mutant.fly

mutant2 = Mutant.new
mutant2.fly
