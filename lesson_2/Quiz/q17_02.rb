# Question 17
# In the following example, why does Ruby reference the local variable name on line 8 instead of invoking the name method?

# name = "Lisa"

def name
  "George"
end

loop do
  puts name
  break
end