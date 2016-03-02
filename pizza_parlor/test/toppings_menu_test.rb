require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/toppings_menu'

class ToppingsMenuTest < Minitest::Test
  def test_that_toppings_data_is_loaded_and_creates_instances_of_topping
    tm = ToppingsMenu.new
    file_path = './data/toppings.csv'
    t = tm.load_data(file_path)
    assert "Anchovies"
  end
end
