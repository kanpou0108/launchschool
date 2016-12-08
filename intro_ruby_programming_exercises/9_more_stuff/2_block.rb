def execute(&block)
  block
  # block.call
end

execute { puts "Hello from inside the execute method!" }

# nothing because the block is not called via .call command

# The method returns a Proc object.