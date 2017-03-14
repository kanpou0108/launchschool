# Question 9
# 
# Given the hash below
# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p [flintstones.key(2), flintstones["Barney"]]
#=> ["Barney", 2]

p flintstones.assoc("Barney")
#=> ["Barney", 2]

# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html#method-i-assoc
# 
# assoc(obj) → an_array or nil
# Searches through the hash comparing obj with the key using ==. Returns the key-value pair (two elements array) or nil if no match is found. See Array#assoc.
# 
# h = {"colors"  => ["red", "blue", "green"],
#      "letters" => ["a", "b", "c" ]}
# h.assoc("letters")  #=> ["letters", ["a", "b", "c"]]
# h.assoc("foo")      #=> nil
