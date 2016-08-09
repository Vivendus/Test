# File:  tc_even_numbers_adder.rb

require_relative "even_numbers_adder.rb"
require "test/unit"

class TestEvenNumbersAdder < Test::Unit::TestCase
  def test_empty		
    even_numbers_adder = EvenNumbersAdder.new
    numbers = []
      
    returnedSum = even_numbers_adder.add(numbers)		
	
    assert_equal(0, returnedSum)
  end
	
  def test_even_numbers		
    even_numbers_adder = EvenNumbersAdder.new
    numbers = [10,22,32,40,82]
      
    returnedSum = even_numbers_adder.add(numbers)		
    
    assert_equal(186, returnedSum)
  end

	
  def test_no_even_numbers		
    even_numbers_adder = EvenNumbersAdder.new
    numbers = [5,15,7,13,11]
      
    returnedSum = even_numbers_adder.add(numbers)		
    
    assert_equal(0, returnedSum)
  end
	
  def test_combined_even_numbers		
    even_numbers_adder = EvenNumbersAdder.new
    numbers = [5,10,40,13,11,22,82]
      
    returnedSum = even_numbers_adder.add(numbers)		
    
    assert_equal(154, returnedSum)
  end
end
