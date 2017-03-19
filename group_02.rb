#109 March 14th

# Write a method that computes the difference 
# between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.
# 
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# input: 
# Integer
# output: 
# between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.
# algorithm:
# to calculate square_of_sum, use inject method first, next use map method
# to calculate sum_of_square, use map method first, next use inject method
  

def sum_square_difference(num)
  square_of_sum = ((1..num).inject(:+)) ** 2
  sum_of_square = (1..num).map { |e| e ** 2 }.inject(:+)
  return (square_of_sum - sum_of_square)
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150