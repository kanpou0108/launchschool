def check(string)
  # if string =~ /lab/
  if string.match(/lab/)
    puts string
  else
    puts "does not exist"
  end
end

check("laboratory")
check("experiment")
check("Pans Labyrinth")
check("elaborate")
check("polar bear")