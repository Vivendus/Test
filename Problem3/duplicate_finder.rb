# File: array_duplicates.rb

class DuplicateFinder
  def has_duplicates(numbers)	
    numbers.each do |number|					
      if numbers[number.abs - 1] > 0 then
         numbers[number.abs - 1] *= -1
      else
        return true
      end
    end
		
    return false
  end
end
