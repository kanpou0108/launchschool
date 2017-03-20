# Exercise 4
# 
# What is the return value of each_with_object in the following code? Why?

ans = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p ans
# {"a"=>"ant", "b"=>"bear", "c"=>"cat"}