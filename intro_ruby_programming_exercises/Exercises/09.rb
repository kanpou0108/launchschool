# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 
# 1. Get the value of key `:b`.
# 
# 2. Add to this hash the key:value pair `{e:5}`
# 
# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

# 1. 
p h[:b]

# 2. 
h[:e] = 5
p h

# 3.
# one line version
h.delete_if { |k, v| v < 3.5 }
p h

# multi-line version
# h.delete_if do |k, v|
#   v < 3.5
# end


# Class: Hash (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Hash.html#method-i-delete_if
# 
# delete_if {| key, value | block } → hsh click to toggle source
# delete_if → an_enumerator
# Deletes every key-value pair from hsh for which block evaluates to true.
# 
# If no block is given, an enumerator is returned instead.
# 
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}
