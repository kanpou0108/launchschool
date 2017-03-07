# Low, Medium, or High?
# 
# Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. Assign the returned hash to a variable named low_numbers and print its value using #p.
# 
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }
# Expected output:
# 
# {low: 10}

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select do |k, v|
  # v <= 25
  v < 25
end

p low_numbers
puts "--------------------"
p numbers

# Discussion
# Unlike Hash#map, Hash#select returns a hash instead of an array. 
# Specifically, #select returns a new hash consisting of entries for which the block returns true.
# 
# As in the previous exercise, we can assign the returned hash to a variable for later use.
# 
# 
# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html#method-i-select
# select {|key, value| block} → a_hash
# select → an_enumerator
# Returns a new hash consisting of entries for which the block returns true.
# 
# If no block is given, an enumerator is returned instead.
# 
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
# h.select {|k,v| v < 200}  #=> {"a" => 100}
