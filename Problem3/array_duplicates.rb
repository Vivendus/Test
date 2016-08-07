# File: array_duplicates.rb

class ArrayDuplicates
	def has_duplicates(numbers)
		numbers.each do |number|
			index_of_element = number.abs - 1
			if numbers[index_of_element] > 0 then
				numbers[index_of_element] *= -1
			else
				return true
			end
		end
		return false
	end
end
