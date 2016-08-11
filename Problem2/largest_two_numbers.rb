# File: largest_two_numbers.rb

class LargestTwoNumbers
  def get_numbers(numbers)	
    numbers.length < 2 ? (raise "Array of length too small, min 2!") : numbers.uniq.max(2)	
  end
end