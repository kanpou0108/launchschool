# def negative(number)
#   number > 0 ? -number : number
# end

# Further Exploration
# There is an even shorter way to write this but it isn't as immediately intuitive.

def negative(number)
  -number.abs
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
