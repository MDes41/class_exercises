require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/topping'

class ToppingTest < Minitest::Test
  def test_name_method_returns_name_of_first_row_of_data
    data = {        name: "Artichoke hearts",
                    price: "2",
            is_vegetarian: "yes"
            }
    t = Topping.new(data)
    assert "Artichoke hearts", t.name
  end

  def test_price_method_returns_price_of_first_row_of_data
    data = {        name: "Artichoke hearts",
                    price: "2",
            is_vegetarian: "yes"
            }
    t = Topping.new(data)
    assert "2", t.price
  end

  def test_is_vegetarian_method_returns_bolen_of_first_row_of_data
    data = {        name: "Artichoke hearts",
                    price: "2",
            is_vegetarian: "yes"
            }
    t = Topping.new(data)
    assert t.is_vegetarian
  end

end
