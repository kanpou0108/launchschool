# Question 12
# Looking again at the code from the previous question:
# 
# Select all the ways in which we could change this code in order for the last line to output "hi there".

def extend_greeting(greeting)
  # greeting + " there"
  greeting << " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting