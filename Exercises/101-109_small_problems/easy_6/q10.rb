def triangle(number)
  number.times do |idx|
    print "#{' ' * (number - (idx + 1))}"
    print "#{'*' * (idx + 1)}\n"
  end
end

triangle(5)
triangle(9)

# Right Triangles
# 
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
# 
# Examples:
# 
# triangle(5)
# 
#     *
#    **
#   ***
#  ****
# *****
# triangle(9)
# 
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********