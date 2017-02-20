# Write a method that takes two numbers. 
# It should print out all primes between the two numbers. 
# Don't use Ruby's prime class.

def is_prime?(number)
  # return false if number < 2
  (2...number).each do |divisor|
    return false if number % divisor == 0
  end
  return true
end

def find_primes(start_num, end_num)
  (start_num..end_num).select do |num| 
    is_prime?(num)
  end.join(', ')
end

p find_primes(3, 10)
p find_primes(5, 20)
p find_primes(1, 2)