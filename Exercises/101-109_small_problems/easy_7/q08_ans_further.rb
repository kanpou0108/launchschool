def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |nest| nest[0] * nest[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Multiply Lists
# 
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.
# 
# Examples:

