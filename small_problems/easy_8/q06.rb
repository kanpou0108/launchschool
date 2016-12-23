# fizzbuzz
# 
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
# 
# Example:

# ...little failed...
def fizzbuzz(start_number, end_number)
  while start_number <= end_number do
    if start_number % 15 == 0
      puts "FizzBuzz"
    elsif start_number % 5 == 0
      puts "Buzz"
    elsif start_number % 3 == 0
      puts "Fizz"
    else
      puts start_number
    end
    start_number += 1
  end  
    
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
# fizzbuzz(10, 25)
