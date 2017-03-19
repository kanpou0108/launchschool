# Exercise 5
# 
# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# failed
# p flintstones.find_index(/^Be/)

ans = 0

flintstones.each.with_index do |e, idx|
  ans = idx if e.start_with?("Be")
end

p ans