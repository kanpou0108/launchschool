def diamond(number)
  half = number / 2
  
  number.times do |idx|
    blank = (half - idx).abs
    asterisk = number - (blank * 2)
    puts ' ' * blank + '*' * asterisk + ' ' * blank
  end

end

diamond(1)
diamond(3)
diamond(9)

# Diamonds!
# 
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.
# 
# Examples

# diamond(1)
# 
# *
# diamond(3)
# 
#  *
# ***
#  *
# diamond(9)
# 
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *