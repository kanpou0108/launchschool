# Question 8
# There is an error in the code below; identify what it is.
require 'pry'

user_input = gets

loop do
  name = user_input
  binding.pry
  break
end

if user_input
  puts "Hello " + name
end