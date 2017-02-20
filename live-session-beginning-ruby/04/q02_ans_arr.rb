# Write a method that takes two agruments: the first is the starting number. and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3 , print 'Fizz', if a number is divisible by 5, print 'Buzz', and finally if a number is divisible by 3 and 5, print 'FizzBuzz'

# input
# fizzbuzz(1, 15)
# output
# 1, 2, "Fizz", 4, "Buzz", "Fizz", .......

def fizzbuzz(start_num, end_num)
  arr = []
  (start_num..end_num).each do |num|
    result = ''
    result << 'Fizz' if num % 3 == 0
    result << 'Buzz' if num % 5 == 0
    # result = result.empty? ? num : result
    result = num if result.empty?
    arr << result
  end
  arr
end

puts (fizzbuzz(1, 15)).join(', ')