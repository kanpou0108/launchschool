# Exercise 3
# 
# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).

# Solution 3
ages.keep_if { |_, age| age < 100 }

p ages
# => {"Herman"=>32, "Lily"=>30, "Eddie"=>10}

# You could also use #select! here. When using similar methods however, it is important to be aware of the subtle differences in their implementation. For example, the Ruby Documentation for Hash#select! tells us that it is "Equivalent to Hash#keep_if, but returns nil if no changes were made", though in this case that wouldn't have made any difference.


# keep_if {| key, value | block } → hsh
# keep_if → an_enumerator
# Deletes every key-value pair from hsh for which block evaluates to false.
# 
# If no block is given, an enumerator is returned instead.
# 
# key(value) → key