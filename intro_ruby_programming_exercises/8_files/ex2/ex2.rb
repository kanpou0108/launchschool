# Exercise 2
# Lets look at the current directory and report the files that have .txt extensions

p d = Dir.new(".")
 # => #<Dir:.>
while file = d.read do
  puts "#{file} has extension .txt" if File.extname(file) == ".txt"
end

# simple_file.txt has extension .txt
# original_file.txt has extension .txt