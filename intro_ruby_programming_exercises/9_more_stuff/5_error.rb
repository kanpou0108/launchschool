def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5_error.rb:1:in `execute': wrong number of arguments (given 0, expected 1) (ArgumentError)
# from 5_error.rb:5:in `<main>'

# we are not passing any argument to the method
# to pass a block we have to insert & before the block parameter