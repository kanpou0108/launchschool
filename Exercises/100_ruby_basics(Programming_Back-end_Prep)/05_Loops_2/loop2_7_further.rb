# Further Exploration
# 
# Without running this code, how many values will be printed?

5.times do |index|
  puts index
  break if index == 4
end
# 0
# 1
# 2
# 3
# 4

puts "--------------------------"

# Now, consider this code:

5.times do |index|
  puts index
  break if index < 7
end
# 0

# How many values will be printed this time?