# Print Until
# 
# Given the array of several numbers below, use an until loop to print each number.
# 
# numbers = [7, 9, 13, 25, 18]
# 
# Expected output:
# 7
# 9
# 13
# 25
# 18


ary = [7, 9, 13, 25, 18]
count = 0

until count+1 > ary.size
  puts ary[count]
  count += 1
end