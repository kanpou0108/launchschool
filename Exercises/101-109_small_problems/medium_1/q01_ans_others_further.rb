# def rotate_array(array)  
#   new_array = []
#   i = 1
#   while i < array.size 
#     new_array << array[i]
#     i += 1
#   end
#   new_array << array[0]
# end
# For further expression

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Rotation (Part 1)
# 
# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.
# 
# Do not use the method Array#rotate or Array#rotate! for your implementation.
# 
# Example:
