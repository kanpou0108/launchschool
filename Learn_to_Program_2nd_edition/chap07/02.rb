# Deaf Grandma
# How you could do it:

puts 'HEY THERE, SONNY! GIVE GRANDMA A KISS!' 
while true
  said = gets.chomp
  
  if said == "BYE"
    puts 'BYE SWEETIE!'
    break
  end

  if said != said.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    random_year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + random_year.to_s + '!' 
  end
end
 
# HEY THERE, SONNY!  GIVE GRANDMA A KISS!
# hi, grandma
# HUH?!  SPEAK UP, SONNY!
# HI, GRANDMA!
# NO, NOT SINCE 1945!
# HOW YOU DOING?
# NO, NOT SINCE 1933!
# I SAID, HOW YOU DOING?
# NO, NOT SINCE 1944!