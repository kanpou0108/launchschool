# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# it prints nothing because "puts" was not reached due to "return"

# Solution
# It will not print anything to the screen.