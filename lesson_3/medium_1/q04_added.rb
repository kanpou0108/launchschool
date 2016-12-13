# To better understand what is happening here, 
# we augment our loop with some additional "debugging" information:

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

puts "----------------------------------"

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.pop(1)
end