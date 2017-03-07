number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end

# Discussion
# We can use next to skip the rest of the current iteration based on a condition. 
# Here, by placing next before #puts and break, we can skip to the next iteration so they aren't processed until we stop skipping. 
# We use an if condition for next that won't evaluate to true unless either number_a or number_b equal 5. 
# This lets us put whatever we want after next and not have to worry about it being processed until next stops skipping.
# 
# Further Exploration
# Is using next the best option for this example? Could you use an if/else statement instead?