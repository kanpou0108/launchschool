require 'pry'

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  # odd_numbers << numbers[number] if number.to_i.odd?
  odd_numbers << numbers[number] if numbers[number].to_i.odd?
  # binding.pry
  
  number += 1
end

p odd_numbers
# => ["3", "7", "11", "15"]
# => ["3", "5", "7", "11", "13", "15"]