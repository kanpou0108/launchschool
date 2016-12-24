# Grocery List
# 
# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.
# 
# Example:

def buy_fruit(arr)
  result = []
  arr.each do |e|
    e[1].times { result << e[0] }
  end
  result
end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]