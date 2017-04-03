# Question 17
# Carefully examine the following code example.
# 
# flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
# flavors.reject { |flavor| puts flavor }
# Based on your observations of the code example, select all statements below which are true.

flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
new_arr = flavors.reject { |flavor| puts flavor }

p new_arr
# => ["chocolate", "strawberry", "mint", "vanilla"]