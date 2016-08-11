# File: array_duplicates.rb

class DuplicateFinder
  def has_duplicates(numbers)
    numbers.length != numbers.uniq.length
  end
end
