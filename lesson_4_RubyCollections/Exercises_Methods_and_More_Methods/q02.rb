# Exercise 2
# 
# How does count treat the block's return value? How can we find out?

ans = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p ans
# => 2