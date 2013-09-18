require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/attendee'

class AttendeeTest < MiniTest::Unit::TestCase

  def test_if_set_fields_correctly_initialize
    data = {first_name: 'Bob', last_name: 'Smith'}
    attendee = Attendee.new(data)
    assert_equal data[:first_name], attendee.first_name
    assert_equal data[:last_name], attendee.last_name
  end

  def test_if_creates_a_full_name
    data = {first_name: 'Bob', last_name: 'Smith'}
    attendee = Attendee.new(data)
    assert_equal attendee.first_name+' '+attendee.last_name, attendee.full_name
 end
end
