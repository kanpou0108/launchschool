# Exercise 1
# Let's take one file's contents as input and create a new transformed file as a result:

p simple = File.read("simple_file.txt")
# => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
p original = File.new("original_file.txt", "w+")
# => #<File:original_file.txt>
File.open(original, "a") do |file|
  file.puts simple
end
# => nil
p File.read(original)
 # => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple.\n"