# Question 2
# In the following array, a, b, c and d are variables representing objects to be sorted:
# 
# [a, b, c, d]
# Given the following return values when we compare these variables:
# 
# a <=> b # => -1
# c <=> b # => 0
# d <=> c # => 1
# In what order would we expect the items in the array to be if we called sort on the array? (Assume that the objects in question are defined in such a way that they have a set, linear order).
# 

a = 3
b = 4
c = 4
d = 5

# [7] pry(main)> a <=> b
# => -1
# [8] pry(main)>
# [9] pry(main)> c <=> b
# => 0
# [10] pry(main)>
# [11] pry(main)> d <=> c
# => 1

arr = [a, b, c, d]
p arr.sort