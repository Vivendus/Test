# File: largest_two_numbers.rb

class LargestTwoNumbers
	def get_largest_two_numbers(numbers)
	
		if numbers.length < 2
			raise "Array of length too small, min 2!"
		end

		firstLargeNumber = numbers[0]
		secondLargeNumber = numbers[1]
		
		if firstLargeNumber < secondLargeNumber 		
			firstLargeNumber, secondLargeNumber = secondLargeNumber, firstLargeNumber
		end
		
		for index in 2..numbers.length - 1
			if numbers[index] > firstLargeNumber 
			
				secondLargeNumber = firstLargeNumber
				firstLargeNumber = numbers[index]
		
			else 
				if numbers[index] > secondLargeNumber			
					secondLargeNumber = numbers[index]
				end
			end
		end	
		
		return firstLargeNumber, secondLargeNumber		
	end
end