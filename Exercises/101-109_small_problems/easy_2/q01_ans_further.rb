def random_number
  (20..200).to_a.sample
end

puts "What is your name?"
name = gets.chomp
name = "Teddy" if name.empty?
puts "#{name} is #{random_number} years old"