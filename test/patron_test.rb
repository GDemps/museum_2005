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
  end

end