class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def average(collection)
    val = collection.values
    val.reduce(:+) / val.size.to_f
  end
end
