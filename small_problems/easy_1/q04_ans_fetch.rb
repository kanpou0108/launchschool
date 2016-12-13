def count_occurances(arr)
  occurances = Hash.new(0)

  arr.size.times do |idx|
    elem = arr.fetch(idx)
    occurances[elem] += 1
  end

  occurances.each { |elem, count| puts "#{elem} => #{count}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurances(vehicles)