# What does the following error message tell you?
# 
# NameError: undefined local variable or method `shoes' for main:Object
#   from (irb):3
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

def method(x)
    x += 1
    shoes = x
end

puts shoes

# The program is trying to reference a variable or method named shoes that has not been defined in the program, 
# or is outside of the scope in which it is being called.

# variable shoes is not defined or outside of the scope in which it is being called
