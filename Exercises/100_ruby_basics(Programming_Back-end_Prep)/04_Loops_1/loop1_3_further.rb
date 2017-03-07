iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations > 4
  iterations += 1
end

# Further Exploration
# If the break statement is moved up one line so it runs before iterations is incremented, what would need to be changed?
