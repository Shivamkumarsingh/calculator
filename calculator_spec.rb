require "minitest/autorun"
require_relative "calculator"

class StringCalculatorTest < Minitest::Test

 # Handle empty String #   
  def test_empty_string_returns_zero
    assert_equal 0, add("")
  end
end