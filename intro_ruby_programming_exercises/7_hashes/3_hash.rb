opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
puts "---------------------------------"
opposites.each_value { |value| puts value }
puts "---------------------------------"
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }