def fizzbuzz(start_number, end_number)
  result = []
  while start_number <= end_number do
    if start_number % 15 == 0
      result << "FizzBuzz"
    elsif start_number % 5 == 0
      result << "Buzz"
    elsif start_number % 3 == 0
      result << "Fizz"
    else
      result << start_number
    end
    start_number += 1
  end  
  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz