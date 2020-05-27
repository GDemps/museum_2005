require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'


class PatronTest < Minitest::Test

  def test_patron_exists
    patron_1 = Patron.new("Bob", 20)
    assert_instance_of Patron, patron_1
  end

  def test_attributes_of_Patron
    patron_1 = Patron.new("Bob", 20)
    assert_equal "Bob", patron_1.name
    assert_equal 20, patron_1.spending_money
    assert_equal [], patron_1.interests
  end

  def test_add_interest
    patron_1 = Patron.new("Bob", 20)
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], patron_1.interests
  end

end
