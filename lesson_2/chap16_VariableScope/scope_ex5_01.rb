# Example 5: variable shadowing

# But what if we had a variable named n in the outer scope? We know that the inner scope has access to the outer scope, so we'd essentially have two local variables in the inner scope with the same name. 
# When that happens, it's called variable shadowing, and it prevents access to the outer scope local variable. 
# See this example:

n = 10

[1, 2, 3].each do |n|
  puts n
end

puts n
