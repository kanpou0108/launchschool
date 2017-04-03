# Question 19
# Identify all of the code implementations that correctly meet the following set of requirements.
# 
# Given the following hash which contains keys representing countries and values representing the capital cities of those countries, return a new hash containing only the key-value pairs where the country begins with the letter 'B'.

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

def begins_with_b(string)
  string[0] == 'B'
end

new_obj = countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end

p new_obj
# => [["Belgium", "Brussels"], ["Barbados", "Bridgetown"], ["Bolivia", "La Paz"], ["Brazil", "Brasilia"]]
