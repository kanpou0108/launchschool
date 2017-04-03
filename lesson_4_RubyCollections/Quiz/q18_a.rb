# Question 18
# Identify all of the code implementations that correctly meet the following set of requirements.
# 
# Given an array numbers which contains both odd and even integers; create two new arrays, odd_numbers which contains the odd integers from the original array and even_numbers which contains the even integers.
# 
# Your Answer

numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]

odd_numbers = numbers.select do |number|
                number.odd?
              end

even_numbers = numbers.select do |number|
                number.even?
              end
              
p odd_numbers
p even_numbers
# [1, 5, 7, 13]
# [2, 4, 8, 10, 14]