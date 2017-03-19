# Exercise 6
# 
# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |e|
  e[0..2]
end

p flintstones