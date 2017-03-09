# How I would do it:
puts 'HEY THERE, SONNY! GIVE GRANDMA A KISS!' 

while true
  said = gets.chomp
  
  break if said == "BYE"
  response = if said != said.upcase
    'HUH?! SPEAK UP, SONNY!' 
  else
    "NO, NOT SINCE #{rand(1930..1950)}!" 
  end
  
  puts response
end

puts 'BYE SWEETIE!'

# HEY THERE, SONNY!  GIVE GRANDMA A KISS!
# hi, grandma
# HUH?!  SPEAK UP, SONNY!
# HI, GRANDMA!
# NO, NOT SINCE 1941!
# HOW YOU DOING?
# NO, NOT SINCE 1932!
# I SAID, HOW YOU DOING?
# NO, NOT SINCE 1949!
# OK
# NO, NOT SINCE 1950!
# BYE
# BYE SWEETIE!