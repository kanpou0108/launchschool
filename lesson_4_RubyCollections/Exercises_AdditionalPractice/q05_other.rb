# Exercise 5
# 
# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"
ans = flintstones.find_index do |e|
  e.match(/^Be/)
end

p ans