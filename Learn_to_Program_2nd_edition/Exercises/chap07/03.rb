# Deaf Grandma Extended
# How you could do it:
  
puts 'HEY THERE, PEACHES! GIVE GRANDMA A KISS!' 
bye_count = 0

while true
  said = gets.chomp 

  if said == 'BYE'
    bye_count = bye_count + 1
  else
    bye_count = 0
  end
  
  if bye_count >= 3
    puts 'BYE-BYE CUPCAKE!'
    break
  end
  
  if said != said.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    random_year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + random_year.to_s + '!' 
  end
end

# HEY THERE, PEACHES!  GIVE GRANDMA A KISS!
# HI, GRANDMA!
# NO, NOT SINCE 1950!
# BYE
# NO, NOT SINCE 1936!
# BYE
# NO, NOT SINCE 1947!
# ADIOS, MUCHACHA!
# NO, NOT SINCE 1949!
# BYE
# NO, NOT SINCE 1940!
# BYE
# NO, NOT SINCE 1938!
# BYE
# BYE-BYE CUPCAKE!