# In the age hash:
# 
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.keep_if { |_, age| age < 100 }

# instance method Array#keep_if (Ruby 2.3.0)
# https://docs.ruby-lang.org/ja/latest/method/Array/i/keep_if.html

# instance method Array#select! (Ruby 2.3.0)
# https://docs.ruby-lang.org/ja/latest/method/Array/i/select=21.html
