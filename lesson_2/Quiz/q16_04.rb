# Question 16
# In the following example, "George" is printed to the screen because the name method is invoked on line 8.
# 
# def name
#   "George"
# end
# 
# name = "Lisa"
# 
# def display_name
#   puts name()
# end
# 
# display_name
# How can we change the code so that "Lisa" is printed instead?


def name
  "George"
end

name = "Lisa"

def display_name(name)
  puts name
end

display_name(name)