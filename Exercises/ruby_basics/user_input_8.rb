# $ ruby division.rb
# >> Please enter the numerator:
# 8
# >> Please enter the denominator:
# 2
# >> 8 / 2 is 4
# 
# $ ruby division.rb
# >> Please enter the numerator:
# 8.3
# >> Invalid input. Only integers are allowed.
# >> Please enter the numerator:
# 9
# >> Please enter the denominator:
# 4
# >> 9 / 4 is 2
# 
# 
# $ ruby division.rb
# >> Please enter the numerator:
# 10
# >> Please enter the denominator:
# a
# >> Invalid input. Only integers are allowed.
# >> Please enter the denominator:
# 0
# >> Invalid input. A denominator of 0 is not allowed.
# >> Please enter the denominator:
# 5
# >> 10 / 5 is 2

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts ">> Please enter the numerator:"
  num = gets.chomp
  if !valid_number?(num)
    puts ">> Invalid input. Only integers are allowed."
    break
  end
  
  puts ">> Please enter the denominator:"
  denomi = gets.chomp
  if !valid_number?(denomi)
    puts ">> Invalid input. Only integers are allowed."
    break
  elsif denomi == "0"
    puts ">> Invalid input. A denominator of 0 is not allowed."
    break
  end
  
  puts ">> #{num.to_i} / #{denomi.to_i} is #{num.to_i/denomi.to_i}"
  break
end
