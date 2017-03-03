def star(number)
  half_idx = number / 2
  
  half_idx.times do |idx|
    print " " * idx
    print "*"
    print " " * (half_idx - idx - 1)
    print "*"
    print " " * (half_idx - idx - 1)
    print "*"
    print " " * idx
    puts ""
  end
  
  puts "*" * number
  
  half_idx.times do |idx|
    print " " * (half_idx - idx - 1)
    print "*"
    print " " * idx
    print "*"
    print " " * idx
    print "*"
    print " " * (half_idx - idx - 1)
    puts ""
  end    
end

star(7)
puts "----------------------"
star(9)

# Seeing Stars
# 
# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.
# 
# Examples
# 
# star(7)
# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

# star(9)
# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *


# 7/2 = 3 ... 1
# 
# 0
# 0+3
# 0+3+3
# 
# 1
# 1+(3-1)
# 1+(3-1)+(3-1)