num_at_start = 5 # change to 99 if you want

num_bot = proc { |n| "#{n} bottle#{n == 1 ? '' : 's'}" }

num_at_start.downto(2) do |num|
  puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!"
  puts "Take one down, pass it around, #{num_bot[num-1]} of beer on the wall!"
end

puts "#{num_bot[1]} of beer on the wall, #{num_bot[1]} of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"

# 5 bottles of beer on the wall, 5 bottles of beer!
# Take one down, pass it around, 4 bottles of beer on the wall!
# 4 bottles of beer on the wall, 4 bottles of beer!
# Take one down, pass it around, 3 bottles of beer on the wall!
# 3 bottles of beer on the wall, 3 bottles of beer!
# Take one down, pass it around, 2 bottles of beer on the wall!
# 2 bottles of beer on the wall, 2 bottles of beer!
# Take one down, pass it around, 1 bottle of beer on the wall!
# 1 bottle of beer on the wall, 1 bottle of beer!
# Take one down, pass it around, no more bottles of beer on the wall!