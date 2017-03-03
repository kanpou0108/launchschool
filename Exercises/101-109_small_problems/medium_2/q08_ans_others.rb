def featured_number?(num)
  num_chars = num.to_s.split('')
  num.odd? && num % 7 == 0 && num_chars.uniq == num_chars
end

def featured(integer)
  num = integer + 1
  return 'There is no possible number' unless num < 9_876_543_210
  num += 1 until featured_number?(num)
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements