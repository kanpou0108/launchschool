#109 March 14th

# Write a method that takes an Array of numbers and then returns the sum of 
# the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# require 'pry'

# def sum_of_sums(arr)
#   sum = 0
#   arr.each.with_index do |e, idx|
#     total_arr = arr[0..idx]
#     sum = total_arr.inject(:+)
#   end
#   sum
# end

def sum_of_sums(arr)
  sum = 0
  arr.each.with_index do |e, idx|
    total_arr = arr[0..idx]
    sum += total_arr.inject(:+)
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

p sum_of_sums([3, 5, 2])