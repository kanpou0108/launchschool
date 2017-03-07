def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only integers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

# Discussion
# In this exercise, we solicit two pieces of independent information, so we need separate loops for each number. The first should look reasonably familiar by now, but the second is a bit more complex due to the additional requirement that the denominator not be 0. There are a number of different ways to do this; we just chose a way that we feel is reasonably clear.
# 
# In our last two lines, we convert the two inputs to integers, divide them, and then print the result. Note that we are doing integer division, so 9 / 4 is 2, not 2.25.
