# File: even_numbers_sum.rb

class EvenNumbersAdder
  def add(numbers)	
    sum = numbers.find_all(&:even?).reduce(:+)
		
	return sum == nil ? 0 : sum
  end	
end
