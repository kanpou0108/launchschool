sum = [1, 2, 3].each_with_object(0) do |el, total|
  total += el
end

p sum
# => 0

sum3 = [1, 2, 3].each_with_object(0) do |el, total|
  total + el
end

p sum3
# => 0

sum4 = (1..3).each_with_object({:sum => 0}) {|i,hsh| hsh[:sum] += i}
p sum4
#=> {:sum => 6}

sum5 = (1..3).each_with_object(Hash.new(0)) {|i,hsh| hsh[:sum] += i}
p sum5
#=> {:sum => 6}
