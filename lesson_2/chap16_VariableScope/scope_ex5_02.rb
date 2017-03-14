# Example 5: variable shadowing

# The puts n will use the block parameter n and disregard the outer scoped local variable. 
# Variable shadowing also prevents us from making changes to the outer scoped n:

n = 10

1.times do |n|
  n = 11
end

puts n          # => 10