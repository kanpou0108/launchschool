def prefix(str)
  str << Time.now.to_s
  "Mr." + str
end

name = "Joe"
name = prefix(name)

puts name