# 
# Exercise 3
# 
# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).

ages = ages.reject do |k, v|
  v >= 100
end

p ages
# => {"Herman"=>32, "Lily"=>30, "Eddie"=>10}