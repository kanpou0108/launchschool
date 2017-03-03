# 1 1 2 3 5 8 13 21 34 55 89

# For the further exploration part, the last digit cycles every 60 numbers, so using our fibonacci_last method, we can quickly gather the first 60 endings into an array and grab the remainder of nth % 60 to figure out where in the cycle we are. It's instant regardless of the size of the number. 
# For example, the last digit of the 12345678998774503434587943598734578934587943578943589734789534897534589734589734578943589734598784578458745814th fibonacci number is 7.

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

def last_digit(nth)
 endings = 0.upto(60).map { |num| fibonacci_last(num) }
 endings[nth % 60]
end

p fibonacci_last(10)
p fibonacci_last(11)

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

puts "---------------------------------"
p last_digit(10)
p last_digit(11)
p last_digit(12345678998774503434587943598734578934587943578943589734789534897534589734589734578943589734598784578458745814)