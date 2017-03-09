# How I would do it:
puts 'HEY THERE, PEACHES!  GIVE GRANDMA A KISS!'
bye_count = 0

while true
  said = gets.chomp 
  if said == 'BYE'
    bye_count += 1
  else
    bye_count = 0
  end
  break if bye_count >= 3

  response = if said != said.upcase 
    'HUH?! SPEAK UP, SONNY!'
  else
    "NO, NOT SINCE #{rand(1930..1950)}!"
  end
  puts response
end

puts 'BYE-BYE CUPCAKE!'

# HEY THERE, PEACHES!  GIVE GRANDMA A KISS!
# HI, GRANDMA!
# NO, NOT SINCE 1934!
# BYE
# NO, NOT SINCE 1940!
# BYE
# NO, NOT SINCE 1945!
# ADIOS, MUCHACHA!
# NO, NOT SINCE 1931!
# BYE
# NO, NOT SINCE 1932!
# BYE
# NO, NOT SINCE 1949!
# BYE
# BYE-BYE CUPCAKE!