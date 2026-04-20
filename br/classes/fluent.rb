class SQL
  attr_reader :table, :conditions, :order

  def from(table)
    @table = table
    self
  end

  def where(cond)
    @conditions = cond
    self
  end

  def order(order)
    @order = order
    self
  end

  def to_s
    "select * from #{@table} where #{@conditions} order by #{@order}"
  end
end

sql = SQL.new.from("carros").where("marca='Ford'").order("modelo")
puts sql
