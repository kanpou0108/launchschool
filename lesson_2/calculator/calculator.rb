Kernel.puts 'enter first number'
first_number = Kernel.gets().chomp()

Kernel.puts 'enter second number'
second_number = Kernel.gets().chomp()

Kernel.puts 'select action: 1) add 2) subtract 3) mutliply 4) divide'
action = Kernel.gets().chomp()

case action
when '1'
  result = first_number.to_i() + second_number.to_i()
when '2'
  result = first_number.to_i() - second_number.to_i()
when '3'
  result = first_number.to_i() * second_number.to_i()
else
  result = first_number.to_f() / second_number.to_f()
end

Kernel.puts "The result is : #{result}"


# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-chomp

# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-to_i
# 
# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html#method-i-to_f
