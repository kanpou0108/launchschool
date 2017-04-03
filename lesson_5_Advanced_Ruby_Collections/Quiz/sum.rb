sum = [1, 2, 3].each_with_object(0) do |el, total|
  total += el
end

p sum
# => 0

sum2 = [1, 2, 3].reduce(0) do |total, el|
  total + el
end

p sum2


sum3 = [1, 2, 3].each_with_object(0) do |el, total|
  total + el
end

p sum3