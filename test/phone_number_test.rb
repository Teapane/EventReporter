require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class PhoneNumberTest < MiniTest::Unit::TestCase

  attr_reader :phone


  def setup
  @phone =PhoneNumber.new
  end


  def test_it_is_ten_character_string
  assert phone.length == 10, "Number is supposed to be 10 chars and is instead#{phone.length}"
  end

  def test_it_cleans_bad_values
    phone_num = PhoneNumber.new("308*6542255")
    assert_equal "3086542255", phone_num.digits
  end

  def test_it_disposes_of_bad_digits
    phone_num = PhoneNumber.new("1234567890188868686868")
    assert_equal "0000000000", phone_num.digits
    phone_num = PhoneNumber.new("1234")
    assert_equal "0000000000", phone_num.digits
  end

  def test_it_truncate_11_nums_to_10
    phone_num = PhoneNumber.new('12312312312')
    assert_equal "2312312312", phone_num.digits  
  end
end

