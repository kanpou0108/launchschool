# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
# 
# Note: 1 square meter == 10.7639 square feet
# 
# Do not worry about validating the input at this time.
# 
# Example Run
# 
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

puts "Enter the length of the room in meters:"
length_meters = gets.chomp
puts "Enter the width of the room in meters:"
width_meters = gets.chomp

area_meters = length_meters.to_i * width_meters.to_i
area_feet = area_meters * 10.7639

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."