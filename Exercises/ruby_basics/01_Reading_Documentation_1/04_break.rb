result = while true
  break
end
p result # nil

puts "------------------------------"
result = [1, 2, 3].each do |value|
  break value * 2 if value.even?
end

p result # prints 4]