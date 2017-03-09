puts 'Pick a starting year (like 1973 or something):'
starting = gets.chomp.to_i
puts 'Now pick an ending year:'
ending = gets.chomp.to_i

puts 'Check it out... these years are leap years:' 

(starting..ending).each do |year|
  next if year%4 != 0
  next if year%100 == 0 && year%400 != 0 
  puts year
end