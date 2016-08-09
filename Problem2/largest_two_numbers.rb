# File: largest_two_numbers.rb

class LargestTwoNumbers
	def get_numbers(numbers)	
		if numbers.length < 2
			raise "Array of length too small, min 2!"
		end

		first_large_number = numbers[0]
		second_large_number = numbers[1]
		
		if first_large_number < second_large_number 		
			first_large_number, second_large_number = second_large_number, first_large_number
		end
		
		numbers[2..-1].each do |number|
			if number > first_large_number 				
				second_large_number = first_large_number
				first_large_number = number			
			else 
				if number > second_large_number && number != first_large_number		
						second_large_number = number
				end
			end
		end

		return first_large_number, second_large_number		
	end
end