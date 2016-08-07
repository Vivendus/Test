# File:  tc_array_duplicates.rb

require_relative "array_duplicates.rb"
require "test/unit"

class TestArrayDuplicates < Test::Unit::TestCase
	
	def test_empty
		
		array_duplicates = ArrayDuplicates.new
		numbers = Array[]
		
		returnedResult = array_duplicates.has_duplicates(numbers)		
	
		assert_equal(false, returnedResult)
	end
	
	def test_no_duplicates
		
		array_duplicates = ArrayDuplicates.new
		numbers = Array[5,3,2,1,4]
		
		returnedResult = array_duplicates.has_duplicates(numbers)		
	
		assert_equal(false, returnedResult)
	end

	
	def test_only_duplicates
		
		array_duplicates = ArrayDuplicates.new
		numbers = Array[5,5,5,5,5,5,5,5,5]
		
		returnedResult = array_duplicates.has_duplicates(numbers)		
	
		assert_equal(true, returnedResult)
	end
	
	def test_duplicates_mixed
		
		array_duplicates = ArrayDuplicates.new
		numbers = Array[6,5,2,3,6,1,2,2]
		
		returnedResult = array_duplicates.has_duplicates(numbers)		
	
		assert_equal(true, returnedResult)
	end
end
