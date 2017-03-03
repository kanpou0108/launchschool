def add(tmp1, tmp2)
  tmp1 + tmp2
end

def multiply(tmp1, tmp2)
  tmp1 * tmp2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
