# More Than One
# 
# In the code below, an array containing different types of pets is assigned to pets.
# 
# pets = ['cat', 'dog', 'fish', 'lizard']
# Select 'fish' and 'lizard' from pets at the same time, assign the return value to a variable named my_pets, then print the value of my_pets.
# 
# Expected output:
# 
# I have a pet fish and a pet lizard!

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# Discussion
# 
# Selecting a specific element from an array is fairly simple. But what about selecting more than one element at the same time? Think about how counting numbers works for a moment. Typically, you'll count from the lowest number to the highest. What about counting only certain numbers like 1 through 5?
# 
# In Ruby, this is called a range of numbers. 1..5 is the same as 1 through 5. We can apply this concept to select multiple elements from an array. 
# Instead of just using a single number, pets[2], we can use a range of numbers to select both 'fish' and 'lizard', like this pets[2..3]. 
# Note that when you print my_pets, you'll need to use [0] and [1] because it will be in the form of an array, not a string.