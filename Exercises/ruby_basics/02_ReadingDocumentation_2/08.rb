# Parent Class
# Use irb to run the following code:

s = 'abc'
puts s.public_methods.inspect

# [:include?, :unicode_normalize, :to_c, :%, :unicode_normalize!, :unicode_normalized?, :*, :+, :count, :partition, :unpack, :encode, :encode!, :next, :casecmp, :insert, :bytesize, :match, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :+@, :-@, :setbyte, :getbyte, :<=>, :<<, :scrub, :scrub!, :byteslice, :==, :===, :dump, :=~, :downcase, :[], :[]=, :upcase, :downcase!, :capitalize, :swapcase, :upcase!, :oct, :empty?, :eql?, :hex, :chars, :split, :capitalize!, :swapcase!, :concat, :codepoints, :reverse, :lines, :bytes, :prepend, :scan, :ord, :reverse!, :center, :sub, :freeze, :inspect, :intern, :end_with?, :gsub, :chop, :crypt, :gsub!, :start_with?, :rstrip, :sub!, :ljust, :length, :size, :strip!, :succ, :rstrip!, :chomp, :strip, :rjust, :lstrip!, :tr!, :chomp!, :squeeze, :lstrip, :tr_s!, :to_str, :to_sym, :chop!, :each_byte, :each_char, :each_codepoint, :to_s, :to_i, :tr_s, :delete, :encoding, :force_encoding, :sum, :delete!, :squeeze!, :tr, :to_f, :valid_encoding?, :slice, :slice!, :rpartition, :each_line, :b, :to_r, :ascii_only?, :hash, :<, :>, :<=, :>=, :between?, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :is_a?, :extend, :define_singleton_method, :to_enum, :enum_for, :!~, :respond_to?, :display, :send, :object_id, :method, :public_method, :singleton_method, :nil?, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]

# You should find that it prints a list of all of the public methods available to the String s; this includes not only those methods defined in the String class, but also methods that are inherited from Object (which inherits other methods from the BasicObject class and the Kernel module). That's a lot of methods.
# 
# How would you modify this code to print just the public methods that are defined or overridden by the String class? That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.
# 
# Hide Solution & Discussion
# Solution
# 
puts "------------------------------"
s = 'abc'
puts s.public_methods(false).inspect

# [:include?, :unicode_normalize, :to_c, :%, :unicode_normalize!, :unicode_normalized?, :*, :+, :count, :partition, :unpack, :encode, :encode!, :next, :casecmp, :insert, :bytesize, :match, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :+@, :-@, :setbyte, :getbyte, :<=>, :<<, :scrub, :scrub!, :byteslice, :==, :===, :dump, :=~, :downcase, :[], :[]=, :upcase, :downcase!, :capitalize, :swapcase, :upcase!, :oct, :empty?, :eql?, :hex, :chars, :split, :capitalize!, :swapcase!, :concat, :codepoints, :reverse, :lines, :bytes, :prepend, :scan, :ord, :reverse!, :center, :sub, :freeze, :inspect, :intern, :end_with?, :gsub, :chop, :crypt, :gsub!, :start_with?, :rstrip, :sub!, :ljust, :length, :size, :strip!, :succ, :rstrip!, :chomp, :strip, :rjust, :lstrip!, :tr!, :chomp!, :squeeze, :lstrip, :tr_s!, :to_str, :to_sym, :chop!, :each_byte, :each_char, :each_codepoint, :to_s, :to_i, :tr_s, :delete, :encoding, :force_encoding, :sum, :delete!, :squeeze!, :tr, :to_f, :valid_encoding?, :slice, :slice!, :rpartition, :each_line, :b, :to_r, :ascii_only?, :hash]


# Discussion
# 
# If you look at the String documentation, you won't find any mention of #public_methods. However, it is clearly available: it runs in our example. How is that? Where do you need to go to find the documentation for #public_methods?
# 
# The issue here is that ruby is an object oriented language. Everything is an object, which means that everything has an associated class, and that class in turn has a superclass, or parent. Every class that inherits from a superclass also inherits all of its methods.
# 
# In the String documentation, if you look at the "Parent" box on the left side, you will see that the parent of the String class is Object; in fact, this is true for most classes in the ruby documentation. What this means for the String class, though, is that String inherits from Object, so every method in Object is also available in String, though perhaps in modified form.
# 
# Since #public_methods is not described in the String documentation, we obviously must look elsewhere. One of two additional places you can look for method descriptions is in the documentation for the parent. So, go ahead and click Object in the Parent box to go to the Object class documentation.
# 
# Sure enough, there's #public_methods (make sure you don't select #public_method) over on the left hand side under Methods. Go ahead and click #public_methods to scroll down to the documentation for the method.
# 
# Once you have the documentation in front of you, you can see that #public_methods takes an optional argument all. If that value is true or omitted, it returns a list of all public methods available to the object (our s String in this case); if all is false, #public_methods limits the output to just those methods in "the receiver"; for our purposes, this means just the methods defined directly in the String class.
# 
# Thus, our solution to the exercise is to modify the second line of code to include a false argument for #public_methods.
# 
# The phrase "though perhaps in modified form" from above is there because a class can override the members of its superclass. In fact, most of the Core and Standard Library API classes do just that. For example, String overrides Object#==. What this means for you is that you must first look at the documentation for your class before looking at the documentation for the superclass. So, even if you know that the superclass has a particular method, you should always check that it isn't being overridden by the subclass.

# Class: String (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/String.html
# 
# Class: Object (Ruby 2_4_0)
# http://ruby-doc.org/core-2.4.0/Object.html#method-i-public_methods
# 
