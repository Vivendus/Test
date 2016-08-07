# File:  tc_even_numbers_sum.rb

require_relative "even_numbers_sum.rb"
require "test/unit"

class TestEvenNumbersSum < Test::Unit::TestCase
	
	def test_empty
		
		even_numbers_sum = EvenNumbersSum.new
		numbers = Array[]
		
		sum_of_even_numbers = even_numbers_sum.get_sum_of_even_numbers(numbers)		
	
		assert_equal(0, sum_of_even_numbers)
	end
	
	def test_even_numbers
		
		even_numbers_sum = EvenNumbersSum.new
		numbers = Array[10,22,32,40,82]
		
		sum_of_even_numbers = even_numbers_sum.get_sum_of_even_numbers(numbers)		
	
		assert_equal(186, sum_of_even_numbers)
	end

	
	def test_no_even_numbers
		
		even_numbers_sum = EvenNumbersSum.new
		numbers = Array[5,15,7,13,11]
		
		sum_of_even_numbers = even_numbers_sum.get_sum_of_even_numbers(numbers)		
	
		assert_equal(0, sum_of_even_numbers)
	end
	
	def test_combined_even_numbers
		
		even_numbers_sum = EvenNumbersSum.new
		numbers = Array[5,10,40,13,11,22,82]
		
		sum_of_even_numbers = even_numbers_sum.get_sum_of_even_numbers(numbers)		
	
		assert_equal(154, sum_of_even_numbers)
	end
end
