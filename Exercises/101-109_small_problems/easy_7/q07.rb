def show_multiplicative_average(ary)
  result = ary.inject(:*) / ary.size.to_f
  puts format("%.3f", result)
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# Multiplicative Average
# 
# Write a method that takes an Array of integers as input, multiplies all of the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places.
# 
# Examples

