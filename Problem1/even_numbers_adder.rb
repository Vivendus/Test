# File: even_numbers_sum.rb

class EvenNumbersAdder
  def add(numbers)	
    numbers.find_all(&:even?).reduce(:+) || 0
  end	
end
