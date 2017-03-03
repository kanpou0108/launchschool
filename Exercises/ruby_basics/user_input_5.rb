# $ ruby lsprint.rb
# >> How many output lines do you want? Enter a number >= 3:
# 5
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# 
# $ ruby lsprint.rb
# >> How many output lines do you want? Enter a number >= 3:
# 2
# >> That's not enough lines.
# >> How many output lines do you want? Enter a number >= 3:
# 3
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!

loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  cnt = gets.chomp.to_i
  if cnt < 3
    puts "That's not enough lines."
  else
    cnt.times do
      puts "Launch School is the best!"
    end
    break
  end
end