# Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
# 1) thousands place
# 2) hundreds place
# 3) tens place
# 4) ones place

puts 1234 / 1000
puts 1234 % 1000 / 100
puts 1234 % 100 / 10
puts 1234 % 10


# thousands = 4936 / 1000
# hundreds = 4936 % 1000 / 100
# tens = 4936 % 1000 % 100 / 10
# ones = 4936 % 1000 %100 % 10

# Note that for the tens and ones, you can skip the extra % operations like this:
# tens = 4936 % 100 / 10
# ones = 4936 % 10