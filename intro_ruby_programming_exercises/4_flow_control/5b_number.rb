# Rewrite your program from exercise 3 using a case statement. 
# Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. 
# Make sure they both still work.

def evaluate_case2_num(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    if num < 0
      puts "You can't enter a negative num!"
    else
      puts "#{num} is above 100"
    end
  end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

evaluate_case2_num(number)