# 44:25

# reassignment VS initialization

def str
  "Hi"
end

# str = "hello"

loop do
  str = "world"
  break
end

puts str
# 1. variable initialization.
# 2. variable reassignment. 
# 3. method invocation.

# 45:58
# that change the context of line XX is very non obvious.
# because there is no differential syntax between variable initialization and variable reassignment.
# in a lot of language specify keyword or something
# Some (language) has keyword (between initialization and reassignment)
# but in Ruby there is no keyword.