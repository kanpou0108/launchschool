# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 0
# >> Invalid input. Only non-zero integers are allowed.
# >> Please enter a positive or negative integer:
# -5
# >> 8 + -5 = 3
# 
# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 5
# >> Sorry. One integer must be positive, one must be negative.
# >> Please start over.
# >> Please enter a positive or negative integer:
# -7
# >> Please enter a positive or negative integer:
# 5
# -7 + 5 = -2

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  first = nil
  second = nil
  loop do 
    puts ">> Please enter a positive or negative integer:(1st)"
    first = gets.chomp
    break if valid_number?(first)
    puts "Invalid input. Only non-zero integers are allowed."
  end

  loop do
    puts ">> Please enter a positive or negative integer:(2nd)"
    second = gets.chomp
    break if valid_number?(second)
    puts "Invalid input. Only non-zero integers are allowed."
  end

  if (first.to_i * second.to_i).negative?
    puts "#{first} + #{second} = #{first.to_i + second.to_i}"
    break
  end
  
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end