# Question 15
# Why is the name method invoked instead of the local variable name on line 8 in the following example?
# 

name = "Lisa"

def name
  "George"
end

def display_name
  puts name
end

display_name