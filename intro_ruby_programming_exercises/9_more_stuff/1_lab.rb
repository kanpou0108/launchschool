# Write a program that checks if the sequence of characters "lab" exists in the following strings. 
# If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"

def check(string)
  # if string =~ /lab/
  if string.match(/lab/)
    puts string
  else
    puts "does not exist"
  end
end

check("laboratory")
check("experiment")
check("Pans Labyrinth")
check("elaborate")
check("polar bear")