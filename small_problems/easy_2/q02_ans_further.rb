SQFEET_TO_SQINCHES = 144
SQINCHES_TO_SQCENTIMETERS = 6.4516

puts "==> Enter the length of the room in feet:"
length = gets.to_f

puts "==> Enter the width of the room in feet:"
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centimeters = (square_inches * SQINCHES_TO_SQCENTIMETERS).round(2)

puts "The area of the room is #{square_feet} square feet " + \
     "(#{square_inches} square inches, or #{square_centimeters} square centimeters.)"