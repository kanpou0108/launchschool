count = 1

loop do
  str = count.even? ? "even" : "odd"
  puts "#{count} is #{str}!"
  count += 1
  break if count > 5
end

# 1 is odd!
# 2 is even!
# 3 is odd!
# 4 is even!
# 5 is odd!