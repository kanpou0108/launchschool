# Optional Arguments Redux
# 
# Assume you have the following code:

require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

# What will each of the 4 puts statements print?
# 
# Solution
# puts Date.new
# -4712-01-01

# puts Date.new(2016)
# 2016-01-01

# puts Date.new(2000, 5)
# 2016-05-01

# puts Date.new(2000, 5, 13)
# 2016-05-13

# Discussion
# The documentation for the Date class can be found in the Standard library API documentation; make sure you look for it in the right place.
# 
# The documentation for Date::new (note that it is a class method) shows that its signature is:
# 
# new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
# This signature uses [] to show that all of the arguments are optional. This is only a documentation convention; the brackets should not be included in your program.
# 
# Note that the brackets are nested with this method; items inside the outermost bracket pairs can only be omitted if all of the innermost bracket pairs are omitted as well. Hence, if you omit the month argument, you must omit mday and start, but you must supply year. From this signature, then, we can see that arguments to new can be supplied in 5different ways:
# 
# Date.new                           # everything defaults
# Date.new(2016)                     # month, mday, start use defaults
# Date.new(2016, 5)                  # mday, start use defaults
# Date.new(2016, 5, 13)              # start uses default
# Date.new(2016, 5, 13, Date::ITALY) # nothing defaults
# Starting from the left, year defaults to -4712 (there's a good reason for this) if it is omitted. Likewise, month defaults to 1 (January), mday (the day of month) defaults to 1, and start defaults to Date::ITALY (we're not going to explain this parameter right now).
# 
# So, with our sample code, the first date printed is -4712-01-01, the second is 2016-01-01, the third is 2016-05-01, and the last is 2016-05-13.

# Class: Date (Ruby 2_4_0)
# http://ruby-doc.org/stdlib-2.4.0/libdoc/date/rdoc/Date.html#method-c-new

