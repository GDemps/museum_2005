require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'


class ExhibitTest < Minitest::Test

  def test_exhibit_exists
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    assert_instance_of Exhibit, exhibit
  end

end
