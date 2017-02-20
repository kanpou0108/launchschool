# take a string as an argument, return the string in reverse order

# Practice exercises for Assessment 109 – Interview @ Launch School
# https://gist.github.com/michaelbart/14a3ea0ef27ac2ac831371b007728010

# def reverser(word)
#   word.chars.inject do |acc, char|
#      char << acc
#   end
# end

def reverser(word)
  word.chars.inject('') do |result, item|
     p result
    #  item << result
     result << item
  end
end

p reverser("hello")