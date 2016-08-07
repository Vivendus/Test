# File: even_numbers_sum.rb

class EvenNumbersSum
    def get_sum_of_even_numbers(numbers)	
		sum = 0
		
		numbers.each do |number|
			if is_even(number)
				sum += number
			end
		end
		
		return sum
    end	
	
	def is_even(number)
		return number % 2 == 0
	end
end
