class Topping
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def name
    data[:name]
  end

  def price
    data[:price]
  end

  def is_vegetarian
    data[:is_vegetarian] == "yes"
  end

end
