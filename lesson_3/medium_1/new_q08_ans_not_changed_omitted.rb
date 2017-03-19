munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  hsh = {   
    "Herman" => { "age" => 0, "gender" => "unknown"}
  }
  
  demo_hash = demo_hash.merge(hsh)
  
  demo_hash.each do |key, family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
    puts "#{key}'s value object_id is #{family_member.object_id}"
    puts "#{key} age's object_id is #{family_member["age"].object_id}"
    puts "#{key} gender's object_id is #{family_member["gender"].object_id}"
  end
  p demo_hash
end

munsters.each do |key, family_member|
  puts "#{key}'s value object_id is #{family_member.object_id}"
  puts "#{key} age's object_id is #{family_member["age"].object_id}"
  puts "#{key} gender's object_id is #{family_member["gender"].object_id}"
end
p munsters

puts "---------------------------"
mess_with_demographics(munsters)
puts "---------------------------"

munsters.each do |key, family_member|
  puts "#{key}'s value object_id is #{family_member.object_id}"
  puts "#{key} age's object_id is #{family_member["age"].object_id}"
  puts "#{key} gender's object_id is #{family_member["gender"].object_id}"
end
p munsters
