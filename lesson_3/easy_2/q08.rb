
# In the array:
# 
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.index("Be")

p flintstones.index { |flintstone| flintstone[0, 2] == "Be" }