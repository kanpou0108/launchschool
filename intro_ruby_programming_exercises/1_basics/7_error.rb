# What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
  
hash = { key1: "value1",
         key2: "value2", )
         
# There is an opening bracket somewhere in the program without a closing bracket following it. 
# It may have happened when creating a hash.