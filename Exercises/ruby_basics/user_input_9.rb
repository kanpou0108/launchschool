# $ ruby lsprint2.rb
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# 5
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# 2
# >> That's not enough lines.
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# 3
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# >> How many output lines do you want? Enter a number >= 3 (Q to quit):
# q

loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
  input = gets.chomp.downcase
  break if input == "q"
  cnt = input.to_i
  if cnt < 3
    puts "That's not enough lines."
  else
    cnt.times do
      puts "Launch School is the best!"
    end
  end
end