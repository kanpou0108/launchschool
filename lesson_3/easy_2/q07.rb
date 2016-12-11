# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.split
p advice.split.include?("Dino")
p advice.split.include?("dinosaur.")