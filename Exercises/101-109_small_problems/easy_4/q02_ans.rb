def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(1) == '1st'
p century(100) == '1st'
p century(101) == '2nd'
p century(133) == '2nd'
p century(245) == '3rd'
p century(1052) == '11th'
p century(1152) == '12th'
p century(1252) == '13th'
p century(2012) == '21st'
p century(2112) == '22nd'
p century(22222) == '223rd'
p century(22522) == '226th'
