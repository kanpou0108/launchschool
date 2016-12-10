# Ruby tutorial - Regex, Ruby Standard Classes, Blocks and Procs and more
# https://launchschool.com/books/ruby/read/more_stuff#variables_as_pointers

def test(b)
  # b.map {|letter| "I like the letter: #{letter}"}
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p a
test(a)
p a