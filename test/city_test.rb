require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/city.rb'


class CityTest < MiniTest::Unit::TestCase

def test_it_does_not_return_nil
  ci = City.new
  assert !ci.city_name.nil?
  end
end
