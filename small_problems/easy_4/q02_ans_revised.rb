def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100) # Using "(century % 100)" is very important.
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
puts "------------------------"
p century(10001)
p century(10101)
p century(10201)
p century(10301)
puts "------------------------"
p century(11001)
p century(11101)
p century(11201)
p century(11301)
puts "------------------------"
p century(110001)
p century(110101)
p century(110201)
p century(110301)
puts "------------------------"
p century(111001)
p century(111101)
p century(111201)
p century(111301)
