# ..failed..
def merge(arr1, arr2)
  
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

# Merge Sorted Lists
# 
# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.
# 
# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.
# 
# Your solution should not mutate the input arrays.
# 
# Examples:
