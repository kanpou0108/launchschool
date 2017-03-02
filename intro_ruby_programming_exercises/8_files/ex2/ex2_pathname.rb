# We can also do this using the Pathname class. We have to require 'pathname' before using it. 
# Here's an example
p require 'pathname'

pn = Pathname.new(".")

p pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt" }
# simple_file.txt has extension .txt
# original_file.txt has extension .txt

# => [#<Pathname:simple_file.txt>, #<Pathname:cultures.json>, #<Pathname:ruby_book>, #<Pathname:articles.xml>, #<Pathname:chair.rb>, #<Pathname:.git>, #<Pathname:original_file.txt>, #<Pathname:feedzilla.json>, #<Pathname:slashdot>, #<Pathname:articles.json>, #<Pathname:..>, #<Pathname:.>]
 

 