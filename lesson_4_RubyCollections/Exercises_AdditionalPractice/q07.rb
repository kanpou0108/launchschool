# Exercise 7
# 
# Create a hash that expresses the frequency with which each letter occurs in this string:
# 
# statement = "The Flintstones Rock"
# ex:
# 
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

hsh = {}
statement.gsub(/\s+/, '').chars do |e|
  if hsh.has_key?(e)
    hsh[e] += 1
  else
    hsh[e] = 1    
  end
end

p hsh

p hsh.sort.to_h
# {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}