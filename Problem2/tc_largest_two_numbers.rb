# File:  tc_largest_two_numbers.rb

require_relative "largest_two_numbers.rb"
require "test/unit"

class TestLargestTwoNumbers < Test::Unit::TestCase	
  def test_empty		
    largest_two_numbers = LargestTwoNumbers.new
    numbers = []	
		
    assert_raise RuntimeError do
      returned_result = largest_two_numbers.get_numbers(numbers)	
    end		
  end	
		
  def test_below_minimun		
    largest_two_numbers = LargestTwoNumbers.new
    numbers = [5]
      
    assert_raise RuntimeError do
      returned_result = largest_two_numbers.get_numbers(numbers)	
    end		
  end
	
  def test_just_above_minimum		
    largest_two_numbers = LargestTwoNumbers.new
    numbers = [0,5]
      
    returned_result = largest_two_numbers.get_numbers(numbers)		
      
    assert_equal(Array[5,0], returned_result)
  end
	
  def test_normal_array		
    largest_two_numbers = LargestTwoNumbers.new
    numbers = [5,7,9,10,1000,9999,55,12,-50,15000]
      
    returned_result = largest_two_numbers.get_numbers(numbers)		
      
    assert_equal(Array[15000,9999], returned_result)
  end
	
  def test_with_duplicates		
    largest_two_numbers = LargestTwoNumbers.new
    numbers = [5,9,10,12,10,78,78]
      
    returned_result = largest_two_numbers.get_numbers(numbers)		
      
    assert_equal([78,12], returned_result)
  end
end