def greetings(array, hash)
  name = array.join(' ')
  title = hash.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{title} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
