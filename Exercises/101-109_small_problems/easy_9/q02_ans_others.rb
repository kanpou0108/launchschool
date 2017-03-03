def twice(num)
  half = num.to_s.length / 2
  outcome = num.to_s[0..(half - 1)] == num.to_s[half..-1]
  outcome ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
p twice(5)

# num.to_s[0..(half - 1)]
# => true
# success   0...(half)
# fail      0..(half - 1)

# Double Doubles
# 
# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
# For example, 44, 3333, 103103, 7676 are all double numbers. 
# 444, 334433, and 107 are not.
# 
# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.
# 
# Examples:
