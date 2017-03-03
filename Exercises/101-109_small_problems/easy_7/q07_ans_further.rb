def show_multiplicative_average(numbers)
  # product = 1.to_f
  product = 1
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts format('%.3f', average)
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667