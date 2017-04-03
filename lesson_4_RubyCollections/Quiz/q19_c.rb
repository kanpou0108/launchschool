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

def select_countries(hsh)
  sub_set = {}
  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

p select_countries(countries_and_capitals)
# => {"Belgium"=>"Brussels", "Barbados"=>"Bridgetown", "Bolivia"=>"La Paz", "Brazil"=>"Brasilia"}
