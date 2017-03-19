# Exercise 2
# 
# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
hsh = {}

ages.each do |k, v|
  hsh[k] = v + 10
end

p hsh

# `Add up all of the ages` means total of array.