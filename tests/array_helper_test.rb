require 'test/unit'
require_relative '../lib/array_helper'

class ArrayHelperTest < Test::Unit::TestCase

  def setup
    @test_hash = {:one => '1', :two => '2'}
    @hash_wrapped_in_array = [@test_hash]
    @test_string = "OneTwoThree"
  end

  def test_unwrap_from_array
    assert_equal(@test_hash, RestClientPlus::ArrayHelper.unwrap_from_array(@hash_wrapped_in_array))
  end

  def test_unwrap_from_array_when_hash_passed
    assert_equal(@test_hash, RestClientPlus::ArrayHelper.unwrap_from_array(@test_hash))
  end

  def test_unwrap_from_array_when_string_passed
    assert_equal(@test_string, RestClientPlus::ArrayHelper.unwrap_from_array(@test_string))
  end

end