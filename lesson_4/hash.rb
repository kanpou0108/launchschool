# Since we're working with an array here, each knows that there's only one element per iteration, so each sends the block only one argument, num. 
# Hashes, however, need two arguments in order to represent both the key and the value per iteration. 
# Calling each on a hash looks a little different, since the block has two arguments:

hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end