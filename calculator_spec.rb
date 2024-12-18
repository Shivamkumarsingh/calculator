require "minitest/autorun"
require_relative "calculator"

class StringCalculatorTest < Minitest::Test

 # Handle empty String #   
  def test_empty_string_returns_zero
    assert_equal 0, add("")
  end

  # Handle single number"
  def test_single_number_returns_number
    assert_equal 5, add("5")
  end

  # Handle Two numbers"
  def test_two_numbers_return_sum
    assert_equal 6, add("1,5")
  end
end
