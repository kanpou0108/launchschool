# What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

def calc(a,b)
  puts a + b
end

calc(1)

# Solution
# You are calling a method called calculate_product that requires two arguments, but you are only providing one.