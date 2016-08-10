# File: even_numbers_sum.rb

class EvenNumbersAdder
  def add(numbers)	
    numbers.find_all(&:even?).reduce(:+).to_i
  end	
end
