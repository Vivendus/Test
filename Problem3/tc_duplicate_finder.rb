# File:  tc_duplicate_finder.rb

require_relative "duplicate_finder.rb"
require "test/unit"

class TestArrayDuplicates < Test::Unit::TestCase  
  def test_empty    
    duplicate_finder = DuplicateFinder.new
    numbers = []
    
    returnedResult = duplicate_finder.has_duplicates(numbers)    
  
    assert_equal(false, returnedResult)
  end
  
  def test_no_duplicates    
    duplicate_finder = DuplicateFinder.new
    numbers = [5,3,2,1,4]
    
    returnedResult = duplicate_finder.has_duplicates(numbers)    
  
    assert_equal(false, returnedResult)
  end

  
  def test_only_duplicates    
    duplicate_finder = DuplicateFinder.new
    numbers = [5,5,5,5,5,5,5,5,5]
    
    returnedResult = duplicate_finder.has_duplicates(numbers)    
  
    assert_equal(true, returnedResult)
  end
  
  def test_duplicates_mixed    
    duplicate_finder = DuplicateFinder.new
    numbers = [6,5,2,3,6,1,2,2]
    
    returnedResult = duplicate_finder.has_duplicates(numbers)    
  
    assert_equal(true, returnedResult)
  end
end
