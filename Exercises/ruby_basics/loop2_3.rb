# Using an if/else statement, 
# run a loop that 
# prints "The loop was processed!" one time if process_the_loop equals true. 
# Print "The loop wasn't processed!" if process_the_loop equals false.

# 何がやりたいのか分からなくなったが、ansでは単純だった。

process_the_loop = [true, false].sample

loop do process_the_loop
  puts "The loop was processed!"
  break
end

puts "The loop wasn't processed!"