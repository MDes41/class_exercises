require 'minitest/autorun'
require 'minitest/pride'
require_relative 'wizarding_bank_challenge'

class PersonTest < Minitest::Test

  def test_person_is_created
    person1 = Person.new("Minerva", 1000)

    assert_equal "Minerva", person1.name
  end

  def test_galleons_is_created
    person1 = Person.new("Minerva", 1000)

    assert_equal 1000, person1.galleons
  end
end
