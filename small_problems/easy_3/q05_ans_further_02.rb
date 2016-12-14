def multiply(num_1, num_2)
  num_1 * num_2
end

def square(num)
  multiply(num, num)
end

# Solution to Further Exploration using Array#new and Enumerable#inject:
def power(n, pwr)
  Array.new(pwr, n).inject { |product, elem| multiply(product, elem) }
end

p power(5, 3)