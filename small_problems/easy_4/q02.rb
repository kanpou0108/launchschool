# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
# 
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
# 
# Examples:

# ↓ failed
def century(number)
  century_number = ((number - 1) / 100) + 1
  century_str = century_number.to_s
  digits = century_str[-2..-1]
  word_end = nil

  case digits
  when "11", "12", "13"
    word_end = "th"
  end
  
  last_digit = digits[-1]
  
  case last_digit
  when "1"
    word_end = "st"
  when "2"
    word_end = "nd"
  when "3"
    word_end = "rd"
  else  
    word_end = "th"      
  end
  
  century_str + word_end
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


