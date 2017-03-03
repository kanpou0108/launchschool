def buy_fruit(list)
  # list.map { |fruit, quantity| [fruit] * quantity }.flatten
  list.map { |fruit, quantity| [fruit] * quantity }
end

 p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]