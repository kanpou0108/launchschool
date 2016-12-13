def stringy(count, start=0)
  string = ''
  if start == 1
    count.times { |n| string << (n.even? ? '1' : '0') }
  else
    count.times { |n| string << (n.odd? ? '1' : '0') }
  end
  string
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'