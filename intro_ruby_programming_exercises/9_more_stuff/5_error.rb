# Why does the following code...
# Give us the following error when we run it?
# 
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# we are not passing any argument to the method
# to pass a block we have to insert & before the block parameter

# Solution
# The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter.