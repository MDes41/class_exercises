require_relative 'topping'
require 'csv'

class ToppingsMenu

  def load_data(file_path)
    csv = CSV.open(file_path, :headers => true, :header_converters => :symbol)
      require "pry"; binding.pry
    csv.to_a.map { |row| Topping.new(row.to_h) }

  end

  def find_by_name(topping)

  end
end
