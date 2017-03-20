# Exercise 5
# 
# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
p hash
p hash.shift
p hash

# {:a=>"ant", :b=>"bear"}
# [:a, "ant"]
# {:b=>"bear"}