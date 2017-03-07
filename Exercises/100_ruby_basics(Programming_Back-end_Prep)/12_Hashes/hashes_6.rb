# Divided by Two
# 
# Use Hash#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.
# 
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }
# Expected output:
# 
# [50, 25, 5]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map do |k, v|
  # numbers[k] = v / 2
  v / 2
end

p half_numbers
puts "--------------------"
p numbers